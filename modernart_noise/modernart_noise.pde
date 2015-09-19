float y = 0;
float x = 0;
color from = color(0,166,255);
color to = color(255,255,255);
float xoff;

void setup() {
  size(800, 800);
  background(76,166,255);
}

void draw() {

  for (int h = 0; h <= 800; h++) {
      xoff = xoff + 1;
      float n = noise(xoff);    
      color interA = lerpColor(from, to, n);    
      line(0,y+h,width,y+h);
      stroke(interA,150);      
  }
  fill(65);
  noStroke();
  
  for (int i = 0; i < 8; i++) {
    fill(65);
    noStroke();
    ellipse(100*i,height/2,10*i,10*i);
  }
}
