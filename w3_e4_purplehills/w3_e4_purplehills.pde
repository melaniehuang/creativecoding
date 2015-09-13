float x = 0;
float y = 200;

float dx = 10;
float dy;

float radius;
float a;

int frame = 1;

void setup() {
  background(0); 
  size(2000, 400);
}

void draw() {  
  yellowhill();
}

void yellowhill() {  
  radius = 10;
  a = random(2,6);
  
  x += dx;
  y += 10 * sin(radians(frame++)*radius);
      
  line(x,y,x,height);
  stroke(255,246,66);
  
  if (x > width) {
    //background(0,100);
    x = 0;
    y = y - 10;
    dx += x + 2;
  }
}
