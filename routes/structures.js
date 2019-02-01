var express = require('express');
var router = express.Router();
var model = require('../models');
var structure_details = require('../models/structure_details');

router.get("/getStructures", (req, res) =>
    model.structures.findAll(
        {
            include: [
                {
                    model: model.sub_structures,
                    attributes: ['id', 'structure_name', 'structure_type', 'total_space', 'occupied_space', 'color', 'status', 'latitude', 'longitude', 'hidden', 'low', 'full']
                },
                {
                    model: model.structure_details,
                    attributes: ['id', 'abbreviated_name', 'description', 'note']
                }],
        }
    ).then((result) => res.json(result))
);

router.post("/addStructure", (req, res) =>
    model.structures.create({
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
        full: req.body.full,
        structure_details: [{
            abbreviated_name: req.body.abbreviatedName,
            description: req.body.description,
            note: req.body.note
        }]
    }, {
            include: [model.structure_details]
        }).then((result) => {
            res.json(result)
        })
);

router.post("/addSubStructure", (req, res) =>
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