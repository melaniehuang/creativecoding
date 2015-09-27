int     num;    // the number of items in the array (# of circles)
float[] y;      // y-position of each circle (fixed)
float[] x;
int[] frame;
float[] speed;

void setup(){
  size(500,500);
  background(0);  
  //frameRate(2);
  stroke(255);
  noFill();
  
  num = 1;
  
  y = new float[num];
  x = new float[num];
  
  speed = new float[num];
  frame = new int[num];
  
  //setup an initial value for each item in the array
  for (int i=0; i<num; i++) {
    y[i] = 50;
    speed[i] = 10;
    frame[i] = 0;
  }
}

void draw() {
  drawElement();
}

void drawElement(){  
  
  for (int i=0; i<num; i++) {
    // calculate the x-position of each ball based on the speed, phase and current frame
      background(0);
      
      if (speed[i] > 0) {
        x[i] = 50 + sin(radians(frame[i]*speed[i]) + random(TWO_PI))*100; 
        frame[i] += 1;       
      }        
      
      ellipse(x[i], y[i], 20, 20);
  }     
}
  