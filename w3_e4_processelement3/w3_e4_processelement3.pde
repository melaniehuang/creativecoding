float x = 0;
float direction = 1;

void setup(){
  //size(500,500);
  fullScreen();
  background(51);  
  stroke(255);
  noFill();
  pixelDensity(2);
}

void draw() {
  drawElement();
}

void drawElement(){  
  background(50);
  int y = 500;
  
  if ( direction == -1 && x == 0 ){
    direction = 1;
  }
  
  if ( direction == 1 && x == 200 ){
    direction = -1;
  }
  
  x = x+1*direction;
  
  ellipse(x,y,50,50);
  point(x,y);
  
  line(200,0,200,height);
 
}
  