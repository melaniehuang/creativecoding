float x = 200;
float y = 100;
float xdirection = 1;

float a = 1000;
float b = y + 200;
float adirection = 1;

float c = 500;
float d = b + 200;
float cdirection = 1;

float speed = 10;
float num = 10;

void setup(){
  //size(500,500);
  fullScreen();
  background(0);    
  pixelDensity(2);
}

void draw() {
  //background(30);
  blendMode(BLEND);
  noStroke();
  fill(0, 5);
  rect(0, 0, width, height);
  
  stroke(150,100);
  
  drawElementx(); 
}


//xdirection
//x min and max
//speed
// y
// x



void drawElementx(){  
  noFill();
  
  if ( xdirection == -1 && x == 200 ){
    xdirection = 1;
  }
  
  if ( xdirection == 1 && x == displayWidth - 200 ){
    xdirection = -1;
  }
  
  x = x+1*xdirection*speed;   
    
  ellipse(x,y,20,20);
  point(x,y);
  
  //second ellipse
  
  if ( adirection == -1 && a == 800){
    adirection = 1;
  }
  
  if ( adirection == 1 && a == 1200 ){
    adirection = -1;
  }
  
  a = a+1*adirection*speed;
  
  ellipse(a,b,20,20);
  point(a,b);
  
  // draw line
  float d1 = dist(x,y,a,b);
  if (d1 <= 282) {
    line(x,y,a,b);
    stroke(50,100);
    line(x,0,x,displayHeight);
  }
   
  //third ellipse
  
  if ( cdirection == -1 && c == 500){
    cdirection = 1;
  }
  
  if ( cdirection == 1 && c == 1500 ){
    cdirection = -1;
  }
  
  c = c+1*cdirection*speed;
  
  ellipse(c,d,20,20);
  point(c,d);
  
  //draw line
  float d2 = dist(a,b,c,d);

  if (d2 <= 282) {
    line(a,b,c,d);
    stroke(50,100);
    line(a,0,a,displayHeight);
  }
}