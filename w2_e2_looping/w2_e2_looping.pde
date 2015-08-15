int rows = 10;

void setup() {
  size(1000, 600);
  background(255,237,0);
  fill(255);
  noStroke();
}

void draw() {
  for (int i=0; i<rows; i++){
    ellipse(20+50*i, 100, 20,20);
  }
}
