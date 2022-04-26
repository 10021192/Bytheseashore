const width = 1600;
const height = 800;

var boardMan;

/*function preload() {
    boardMan = new BoardManager(width.height,0,0);
    boardMan.initBoard();
}*/

function setup() {
    var canvas = createCanvas(width, height,0,0);
    canvas.parent('game');
    
}
function draw() {
    background('cyan');
    boardMan = new BoardManager(1400,700,100,50);
    boardMan.initBoard();
    boardMan.draw();
    setInterval(draw, 2000);
}
function mouseClicked() {
    boardMan.click(mouseX,mouseY);     
}