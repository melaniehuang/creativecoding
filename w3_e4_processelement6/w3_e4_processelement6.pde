int[][] balls = { {width/2,height/2,1,1,0,1000,2},
                  {width/2,height/2,1,1,0,1000,4},
                  {width/2,height/2,1,1,0,1000,6},
                  {width/2,height/2,1,1,0,1000,8},
                  {width/2,height/2,1,1,0,1000,1} };


void setup() {
  background(0);
  size(1000, 800);  
  noFill();
  pixelDensity(2);
}

void draw() {
  background(0);
  drawElement();
}

void drawElement(){  
  
  for (int i = 0; i < balls.length; i++) {
    int x = balls[i][0];
    int y = balls[i][1];
    int xd = balls[i][2];
    int yd = balls[i][3];
    //int s = balls[i][4];
    //int l = balls[i][5];
    int speed = balls[i][6];
    
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
    
    //stroke(30);
    //rect(x,y,w,h);
  }
}

void drawLines(){  
}