int x1 = width/2;
int y1 = height/2;

//color[] c = {color(0x170e07), color(0x514b3b), color(0x727353), color(0xa9a975), color(0xb6a972)};

void setup() {
  size(1000,700);
  background(190);
  noFill();
}

void draw() {
  float x = random(0,width);
  float y = random(0,height);
  float c = random(0,255);
  for (int i = 0; i < 1; i++){
    strokeWeight(0.5);
    stroke(c,100);
    line(x,y,x+100,y+100);  
  }
}