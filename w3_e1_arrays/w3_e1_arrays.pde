int repetitions = 20;
int w = 20;
int h = 20;
int gap = 20;
int c = 0;
int[] colors = {0,10,25,70,80,90,120,200};

void setup() {
  size(1000, 1000);
  rectMode(CORNER);
  frameRate(2);
}

void draw() {
  background(255);
  drawSquare();
}


int getCoord(int o, int a, int i) {
  return (o/2-((repetitions*a+(repetitions*(gap-1)))/2))+(gap*i)+(a*i);
}

void drawSquare() {
  for (int i=0; i<repetitions; i++) {
    for (int n=0; n<repetitions; n++) {
      int x = getCoord(width, w, i);
      int y = getCoord(height, h, n);
      int c = (int) random (0,8);
      
      noStroke();
      fill(colors[c]);

      rect(x, y, w, h);     
    }
  }
 
  stroke(0);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
} 
