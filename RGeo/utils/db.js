/**
 * Created by romanwuattier on 06/01/2017.
 */
var pg = require('pg');

var config = {
    user: 'postgres', //env var: PGUSER
    database: 'geo', //env var: PGDATABASE
    password: '', //env var: PGPASSWORD
    host: 'localhost', // Server hosting the postgres database
    port: 5432, //env var: PGPORT
    max: 10, // max number of clients in the pool
    idleTimeoutMillis: 30000 // how long a client is allowed to remain idle before being closed
};

var pool = new pg.Pool(config);

module.exports = {
    dbConnection: function(callback) {
        pool.connect(function (err, client) {
            if (err) {
                throw err;
            }
            callback(client.connectionParameters);
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
                callback(result.rows);
            });
        });
    }
};
