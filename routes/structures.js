var express = require('express');
var router = express.Router();
var model = require('../models');

router.get("/getStructures", (req, res) =>
    model.structures.findAll().then((result) => res.json(result))
);

router.post("/addStructure", (req, res) =>
    model.structures.create({
        title: req.body.title,
        content: req.body.content
    }).then((result) => res.json(result))
);

module.exports = router;