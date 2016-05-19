public float chartWidth = 10;   // changeable viewing width
public float chartHeight = 10;  // changeable viewing height
public float x, y;
public String function = "sin(x)";

void setup(){
  size(800,600);
}

void draw(){
  background(200);  // set the background color
  translate(width/2+100, height/2);  // puts origin in the precise middle of canvas
  scale(1, -1);             // flip the axis-coordinate system vertically
  rect(-300,300,600,-600);  // 200 in  from the left, leaving room for buttons
  line(0,300,0,-300);       // y axis
  line(-300,0,300,0);       // x axis
  
  x = -1*chartWidth/2;      // Set the first x value to the far left,
  for(float xPixel = -300; xPixel < 300; xPixel+=0.05){ // 20 circles per pixel
    y = parseFunction(function);  // The function
    
    float yPixel = y*600/chartHeight;   // map the y value to the y pixel
    ellipse(xPixel, yPixel, 1, 1);      // draw a circle to represent f(x) at x
    x+=chartWidth/12000;                 // 600 * 100 circles per pixel
  }

  // function input box
  rect(-495,295,190,-22);
  drawWord("y = " + function, 12, 255, 0, 0, -490, 278);
  
}

float parseFunction(String function){
  float parsedFunction;
  if(function.equals("sin(x)"))
    parsedFunction = sin(x);
  else parsedFunction = 0;
  return parsedFunction;
}

void drawWord(String word, int textsize,
                int fillColorR, int fillColorG, int fillColorB, int x, int y){
  scale(1, -1);
  fill(fillColorR, fillColorG, fillColorB);
  textSize(textsize);
  text(word, x, -y);
  fill(255);
  scale(1, -1);
}