/**
 * Created by romanwuattier on 06/01/2017.
 */
var chai = require('chai');
var chaiHttp = require('chai-http');
var should = require('should');

var server = require('../app');

chai.use(chaiHttp);

describe('Index route', () => {
    describe('/GET shapes', () => {
        it('it should GET all the shapes', (done) => {
            chai.request(server)
            .get('/years')
            .end((err, res) => {
                if (err) done(err);
                res.status.should.be.equal(200);
                done();
            });
        });
    });

    describe('/GET/:variable/:country/:year/:limit byCountry', () => {
        it('it should GET n arrival country from France', (done) => {
            chai.request(server)
                .get('/byCountry/B11/France/2010/5')
                .end((err, res) => {
                if (err) done(err);
                res.status.should.be.equal(200);
                done();
            });
        });
    });

    describe('/GET/:lat/:lng shape', () => {
        it('should GET the shape at (lat, lng)', (done) => {
            chai.request(server)
                .get('/shape/12.52111/-69.968338')
                .end((err, res) => {
                if (err) done(err);
                res.status.should.be.equal(200);
                done();
            });
        });
    });

    describe('/GET years', () => {
        it('should GET the range of years', (done) => {
            chai.request(server)
                .get('/years')
                .end((err, res) => {
                if (err) done(err);
                res.status.should.be.equal(200);
                done();
            });
        });
    });

    describe('/GET total', () => {
        it('should GET the number of migrant for a country', (done) => {
            chai.request(server)
                .get('/total/B11/France/2010')
                .end((err, res) => {
                if (err) done(err);
                res.status.should.be.equal(200);
                done();
            });
        });
    });
});