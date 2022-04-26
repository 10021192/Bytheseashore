//let tilex = 140
//let tiley = 105

//var i = []

class TileGrid {
    constructor(x,y,r,tile) {
        this.x = x;
        this.y = y;
        this.r = r
        this.tile = tile;
        
        
        
    }

    draw() {
        fill(204,0,0);  
        stroke('black');
        strokeWeight(4); 
        //ellipse (this.x,this.y,this.r)
        ellipse (x,y,40)
        
    } 
    
    
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
        }
    }*/
    setTile(tile) { this.tile = tile; }
    getTile() { return this.tile; }
}