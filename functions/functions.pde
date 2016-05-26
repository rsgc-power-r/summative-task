float chartWidth = 10;   // changeable viewing width
float chartHeight = 10;  // changeable viewing height
float x, y;
String function = "";
String up = "\u25B2";
String down = "\u25BC";

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
  
  for(int i = 0; i < chartWidth; i++)  // x axis tick marks
    line(-300+(i/chartWidth)*600, 10, -300+(i/chartWidth)*600, -10);
  for(int i = 0; i < chartHeight; i++) // y axis tick marks
    line(10, -300+(i/chartHeight)*600, -10 ,-300+(i/chartHeight)*600);
  
  x = -1*chartWidth/2;      // Set the first x value to the far left,
  for(float xPixel = -300; xPixel < 300; xPixel+=0.05){ // 20 circles per pixel
    y = parseFunction(function);  // The function
    float yPixel = y*600/chartHeight;   // map the y value to the y pixel
    ellipse(xPixel, yPixel, 1, 1);      // draw a circle to represent f(x) at x
    x+=chartWidth/12000;                 // 600 * 100 circles per pixel
  }
  
  // Function Input Box and info
  rect(-495,270,190,-22);
  drawWord("y = " + function, 12, 255, 0, 0, -490, 253);
  
  
  drawWord("Click to see example functions",11, 0, 0, 0, -495, 205);
  rect(-495,200,190,-45);
  drawWord("y = x*x", 25, 255, 0, 0, -490, 170);
  rect(-495,150,190,-45);
  drawWord("y = 1/x", 25, 255, 0, 0, -490, 120);
  rect(-495,100,190,-45);
  drawWord("y = sin(x)", 25, 255, 0, 0, -490, 70);
  rect(-495,50,190,-45);
  drawWord("y = log(x)", 25, 255, 0, 0, -490, 20);
  rect(-495,0,190,-45);
  drawWord("y = sqrt(x)", 25, 255, 0, 0, -490, -30);
  rect(-495,-50,92.5,-45);
  drawWord("< >", 25, 255, 0, 0, -490, -80);
  rect(-397.5,-50,92.5,-45);
  drawWord("> <", 25, 255, 0, 0, -390, -80);
  rect(-495,-100,92.5,-45);
  drawWord("     " + up, 12, 255, 0, 0, -490, -118);
  drawWord("     " + down, 12, 255, 0, 0, -490, -132);
  rect(-397.5,-100,92.5,-45);
  drawWord("     " + down, 12, 255, 0, 0, -390, -118);
  drawWord("     " + up, 12, 255, 0, 0, -390, -132);
  
}

void mouseClicked() {
  if (mouseX > 5 && mouseX < 195) {
    if (mouseY > 100 && mouseY < 145)
      function = "x*x";
    if (mouseY > 150 && mouseY < 195)
      function = "1/x";
    if (mouseY > 200 && mouseY < 245)
      function = "sin(x)";
    if (mouseY > 250 && mouseY < 295)
      function = "log(x)";
    if (mouseY > 300 && mouseY < 345)
      function = "sqrt(x)";
    if (mouseX > 5 && mouseX < 98){
      if (mouseY > 350 && mouseY < 395)
        if (chartWidth != 2)  // Do not reach 0!
          chartWidth-=2;
      if (mouseY > 400 && mouseY < 445)
        if (chartHeight != 2) // Do not reach 0!
          chartHeight-=2;
    }
    if (mouseX > 102 && mouseX < 195){
      if (mouseY > 350 && mouseY < 395)
        chartWidth+=2;
      if (mouseY > 400 && mouseY < 445)
        chartHeight+=2;
    }
  }
}

float parseFunction(String function){
  float parsedFunction;
  if(function.equals("x*x"))
    parsedFunction = x*x;
  else if(function.equals("1/x"))
    parsedFunction = 1/x;
  else if(function.equals("sin(x)"))
    parsedFunction = sin(x);
  else if(function.equals("log(x)"))
    parsedFunction = log(x);
  else if(function.equals("sqrt(x)"))
    parsedFunction = sqrt(x);
  else parsedFunction = 0;
  return parsedFunction;
}

// draws a String, of size textsize, based on RGB, at position x,y based on the translated origin
void drawWord(String word, int textsize,
                int fillColorR, int fillColorG, int fillColorB, int x, int y){
  scale(1, -1);  // flips the scale so the word appears upright
  fill(fillColorR, fillColorG, fillColorB);  // changes fill() to the specific color
  textSize(textsize);  // changes the size of the text
  text(word, x, -y);   // draws the text at the certain position
  fill(255);     // returns fill() to normal (white)
  scale(1, -1);  // flips the scale back
}