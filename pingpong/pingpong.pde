
public int myColor = color(104,88,255);
String teamOne = "";

int bestOf = 3;
int[] gamesWon = new int[2];
String teamA;
String teamB;

void setup() {  
  cp5 = new ControlP5(this);
  newGame();
  
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
  if (gamesWon[0] == 0 && gamesWon[1] == 0){
    newGame();
  }
    
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