var express = require('express');
var pg = require('pg');
var path = require('path');

var router = express.Router();

dbDriver = require('../utils/db');

router.use(express.static(path.join(__dirname, 'public')));

/* GET home page. */
router.get('/', function(req, res, next) {
    res.render('index', { title: 'Express' });
});


router.get('/shapes', function(req, res) {
    var q = 'SELECT gid, name_long, ST_AsGeoJSON(geom) AS geom, lat, lng ' +
        'FROM public.ne_10m_admin_0_countries_lakes ' +
        'JOIN country ON (public.ne_10m_admin_0_countries_lakes.name_long = country.name);';

    dbDriver.getData(q, function(err, item) {
        if (item) {
            res.status(200);
            res.send(item);
        } else {
            return console.error('error running query', err);
        }
    });
});

router.get('/byCountry/:variable/:country/:year/:limit', function(req, res) {
    var variable = req.params.variable;
    var country = req.params.country;
    var year = req.params.year;
    var limit = req.params.limit;
    var q = 'SELECT mig.country_of_birth, mig.country, mig.year, sum(mig.value) AS nb, ' +
        'country.lat, country.lng, ' +
        'ST_AsGeoJSON(ne_10m_admin_0_countries_lakes.geom) as geom ' +
        'FROM mig ' +
        'JOIN country ON (mig.country_of_birth = country.name) ' +
        'JOIN ne_10m_admin_0_countries_lakes ON (mig.country_of_birth = ne_10m_admin_0_countries_lakes.name_long) ' +
        'WHERE mig.country = \'' + country + '\' AND var = \'' + variable + '\' AND year = \'' + year + '\' AND mig.value != 0 ' +
        'GROUP BY mig.country_of_birth, mig.country, mig.year, country.lat, country.lng, ne_10m_admin_0_countries_lakes.geom ' +
        'ORDER BY nb DESC ';
    if (limit != 'All') {
        q += 'LIMIT ' + limit + ';';
    } else {
        q += ';';
    }

    dbDriver.getData(q, function(err, item) {
        if (item) {
            res.status(200);
            res.send(item);
        } else {
            return console.error('error running query', err);
        }
    });
});

router.get('/shape/:lat/:lng', function(req, res) {
    var lat = req.params.lat;
    var lng = req.params.lng;
    var stMakePoint = 'ST_MakePoint(' + lng + ', ' + lat + ')';
    var q = 'SELECT gid, name_long, ST_AsGeoJSON(geom) AS geom ' +
        'FROM public.ne_10m_admin_0_countries_lakes ' +
        'WHERE ST_Within(' + stMakePoint + ', geom);';

    dbDriver.getData(q, function(err, item) {
        if (item) {
            res.status(200);
            res.send(item);
        } else {
            return console.error('error running query', err);
        }
    });
});

router.get('/years', function(req, res) {
    var q = 'SELECT DISTINCT (year) FROM mig ORDER BY year DESC;';
    dbDriver.getData(q, function(err, item) {
        if (item) {
            res.status(200);
            res.send(item);
        } else {
            return console.error('error running query', err);
        }
    });
});


router.get('/total/:variable/:country/:year', function(req, res) {
    var variable = req.params.variable;
    var country = req.params.country;
    var year = req.params.year;
    var q = 'SELECT value FROM mig ' +
        'WHERE mig.country = \'' + country + '\' AND co2 = \'TOT\' AND var = \'' + variable + '\' AND year = \'' + year + '\' ' +
        'LIMIT 1;';

    dbDriver.getData(q, function(err, item) {
        if (item) {
            res.status(200);
            res.send(item);
        } else {
            return console.error('error running query', err);
        }
    });
});

module.exports = router;
