int rows = 5;
int columns = 5;

void setup() {
  size(1000, 600);
  background(255,237,0);
  fill(255);
  noStroke();
}

void draw() {
  for (int i=0; i<columns; i++){
    for (int n=0; n<rows; n++) {
    ellipse(50+50*i, 50+50*n, 20,20);
    }
  }
}
