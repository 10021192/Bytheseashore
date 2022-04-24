var pool = require('./connection.js')

module.exports.getAllPlayers = async function () {
    try {
      let sql = `Select * from player`;
      let result = await pool.query(sql);
      let players = result.rows;
      return { status: 200, result: players };
    } catch (err) {
      console.log(err);
      return { status: 500, result: err };
    }
  }