float[][] balls = new float[10][5];

//x,y,xd,yd,speed

int circleWidth = 350;

void setup() {
  background(#6858ff);
  size(1000, 800);  
  noFill();
  stroke(#FFE0D6);
  pixelDensity(2);
  
  for (int i = 0; i < balls.length; i++) {
    balls[i][0] = random(width);
    balls[i][1] = random(height);
    balls[i][2] = 1;
    balls[i][3] = 1;
    balls[i][4] = random(8);
  }
}

void draw() {
  //background(0);
  
  blendMode(BLEND);
  fill(#6858ff, 10);
  rect(0, 0, width, height);
  
  for (int w = 0; w < width; w+=50) {
    for (int h = 0; h < height; h+=50) { 
      stroke(255);
      point(w,h);
    }
  }
  
  drawElement();
  drawLines();
}  
   
void drawElement(){  
  for (int i = 0; i < balls.length; i++) {
    
    float x = balls[i][0];
    float y = balls[i][1];
    
    float xd = balls[i][2];
    float yd = balls[i][3];
    
    float speed = balls[i][4];
    
    balls[i][0] = x + ( speed * xd );
    balls[i][1] = y + ( speed * yd );
    
    if ( xd == -1 && x <= 0 ){
     balls[i][2] *= -1;
    }
  
    if ( xd == 1 && x > width ){
     balls[i][2] = -1;
    }
    
    if ( yd == -1 && y <= 0 ){
     balls[i][3] *= -1;
    }
  
    if ( yd == 1 && y > height ){
     balls[i][3] = -1;
    }
   
    //stroke(255);
    //ellipse(x,y,circleWidth,circleWidth);
    //point(x,y);

  }
}

void drawLine(float x1, float y1, float x2, float y2){ 
  float d = dist(x1,y1,x2,y2);
  if (d <= circleWidth){    
    stroke(#fde803);
    line(x1,y1,x2,y2);
  }
}

void drawLines(){
    for (int i = 0; i < balls.length-1; i++) {    
      float[] ballA = balls[i];
         
      for (int n = i + 1; n < balls.length; n++) {
        float[] ballB = balls[n];
        
        drawLine(ballA[0], ballA[1],
                 ballB[0], ballB[1]);
      }      
    }
}

void keyPressed() {
  if (key == 's' || key == 'S') {
    saveFrame(); 
  }
}

void mousePressed() {
  for (int i = 0; i < balls.length; i++) {
    balls[i][0] = random(width);
    balls[i][1] = random(height);
    balls[i][2] = 1;
    balls[i][3] = 1;
    balls[i][4] = random(8);
  }
}