void setup() {  
  
  size(1200, 700);  
  //pixelDensity(2);
  
  cp5 = new ControlP5(this);
  background(#6858ff);
  stroke(#FFE0D6);
  
 
  createMessageBox();
  createButtonOK();
  
  Date d = new Date();
  output = createWriter("data/" + d.getTime() + ".txt");  
    
    cp5.addTextfield("doesThisWork")
     .setPosition(20,170)
     .setSize(200,40)
     .setFont(createFont("arial",20))
     .setAutoClear(false)
     ;
        
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
  
  fill(255);
  //textFont(font);
}

void draw() {   
    text(doesThisWork, 360,180);

  drawCourt(); 
  
  rectMode(CORNER);
  strokeWeight(1);
  blendMode(BLEND);
  fill(#6858ff, 10);
  rect(0, 0, width, height);
 
  drawElement();
  drawLines();
  
  //writeTeams();
  writeScores();
}