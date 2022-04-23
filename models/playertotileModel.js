var pool = require('./connection.js')

module.exports.getAllPlayersonTiles = async function () {
    try {
      let sql = `Select * from playertotile`;
      let result = await pool.query(sql);
      let cards = result.rows;
      return { status: 200, result: playerpositions };
    } catch (err) {
      console.log(err);
      return { status: 500, result: err };
    }
  }