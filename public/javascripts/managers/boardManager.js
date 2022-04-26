var playValues=[];

class BoardManager {
    
    constructor(width,height,x,y) {
        this.width = width;
        this.height = height;
        this.x = x;
        this.y = y;
    }
    /*static async preloadImages() {
        let cardImgs = {}
        let cards = await getCards();
        for (let card of cards) {
            let playValue = card.crd_name;
            playValues.push(playValue);
            cardImgs[playValue] = loadImage('./assets/'+playValue+'.png');
        }
        Card.initImgs(cardImgs);
    }*/

      async initBoard() {
        //let canvas = await getCanvas(this.canvas);
        this.board = new Board(this.width,this.height,this.x,this.y);
    }
    draw() { 
        if (this.board) this.board.draw();
    }
   /*
    async play(value) {
        let result = await play(this.room, value);
        this.board.setResult(result.victory);
        this.board.setRoomCard(result.current_topcard);
    }*/
    async click(x,y) {
        if (this.board.CardClicked(x,y)) {
            this.refresh();
        } else {
            let value = this.board.valueClicked(x,y);
            if (value) this.play(value);
        }
    }
}