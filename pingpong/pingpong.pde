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
  
  cp5 = new ControlP5(this);
  
  createMessageBox();
  createButtonOK();

  Date d = new Date();
  output = createWriter("data/" + d.getTime() + ".txt");  
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
  
  //if(messageBox.isVisible()) {
  //  //background(128);
  //} else {
  //  background(0);
  //  fill(250,73,45);
  //  text(teamOne,20,height-40);
  //  fill(64,97,255);
  //  text(teamTwo,300,height-40);
  //}
  
  drawElement();
  drawLines();
}