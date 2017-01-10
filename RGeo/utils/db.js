/**
 * Created by romanwuattier on 06/01/2017.
 */
var pg = require('pg');
var config = require('config');

var configJson = {
    user: config["dbConfig"]["user"], //env var: PGUSER
    database: config["dbConfig"]["database"], //env var: PGDATABASE
    password: config["dbConfig"]["password"], //env var: PGPASSWORD
    host: config["dbConfig"]["host"], // Server hosting the postgres database
    port: config["dbConfig"]["port"], //env var: PGPORT
    max: config["dbConfig"]["max"], // max number of clients in the pool
    idleTimeoutMillis: config["dbConfig"]["idleTimeoutMillis"] // how long a client is allowed to remain idle before being closed
};

var pool = new pg.Pool(configJson);

module.exports = {
    dbConnection: function(callback) {
        pool.connect(function (err, client) {
            if (err) {
                throw err;
            }
            callback(null, client.connectionParameters);
        });
    },
    getData: function (query, callback) {
        pool.connect(function (err, client, done) {
            if (err) {
                return console.error('error fetching client from pool', err);
            }
            client.query(query, function (err, result) {
                done();
                if (err) {
                    return console.error('error running query', err);
                }
                callback(null, result.rows);
            });
        });
    }
};
