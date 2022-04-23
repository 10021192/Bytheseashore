var express = require('express');
var router = express.Router();
var tModel = require("../models/tilesModel");
            
router.get('/', async function(req, res, next) {
    console.log("Get all tiles")
    let result = await tModel.getAllTiles();
    res.status(result.status).send(result.result);
});

module.exports = router;