// ** CUSTOMISE BACKGROUND ** x,y,xd,yd,speed
float[][] balls = new float[2][5];
int circleWidth = 100;
int[] score = new int[2];

// ** NEW GAME ** //
int bestOf = 3;
int[] gamesWon = new int[2];
String teamA = "COMMON CODE";
String teamB = "EVERYONE ELSE";


void setup() {  
  background(#6858ff);
  size(1200, 700);  
  noFill();
  stroke(#FFE0D6);
  pixelDensity(2);
  
  score[0] = 0;  
  score[1] = 0;
  gamesWon[0] = 0;
  gamesWon[1] = 0;

  for (int i = 0; i < balls.length; i++) {
    balls[i][0] = random(width);
    balls[i][1] = random(height);
    balls[i][2] = 1;
    balls[i][3] = 1;
    balls[i][4] = random(2,5);
  } 
}

void draw() {  
  drawCourt();
  writeTeams();
  writeScores();
  rectMode(CORNER);

  strokeWeight(1);
  blendMode(BLEND);
  
  fill(#6858ff, 10);
  rect(0, 0, width, height);
  
  for (int w = 0; w < width; w+=25) {
    for (int h = 0; h < height; h+=25) { 
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
    
    if ( xd == -1 && x <= 0 + circleWidth/2){
     balls[i][2] *= -1;
    }
  
    if ( xd == 1 && x > width - circleWidth /2 ){
     balls[i][2] = -1;
    }
    
    if ( yd == -1 && y <= 0 + circleWidth/2){
     balls[i][3] *= -1;
    }
  
    if ( yd == 1 && y > height - circleWidth/2 ){
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
  noFill();
  strokeWeight(10);
  stroke(255);
  rect(width/2,height/2,width-100,height-100);
  
  line(width/2, 0, width/2, height);
  line(50, height/2, width-50, height/2);
}

void writeTeams(){
  fill(255);
  textSize(32);
  textAlign(CENTER);
  text(teamA, (width/2+50)/2, 50+((height-100)/4)); 
  text(teamB, width/2 + ((width/2-50)/2), 50+((height-100)/4)); 
}

void writeScores(){
  int gameCircle = 20;
  int gap = 10;
  
  fill(255);
  textSize(140);
  textAlign(CENTER,CENTER);
  
  //points
  text(score[0], (width/2+50)/2, height/2 +((height-100)/4)-20); 
  text(score[1], width/2 + ((width/2-50)/2), height/2 +((height-100)/4)-20); 

  //games
  int x1 = width/2 - (gap*bestOf + gameCircle*bestOf);
  int x2 = width - (gap*bestOf + gameCircle*bestOf + 50);

  int y = height - 50 - (gameCircle + gap);
  
  for (int i = 0 ; i < bestOf; i++){
   noFill();
   strokeWeight(1);
   ellipse(x1+(gameCircle*i)+(gap*i),y,gameCircle,gameCircle);
   ellipse(x2+(gameCircle*i)+(gap*i),y,gameCircle,gameCircle);
  }
  
  if (score[0] == 11 && gamesWon[0] < 2) {
    gamesWon[0]++;
    score[0] = 0;
    score[1] = 0;
  } 
  
  for (int i = 0; i < gamesWon[0]; i++){
    fill(255);
    ellipse(x1+(gameCircle*i)+(gap*i),y,gameCircle-8,gameCircle-8);
  }
  
}

void keyPressed() { 
  //points
  if (key == 'A' || key == 'a') {
    score[0]++;
  }
  if (key == 'Z' || key == 'z') {
    score[0]--;
  }
  
  if (key == 'S' || key == 's') {
    score[1]++;
  }
  if (key == 'X' || key == 'x') {
    score[1]--;
  }
}

void endGame(){
  
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