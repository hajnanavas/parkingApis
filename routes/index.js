var models = require('../models');
var express = require('express');
var router = express.Router();

router.get('/', function (req, res) {
  res.redirect('/structures')
 // model.structures.findAll().then((result) => res.json(result))
});

module.exports = router;