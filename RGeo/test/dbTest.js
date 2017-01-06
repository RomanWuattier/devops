/**
 * Created by romanwuattier on 06/01/2017.
 */
var assert = require('assert');
var should = require('should');

var dbUtils = require('../utils/db');

describe('#Check dbDriver', function() {

    describe('#Check database connection', function() {
        it('should connect without error', function (done) {
            dbUtils.dbConnection(function (result, err) {
                should.not.exist(err);
                should.exist(result);
                done();
            });
        });
    });

    describe('#Check database auth', function() {
        it('should connect to right database with right user', function (done) {
            dbUtils.dbConnection(function (result, err) {
                if (err) done(err);
                result.should.have.property('user', 'postgres');
                result.should.have.property('database', 'geo');
                done();
            });
        });
    });

});
