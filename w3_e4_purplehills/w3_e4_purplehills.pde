float x = 0;
float y = 200;

float dx;
float dy;

float radius;
float a;

void setup() {
  background(0); 
  size(2000, 400);
}

void draw() {  
  yellowhill();
}

void purplehill() {
  dx = 4; 
  radius = 10;
  a = random(0,4);
     
  x += dx;
  y += a * sin(radians(frameCount)*radius);
    
  line(x,y,x,height);
  stroke(255,56,255);
  
  if (x > width) {
    background(0);
  }

}

void yellowhill() {
  dx = 4; 
  radius = 10;
  a = random(2,6);
     
  x += dx;
  y += a * sin(radians(frameCount)*radius);
    
  line(x,y,x,height);
  stroke(255,246,66);
  
  if (x > width) {
    background(0,100);
    x = 0;
    y = 200;
  }
}
