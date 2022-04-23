/*var pool = require('./connection.js')

module.exports.getAllTraps = async function () {
    try {
      let sql = `Select * from trap`;
      let result = await pool.query(sql);
      let cards = result.rows;
      return { status: 200, result: traps };
    } catch (err) {
      console.log(err);
      return { status: 500, result: err };
    }
  }*/