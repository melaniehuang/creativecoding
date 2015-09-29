int[][] balls = { {600,100,1,400,600,5},
                  {500,300,1,300,700,4},
                  {400,500,1,200,800,1},
                  {300,700,1,100,900,4},
                  {200,900,1,0,1000,1} };
void setup() {
  background(0);
  size(1000, 1000);  
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
    int d = balls[i][2];
    int s = balls[i][3];
    int l = balls[i][4];
    int speed = balls[i][5];
        
    if ( d == -1 && x == s ){
      balls[i][2] = 1;
    }
  
    if ( d == 1 && x == l ){
      balls[i][2] = -1;
    }
    
    balls[i][0] = x+1*d*speed;
    
    stroke(255);
    ellipse(x,y,100,100);
    point(x,y);

  }
}