int columns = 50;
int rows = 50;
int gap = 10;
int w = 4;
int h = 4;
int rowwidth = 0;
int heightwidth = 0;

void setup() {
  size(1000, 1000);
  background(255,237,0);
  fill(255);
  noStroke();
  ellipseMode(CENTER);
}

void draw() {
  for (int i=0; i<columns; i++){
    for (int n=0; n<rows; n++){
    int rowwidth = (columns*w)+((columns-1)*gap)/2;
    int heightwidth = (rows*h)+((rows-1)*gap)/2;
    ellipse(((width/2)-(rowwidth/2))+gap*i,((height/2)-(heightwidth/2))+gap*n, w,h);
    }
  }
}

