float chartWidth = 10;
float chartHeight = 10;
float x, y;

void setup(){
  size(800,600);
}

void draw(){
  background(200);  // set the background color
  translate(width/2+100, height/2);  // puts origin in the precise middle of canvas
  scale(1, -1);
  rect(-300,300,600,-600);  // 200 in  from the left, leaving room for buttons
  line(0,300,0,-300);
  line(-300,0,300,0);
}