#!/usr/bin/env bash

# more bash-friendly output for jq
JQ="jq --raw-output --exit-status"

configure_aws_cli(){
	aws --version
	aws configure set default.region eu-west-1
	aws configure set default.output json
}

deploy_cluster() {

    family="devops-rgeo"

    make_task_def
    register_definition
    if [[ $(aws ecs update-service --cluster devops-rgeo-cluster --service devops-rgeo-service --task-definition $revision | \
                   $JQ '.service.taskDefinition') != $revision ]]; then
        echo "Error updating service."
        return 1
    fi

    # wait for older revisions to disappear
    # not really necessary, but nice for demos
    for attempt in {1..30}; do
        if stale=$(aws ecs describe-services --cluster devops-rgeo-cluster --services devops-rgeo-service | \
                       $JQ ".services[0].deployments | .[] | select(.taskDefinition != \"$revision\") | .taskDefinition"); then
            echo "Waiting for stale deployments:"
            echo "$stale"
            sleep 5
        else
            echo "Deployed!"
            return 0
        fi
    done
    echo "Service update took too long."
    return 1
}

make_task_def() {

    task_template='[
	{
	    "name": "db",
	    "image": "maximeflips/devops_db",
	    "environment": [
	        { "name" : "POSTGRES_DB", "value" : "geo" },
            { "name" : "POSTGRES_USER", "value" : "Roman" },
            { "name" : "POSTGRES_PASSWORD", "value" : "" }
	    ],
	    "portMappings": [
		{
		    "containerPort": 5432,
		    "hostPort": 5432
		}
	    ],
	    "essential": true,
	    "memory": 200,
	    "cpu": 10
	},
	{
	    "name": "server",
	    "links": [
		"db"
	    ],
	    "image": "maximeflips/devops_server",
	    "portMappings": [
		{
		    "containerPort": 3000,
		    "hostPort": 3000
		}
	    ],
	    "cpu": 10,
	    "memory": 200,
	    "essential": true
	}
    ]'

    task_def=$(printf "$task_template" $AWS_ACCOUNT_ID $CIRCLE_SHA1)

}


register_definition() {

    if revision=$(aws ecs register-task-definition --container-definitions "$task_def" --family $family | $JQ '.taskDefinition.taskDefinitionArn'); then
        echo "Revision: $revision"
    else
        echo "Failed to register task definition"
        return 1
    fi

}

configure_aws_cli
deploy_cluster