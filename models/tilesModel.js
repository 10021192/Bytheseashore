var pool = require('./connection.js')

module.exports.getAllTiles = async function () {
    try {
      let sql = `Select * from tile`;
      let result = await pool.query(sql);
      let tile = result.rows;
      return { status: 200, result: tile };
    } catch (err) {
      console.log(err);
      return { status: 500, result: err };
    }
  }