var express = require('express');
var router = express.Router();
var model = require('../models');

router.post("/addStructure", (req, res) =>
    model.sub_structures.create({
        structure_id: req.body.structureId,
        structure_name: req.body.structureName,
        structure_type: req.body.structureType,
        total_space: req.body.totalSpace,
        occupied_space: req.body.occupiedSpace,
        color: req.body.color,
        status: req.body.status,
        latitude: req.body.latitude,
        longitude: req.body.longitude,
        hidden: req.body.hidden,
        low: req.body.low,
        medium: req.body.medium,
        full: req.body.full
    }).then((result) => {
        console.log('result', result)
        res.json(result)
    })
);

module.exports = router;