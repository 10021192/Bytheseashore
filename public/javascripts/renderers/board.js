const dicemsg = '2'
const cardmsg = 'progress'
const tilePositions= {
1:[150, 100], 2:[155, 150], 3:[160, 200]

}
/*maybe add a message about card position on hand and explain that*/
//const player1msg = 'p1 turn'
//const player2msg = 'p2 turn'

/*
let x = 100
let y = 100
let width = 1000
let height = 600
*/


class Board {
    constructor(width,height,x,y,board) {
        this.width = width;
        this.height = height;
        this.x = x;
        this.y = y;
        this.board = board;
        this.tiles = [];     
        for (var i = 0; i < tilePositions.length; i++) {
            let tmpCoord = tilePositions[i]
            this.tile.push( new TileGrid(tmpCoord[0], tmpCoord[1],30));
            console.log(err);
        }


    
       /* this.msg = Msg;
        let nCards = 1+playValues.length;
       // let nTiles = 
        this.CardWidth = width
        this.CardHeight = height
        this.Card = new Card(this.cardWidth,this.cardHeight,
                                 x+this.cardWidth);
        this.cardValues = [];
        for (let pos in playValues) {
            this.cardValues.push(new Card(this.cardWidth,this.cardHeight,
                                 x+this.cardWidth*cardSpaceToBorder+this.cardWidth+
                                 this.cardWidth*spaceBetweenCards+pos*this.cardWidth,
                                 y+topSpace,
                                playValues[pos]));
        }
        
        this.tileValues = [];
        for (let pos in playValues) {
            this.tileValues.push(new Card(this.cardWidth,this.cardHeight,
                x+this.cardWidth*cardSpaceToBorder+this.cardWidth+
                this.cardWidth*spaceBetweenCards+pos*this.cardWidth,
                y+topSpace,
               playValues[pos]));
        }*/
    }         


    draw() {
        // board
        noFill();  
        stroke('red');
        strokeWeight(10);     
        rect (this.x,this.y,this.width,this.height)
        // P1 spawn boat
        fill(153,76,0);  
        stroke('black');
        strokeWeight(4);     
        rect (20,60,60,90,20)
        //P2 spawn boat
        fill(153,76,0);  
        stroke('black');
        strokeWeight(4);     
        rect (1520,660,60,90,20)
        // treasure 
        fill(153,76,0);  
        stroke('black');
        strokeWeight(4);     
        rect (800,360,50,50,20)
        
        for (var i = 0; i < this.tiles.length; i++) 
         this.tiles[i].draw();
        
      /*  this.tile.draw();
        for (let tile of this.cardValues) {
            card.draw();
        }*/

        /*this.Card.draw();
        for (let card of this.cardValues) {
            card.draw();
        }*/
        // text
       /* fill(0,0,0);
        textAlign(CENTER,CENTER);
        text(topcardLabel, this.x+this.cardWidth*cardSpaceToBorder+this.cardWidth/2, 
            this.y+topSpace/2);
        text(valuesLabel, this.x+this.cardWidth*cardSpaceToBorder+
                this.cardWidth*spaceBetweenCards+this.cardWidth+
                (this.cardValues.length*this.cardWidth)/2, this.y+topSpace/2);
        text(this.msg, this.x+this.width/2, this.y+this.height-bottomSpace/2); */
    }

    valueClicked(x,y) {
        for (let card of this.cardValues)
            if (card.clicked(x,y)) return card.getCard();
        return false;
    }    
    roomCardClicked(x,y) {
        return this.Card.clicked(x,y);
    }
    setRoomCard(card) {
        this.Card.setCard(card);
    }
    /*resetMsg() { this.msg = baseMsg; }
    setResult(win) {
        if (win) this.msg = winMsg;
        else this.msg = looseMsg;
        let board = this;
        setTimeout(  ()=> { board.resetMsg() },
                    resultMsgTimeout);
    }*/
}