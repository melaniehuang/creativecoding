import controlP5.*;
import java.util.Date;

ControlP5 cp5;
ControlGroup messageBox;

PrintWriter output;

int messageBoxResult = -1;
String teamOne = "";
String teamTwo = "";

int messageBoxWidth = 500;
int messageBoxHeight = 380;


void toggleBox(int theValue) {
  if(messageBox.isVisible()) {
    messageBox.hide();
  } else {
    Date d = new Date();
    output = createWriter("data/" + d.getTime() + ".txt"); 
    
    cp5.get(Textfield.class,"Team One").clear();
    cp5.get(Textfield.class,"Team Two").clear();
    
    messageBox.show();
  }
}

void createMessageBox() {
  ControlFont cfont = new ControlFont(font,20);
  
  // create a group to store the messageBox elements
  messageBox = cp5.addGroup("messageBox")
                  .setPosition(width/2-250, height/2-200)
                  .setSize(messageBoxWidth,messageBoxHeight)
                  .setBackgroundColor(color(255))
                  .bringToFront() 
                  .hideBar();
  
  // add a TextLabel to the messageBox.

  Textlabel l = cp5.addTextlabel("messageBoxLabel","Enter new team names",150,50)
                   .setColorValue(#505050)
                   .setFont(cfont)
                   .moveTo(messageBox);
  
  Textfield teamOne = cp5.addTextfield("teamOne")
                         .setPosition(50,120)
                         .setSize(400,60)
                         .setFocus(true)
                         .setColor(color(255))
                         .setFont(cfont)
                         .setAutoClear(false)
                         .setColorForeground(color(121,31,17))
                         .setColorBackground(color(250,73,45))
                         .setColorActive(color(255));
                                               
  teamOne.getCaptionLabel().setVisible(false);
  teamOne.moveTo(messageBox);
  
  Textfield teamTwo = cp5.addTextfield("teamTwo",20,66,260,20)
                         .setPosition(50,190)
                         .setSize(400,60)
                         .setColorForeground(color(38,53,126))
                         .setColorBackground(color(64,97,255))
                         .setColorActive(color(255))
                         .setAutoClear(false)
                         .moveTo(messageBox);
                         
  teamTwo.getCaptionLabel()
         .setVisible(false)
         .setFont(cfont)
         .setColor(255);
         
  // OK button
  Button b1 = cp5.addButton("buttonOK")
                 .setSize(120,60)
                 .setPosition(190,280)
                 .moveTo(messageBox)
                 .setColorBackground(color(200))
                 .setColorActive(color(150))
                 .setValue(1)
                 .setBroadcast(true);                
  
  b1.setCaptionLabel("OK")
    .getCaptionLabel()
    .setFont(cfont)
    .setSize(20);
}

void createButtonNewGame(){
  Button b = cp5.addButton("toggleBox");
  b.setLabel("NEW GAME");
  b.setSize(100,20);
  b.setPosition(30,30);
  b.setDefaultValue(1); 
}

void buttonOK(int theValue) {
  println("New game, play ball.");
  
  teamOne = ((Textfield)cp5.getController("teamOne")).getText();
  println("Team Red : " + teamOne);
  
  teamTwo = ((Textfield)cp5.getController("teamTwo")).getText();
  println("Team Blue : " + teamTwo);
  
  output.println(teamOne + "," + teamTwo);
  
  messageBoxResult = theValue;
  messageBox.hide();
  
  output.flush();  
  output.close();
}

void writeTeams(){
  fill(255);
  textSize(32);
  textAlign(CENTER);
  text(teamOne, (width/2+50)/2, 50+((height-100)/4)); 
  text(teamTwo, width/2 + ((width/2-50)/2), 50+((height-100)/4)); 
}