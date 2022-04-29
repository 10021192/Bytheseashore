var pool = require('./connection.js')

module.exports.getAllMatches = async function() {
  try {
    let sql = `select match_id, player_id
    from matches, player
    where player_id = match_player1_id or player_id = match_player2_id`;
    let result = await pool.query(sql);
    let matches = result.rows;
    return { status: 200, result: matches};
  } catch (err) {
    console.log(err);
    return { status: 500, result: err};
  }
}

module.exports.getMatchById = async function (id) {
    try {
      let sql = `select match_id, player_id
      from matches, player
      where player_id = match_player1_id or player_id = match_player2_id 
      and match_id = 1`;
      let result = await pool.query(sql, [id]);
      if (result.rows.length > 0) {
        let matches = result.rows[0];
        return { status: 200, result: matches };
      } else {
        return { status: 404, result: { msg: "No match with that id" } };
      }
    } catch (err) {
      console.log(err);
      return { status: 500, result: err };
    }
  }

  module.exports.play = async function (id, value) {
   /* try {
      if (!parseInt(id)) {
        return { status: 400, result: { msg: "Room id must be a number" } };      
      }
      let sql = `select * from room, card
        where room.roo_id = $1 and
        room.roo_topcard_id = card.crd_winsover_id 
        and card.crd_name ILIKE $2;`
        

        'select * from matches,'

      let result = await pool.query(sql, [id,value]);
      if (result.rows.length == 0) {
        let sqlr = `select * from room, card where room.roo_id = $1 
                    and room.roo_topcard_id = card.crd_id`;
        let resultr = await pool.query(sqlr, [id]);
        let room = resultr.rows[0];
        if (!room) {
          return { status: 404, result: { msg: "No room with that id" } };
        } else {
          return {
            status: 200,
            result: {
              victory: false,
              msg: "You Lost! That card does not beat the top card.",
              current_topcard: room.crd_name         
            }
          };
        }
      }
      let card_id =  result.rows[0].crd_id;
              let card_name = result.rows[0].crd_name;
              let sql2 = "UPDATE room SET roo_topcard_id = $1 WHERE roo_id = $2";
              let result2 = await pool.query(sql2, [  card_id, id  ]);
              if (result2.rowCount == 0) {
                return { status: 500, 
                         result: { msg: "Not able to update. Many possible reasons (ex: room was deleted during play)" } };
              }
              return {
                status: 200,
                result: {
                  victory: true,
                  msg: "You Won!",
                  current_topcard: card_name
                }
              };
            } catch (err) {
              console.log(err);
              return { status: 500, result: err };
            }*/
          }