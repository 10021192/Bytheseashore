class Tile {
    //static cardImages = {};
    constructor(width,height,x,y,card) {
        this.width = width;
        this.height = height;
        this.x = x;
        this.y = y;
        this.tile = tile;
    }

    draw() {
        fill(204,0,0);  
        stroke('black');
        strokeWeight(4);     
        rect (this.x,this.y,this.width,this.height,50, 50, 30, 30)
        /*if (this.card) {
            imageMode(CENTER);
            let img = Card.cardImages[this.card];  
            let ratio = (this.width*imgRelWidth)/img.width;
            image(img,this.x+this.width/2,
                  this.y+this.height*imgCenterVertical,
                 this.width*imgRelWidth,img.height*ratio);
            fill(0,0,0);
            textAlign(CENTER,CENTER);
            text(this.card,this.x+this.width/2,this.y+this.height*textCenterVertical);
        }*/
    }
    setCard(card) { this.card = card; }
    getCard() { return this.card; }
    clicked(x,y) {
        return (x > this.x && x < (this.x+this.width) &&
            y > this.y && y < (this.y+this.height));
    }
}