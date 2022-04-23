var express = require('express');
var router = express.Router();
var cModel = require("../models/tilesModel");
            
router.get('/', async function(req, res, next) {
    console.log("Get all tiles")
    let result = await cModel.getAllTiles();
    res.status(result.status).send(result.result);
});

module.exports = router;