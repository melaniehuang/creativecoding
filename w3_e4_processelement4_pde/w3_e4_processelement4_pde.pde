int     num;    // the number of items in the array (# of circles)
float[] y;      // y-position of each circle (fixed)
float[] x;
float[] speed;  // speed of each circle
float[] phase;  // phase of each circle
int[] frame;
float d;

void setup() {
  background(0);
  size(500, 500);

  num = 10;

  // allocate space for each array
  y = new float[num];
  x = new float[num];
  
  speed = new float[num];
  phase = new float[num]; 
  frame = new int[num];
  
  // calculate the gap in y based on the number of circles
  float gap = height / (num + 1);
  
  //setup an initial value for each item in the array
  for (int i=0; i<num; i++) {
    y[i] = gap * (i + 1);      // y is constant for each so can be calculated once
    speed[i] = 0.5;
    phase[i] = random(TWO_PI);
    frame[i] = 0;
  }
  
  noFill();
  pixelDensity(2);
}

void draw() {
  background(0);

  for (int i=0; i<num; i++) {
    // calculate the x-position of each ball based on the speed, phase and current frame
    if (speed[i] > 0) {
        x[i] = width/2 + sin(radians(frame[i]*speed[i]) + phase[i])* 200; 
        frame[i] += 1;       
    }         
    stroke(255);
    ellipse(x[i], y[i], 60, 60);
  }
  
  for (int i = 0; i < num-1; i++){
    float d = dist(x[i],y[i], x[i+1], y[i+1]);
    
    if (d < 60) {
      line(x[i],y[i], x[i+1], y[i+1]);
    }
  }
}