var express = require('express');
var router = express.Router();
var cModel = require("../models/playertotileModel");
            
router.get('/', async function(req, res, next) {
    console.log("Get all players position on tiles")
    let result = await cModel.getAllPlayersonTiles();
    res.status(result.status).send(result.result);
});

module.exports = router;