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
  //text(cp5.get(Textfield.class,"teamOne").getText(), (width/2+50)/2, 50+((height-100)/4)); 
  //text(cp5.get(Textfield.class,"teamTwo").getText(), width/2 + ((width/2-50)/2), 50+((height-100)/4)); 
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
  
  // TEAM A
  
  if (score[0] == 11 && gamesWon[0] < 2) {
    gamesWon[0]++;
    score[0] = 0;
    score[1] = 0;
  } else if (score[0] == 11 && gamesWon[0] == 2) {
    gamesWon[0]++;
    endGame();
  }
  
  for (int i = 0; i < gamesWon[0]; i++){
    fill(255);
    ellipse(x1+(gameCircle*i)+(gap*i),y,gameCircle-8,gameCircle-8);
  }
  
  // TEAM B
  
  if (score[1] == 11 && gamesWon[1] < 2) {
    gamesWon[1]++;
    score[0] = 0;
    score[1] = 0;
  } else if (score[1] == 11 && gamesWon[1] == 2) {
    gamesWon[1]++;
    endGame();
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
  //END GAME//
}

void endGame(){
  timer = millis();
  
  if (frameCount % 12 == 0) { 
    blinker = !blinker; 
  }
  
  if (blinker) {
    fill(255);
    text("this text will blink",50,300);
  }
}