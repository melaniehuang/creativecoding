float[][] balls = new float[2][5];
String teamA = "DUMBLEDORE";
String teamB = "PHOENIX";
//x,y,xd,yd,speed

int circleWidth = 200;

void setup() {
  background(#6858ff);
  size(1200, 700);  
  noFill();
  stroke(#FFE0D6);
  pixelDensity(2);
  
  for (int i = 0; i < balls.length; i++) {
    balls[i][0] = random(width);
    balls[i][1] = random(height);
    balls[i][2] = 1;
    balls[i][3] = 1;
    balls[i][4] = random(2,10);
  } 
}

void draw() {  
  drawCourt();
  writeTeams();
  rectMode(CORNER);
  
  strokeWeight(1);
  blendMode(BLEND);
  fill(#6858ff, 10);
  rect(0, 0, width, height);
  
  for (int w = 0; w < width; w+=50) {
    for (int h = 0; h < height; h+=50) { 
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
    ellipse(x,y,circleWidth,circleWidth);
    point(x,y);

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

void drawCourt(){  
  rectMode(CENTER);
  strokeWeight(10);
  stroke(255);
  rect(width/2,height/2,width-100,height-100);
  
  line(width/2, 0, width/2, height);
  line(50, height/2, width-50, height/2);
}

void writeTeams(){
  textSize(32);
  textAlign(CENTER,CENTER);
  text(teamA, (width/2-50)/2, (height/2-50)/2); 
  text(teamB, (width-50)-(width/2)/2, (height/2-50)/2); 
}











//void keyPressed() {
//  if (key == 's' || key == 'S') {
//    saveFrame(); 
//  }
//}

//void mousePressed() {
//  for (int i = 0; i < balls.length; i++) {
//    balls[i][0] = random(width);
//    balls[i][1] = random(height);
//    balls[i][2] = 1;
//    balls[i][3] = 1;
//    balls[i][4] = random(8);
//  }
//}