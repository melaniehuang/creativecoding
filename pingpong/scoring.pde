import processing.serial.*;
Serial myPort;

//set up a game
int pointsWon = 7;
int bestOf = 0;

int[] gamesWon = new int[2];

void writeScores(){
  
  int gameCircle = 20;
  int gap = 10;
  
  fill(0);
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
  
  // TEAM A

  if (score[0] == pointsWon && gamesWon[0] < bestOf ) {
    gamesWon[0]++;
    output.println(score[0] + "," + score[1]);
    score[0] = 0;
    score[1] = 0;
  } else if (score[0] == pointsWon && gamesWon[0] == bestOf) {
    gamesWon[0]++;
    output.println(score[0] + "," + score[1]);
    output.println(gamesWon[0] + "," + gamesWon[1]);
    endGame();
  }
  
  for (int i = 0; i < gamesWon[0]; i++){
    fill(255);
    ellipse(x1+(gameCircle*i)+(gap*i),y,gameCircle-8,gameCircle-8);
  }
  
  // TEAM B
  
  if (score[1] == pointsWon && gamesWon[1] < bestOf) {
    gamesWon[1]++;
    output.println(score[0] + "," + score[1]);
    score[0] = 0;
    score[1] = 0;
  } else if (score[1] == pointsWon && gamesWon[1] == bestOf) {
    gamesWon[1]++;
    output.println(score[0] + "," + score[1]);
    output.println(gamesWon[0] + "," + gamesWon[1]);
    endGame();
  }
  
  for (int i = 0; i < gamesWon[1]; i++){
    fill(255);
    ellipse(x2+(gameCircle*i)+(gap*i),y,gameCircle-8,gameCircle-8);
  }
  
  buttonPressed();
  
}

void keyPressed() { 
  //points
  if(messageBox.isVisible()){
    score[0] = 0;
    score[1] = 0;
  } else {
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
}

void buttonPressed(){
  int val = 0;
  
  if(messageBox.isVisible()){
    score[0] = 0;
    score[1] = 0;
  } else if (myPort.available() > 0) {
    val = myPort.read();
  }
    
  if (val == 1) {
   score[0]++;
  } else if (val == 2) {
   score[1]++;
  } else {
   val = 0;
  }
  
  println(val);
}