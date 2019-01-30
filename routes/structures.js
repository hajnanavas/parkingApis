var models = require('../models');
var express = require('express');
var router = express.Router();

router.get("/structures", (req, res) =>
    models.structures.findAll().then((result) => res.json(result))
);

router.post("/structures", (req, res) =>
    models.structures.create({
        title: req.body.title,
        content: req.body.content
    }).then((result) => res.json(result))
);

module.exports = router;