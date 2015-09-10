float red;
float green;
float blue;

void setup() {
  size(600,600);
  red = 0;
  green = 0;
  blue = 0;
}

float getMouse(int m, int wh, int c1, int c2) {
  return map(m,0,wh,c1,c2);
}

void draw() {
  background(red,green,blue);
  
  if (mousePressed) {
    red = getMouse(mouseX,width,0,255);
    green = getMouse(mouseY,height,0,255);
    blue = getMouse(mouseX+mouseY,width+height,255,0);
  
    println("red:"+ red, "green:" + green, "blue:" + blue);
  }
}

