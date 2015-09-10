float a = 100;
float b = 400;

void setup(){
  size(600,600);
  noFill();
}

void draw(){
  background(255);
  for(int i = 0; i < 200; i++){
    arc(200+i, 300, a, b, HALF_PI,TWO_PI);
  }
}
