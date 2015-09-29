int[][] balls = { {width/2,height/2,1,1,1},
                  {width/2,height/2,1,1,2},
                  {width/2,height/2,1,1,3},
                  {width/2,height/2,1,1,4},
                  {width/2,height/2,1,1,5},
                  {width/2,height/2,1,1,6},
                  {width/2,height/2,1,1,7} };

int circleWidth = 400;

void setup() {
  background(#FF7D52);
  size(1000, 800);  
  noFill();
  stroke(#FFE0D6);
  pixelDensity(2);
}

void draw() {
  //background(0);
  
  blendMode(BLEND);
  fill(#FF7D52, 10);
  rect(0, 0, width, height);
  
  drawElement();
  drawLines();
}

void drawElement(){  
  
  for (int i = 0; i < balls.length; i++) {
    
    int x = balls[i][0];
    int y = balls[i][1];
    
    int xd = balls[i][2];
    int yd = balls[i][3];
    
    int speed = balls[i][4];
    
    balls[i][0] = x + ( speed * xd );
    balls[i][1] = y + ( speed * yd );
    
    if ( xd == -1 && x <= 0 + (circleWidth/2) ){
     balls[i][2] *= -1;
    }
  
    if ( xd == 1 && x > width - (circleWidth/2) ){
     balls[i][2] = -1;
    }
    
    if ( yd == -1 && y <= 0 + (circleWidth/2) ){
     balls[i][3] *= -1;
    }
  
    if ( yd == 1 && y > height - (circleWidth/2)){
     balls[i][3] = -1;
    }
   
    //stroke(255);
    ellipse(x,y,circleWidth,circleWidth);
    //point(x,y);

  }
}

void drawLine(int x1, int y1, int x2, int y2){ 
  float d = dist(x1,y1,x2,y2);
  if (d <= circleWidth){    
    stroke(255);
    line(x1,y1,x2,y2);
  }
}

void drawLines(){
    for (int i = 0; i < balls.length-1; i++) {    
      int[] ballA = balls[i];
         
      for (int n = i + 1; n < balls.length; n++) {
        int[] ballB = balls[n];
        
        drawLine(ballA[0], ballA[1],
                 ballB[0], ballB[1]);
      }      
    }
}