/**
 * Created by romanwuattier on 06/01/2017.
 */
var assert = require('assert');
var should = require('should');

var dbUtils = require('../utils/db');

describe('#Check dbDriver', function() {

    describe('#Check database connection', function() {
        it('should connect without error', function (done) {
            dbUtils.dbConnection(function (err, result) {
                should.not.exist(err);
                should.exist(result);
                done();
            });
        });
    });

    describe('#Check database auth', function() {
        it('should connect to right database with right user', function (done) {
            dbUtils.dbConnection(function (err, result) {
                if (err) done(err);
                result.should.have.property('user', 'Roman');
                result.should.have.property('database', 'geo');
                done();
            });
        });
    });

});

describe('#Get Data Success', function () {

    describe('#Get data from country table', function () {
        it('should get all the country', function (done) {
            var q = 'SELECT id FROM country;';
            dbUtils.getData(q, function (err, result) {
                if (err) done(err);
                assert.equal(result.length, 247);
                done();
            });
        });

        it('should get the France country code and location', function (done) {
            var q = 'SELECT country, lat, lng FROM country WHERE name = \'France\';';
            dbUtils.getData(q, function (err, result) {
                if (err) done(err);
                should(result.country).not.be.ok();
                result[0].should.have.property('country', 'FR').with.lengthOf(2);
                should.exist(result[0].lat);
                should.exist(result[0].lng);
                done();
            });
        });
    });

    describe('#Get data from mig table', function () {
        it('should get all year in mig', function (done) {
            var q = 'SELECT DISTINCT (year) FROM mig ORDER BY year DESC;';
            dbUtils.getData(q, function (err, result) {
                if (err) done(err);
                assert.equal(result.length, 15);
                done();
            });
        });

    });

    describe('#Get shape from ne_10m_admin_0_countries_lakes', function () {
        it('should get the France shape', function(done) {
            var q = 'SELECT gid, name_long, ST_AsGeoJSON(geom) AS geom ' +
                'FROM public.ne_10m_admin_0_countries_lakes ' +
                'WHERE ST_Within(ST_MakePoint(2.213749, 46.227638), geom);';
            dbUtils.getData(q, function (err, result) {
                if (err) done(err);
                result[0].should.have.property('geom');
                done();
            })
        });
    });
});

describe('#Timeout', function () {
    describe('#Get data from mig table', function () {
        this.timeout(500);

        it('get date < 500 ms', function (done) {
            var q = 'SELECT DISTINCT (year) FROM mig ORDER BY year DESC;';
            dbUtils.getData(q, function (err, result) {
                done();
            });
        });

        it('get the France shape < 500 ms', function(done) {
            var q = 'SELECT gid, name_long, ST_AsGeoJSON(geom) AS geom ' +
                'FROM public.ne_10m_admin_0_countries_lakes ' +
                'WHERE ST_Within(ST_MakePoint(2.213749, 46.227638), geom);';
            dbUtils.getData(q, function (err, result) {
                done();
            })
        });
    })
});

describe('Bad ID', function () {
    describe('#Get data with bad ID', function () {
       it ('should return 0 line', function (done) {
            var q = 'SELECT country, name FROM country WHERE id = 10000';
            dbUtils.getData(q, function (err, res) {
                if (err) done(err);
                res.length.should.be.equal(0);
                done();
            });
       });
    });
});
