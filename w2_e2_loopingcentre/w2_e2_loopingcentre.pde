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
    ellipse((width/2-(20*i))+20*i, (height/2-50*n)+50*n, 20,20);
    }
  }
}
