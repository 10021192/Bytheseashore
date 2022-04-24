const width = 1400;
const height = 800;

var boardMan;

/*function preload() {
    BoardManager.preloadImages();
    boardMan = new BoardManager(width,height,0,0);
    boardMan.initBoard();
}*/

function setup() {
    //BoardManager.preloadImages();
    boardMan = new BoardManager(width,height,0,0);
    boardMan.initBoard();
    var canvas = createCanvas(width, height);
    canvas.parent('game');
}
function draw() {
    background(220);
    boardMan.draw();
}
function mouseClicked() {
    boardMan.click(mouseX,mouseY);     
}