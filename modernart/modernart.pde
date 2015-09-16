int value = 0;

void setup() {
  size(displayWidth, displayHeight);
  background(#47aaeb);
}

void draw() {
}

void mousePressed() {   
     for (int i = 0; i < 8; i++) {
       
       float d = random(20,50);
       float x = random(0+d, width-d);
       float y = random(0+d, height-d);
       
       fill(65);
       noStroke();
       ellipse(x,y,d+i,d+i);
     }
     
     float x = random(0, width/2);
     float y = random(0, height-200);
     
     stroke(255,0,0);
     strokeWeight(12.0);
     strokeCap(ROUND);
     line(x, y, x+100, y-30);
}
