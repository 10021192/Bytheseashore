/*var express = require('express');
var router = express.Router();
var cModel = require("../models/trapsModel");
            
router.get('/', async function(req, res, next) {
    console.log("Get all traps")
    let result = await cModel.getAllTraps();
    res.status(result.status).send(result.result);
});

module.exports = router;*/