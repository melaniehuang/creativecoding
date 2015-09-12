float x = 0;
float y = 400;

float dx;
float dy;

//hills
float ax;
float ay;

void setup() {
  background(0); 
  size(2000, 400);
}


void draw() {
  dx = random(1, 3);
  x += dx;  
  ax = x;
  
  ay = y - random(50,200);
  line(x,y,ax,ay);
  stroke(255, 56, 255);
}


