void setup(){
  size(500,500);
  background(0);  
  frameRate(2);
  stroke(255);
  noFill();
}

void draw() {
  drawElement();
}

void drawElement(){  
  int w = 100;
  
  float x1 = random(0, width);
  float y1 = random(0, height); 
  
  float x2 = random(0, width);
  float y2 = random(0, height); 
  
  ellipse(x1,y1, w, w);
  ellipse(x2,y2, w, w);
  
  float d = dist(x1,y1,x2,y2);
  
  if (d < w) {
   line(x1,y1,x2,y2);
  }
}