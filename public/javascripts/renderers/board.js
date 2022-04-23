const dicemsg = '2'
const cardmsg = 'progress'
/*maybe add a message about card position on hand and explain that*/
//const player1msg = 'p1 turn'
//const player2msg = 'p2 turn'

class Board {
    constructor(width,height,x,y,topCard, playValues) {
        this.width = width;
        this.height = height;
        this.x = x;
        this.y = y;
        this.msg = Msg;
        let nCards = 1+playValues.length;
        let nTiles = 
        this.DeckWidth = width/(nCards+cardSpaceToBorder*2+spaceBetweenCards);
        this.DeckHeight = height-topSpace-bottomSpace;
        this.roomDeck = new Card(this.cardWidth,this.cardHeight,
                                 x+this.cardWidth*cardSpaceToBorder,
                                 y+topSpace,
                                 topCard);
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
        }
    }         


    draw() {
        this.roomCard.draw();
        for (let card of this.cardValues) {
            card.draw();
        }
        // text
        fill(0,0,0);
        textAlign(CENTER,CENTER);
        text(topcardLabel, this.x+this.cardWidth*cardSpaceToBorder+this.cardWidth/2, 
            this.y+topSpace/2);
        text(valuesLabel, this.x+this.cardWidth*cardSpaceToBorder+
                this.cardWidth*spaceBetweenCards+this.cardWidth+
                (this.cardValues.length*this.cardWidth)/2, this.y+topSpace/2);
        text(this.msg, this.x+this.width/2, this.y+this.height-bottomSpace/2);
    }

    valueClicked(x,y) {
        for (let card of this.cardValues)
            if (card.clicked(x,y)) return card.getCard();
        return false;
    }    
    roomCardClicked(x,y) {
        return this.roomCard.clicked(x,y);
    }
    setRoomCard(card) {
        this.roomCard.setCard(card);
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