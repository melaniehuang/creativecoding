int[][] balls = { {width/2,height/2,1,1,1},
                  {width/2,height/2,1,1,5},
                  {width/2,height/2,1,1,2} };

void setup() {
  background(0);
  size(1000, 800);  
  noFill();
  pixelDensity(2);
}

void draw() {
  background(0);
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
    
    if ( xd == -1 && x <= 0 ){
     balls[i][2] *= -1;
    }
  
    if ( xd == 1 && x >= width ){
     balls[i][2] = -1;
    }
    
    if ( yd == -1 && y <= 0 ){
     balls[i][3] *= -1;
    }
  
    if ( yd == 1 && y >= height ){
     balls[i][3] = -1;
    }
   
    stroke(255);
    ellipse(x,y,100,100);
    point(x,y);

  }
}

void drawLines(){
  for (int i = 0; i < balls.length; i++) {
    int x1 = balls[0][0];
    int x2 = balls[1][0];
    int x3 = balls[2][0];
    int y1 = balls[0][1];
    int y2 = balls[1][1];
    int y3 = balls[2][1];
    
    float d1 = dist(x1,y1,x2,y2);
    
    if (d1 <= 100){
      stroke(255);
      line(x1,y1,x2,y2);
    }
    
    float d2 = dist(x1,y1,x3,y3);
    
    if (d2 <= 100){
      stroke(255);
      line(x1,y1,x3,y3);
    }
    
    float d3 = dist(x2,y2,x3,y3);
    
    if (d3 <= 100){
      stroke(255);
      line(x2,y2,x3,y3);
    }
  }
}