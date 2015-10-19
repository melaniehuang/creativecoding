/**
 * ControlP5 Controller on top of 3D
 * demonstrates how to use controlP5 controllers on top of scene.
 *
 * by Andreas Schlegel, 2011
 * www.sojamo.de/libraries/controlP5
 * Edited by Melanie Huang
 */

import controlP5.*;

ControlP5 cp5;
ControlGroup messageBox;

int messageBoxResult = -1;
String teamOne = "";
String teamTwo = "";


void setup() {
  size(1200,700);
  cp5 = new ControlP5(this);
  
  noStroke();
  createMessageBox();
  Button b = cp5.addButton("toggleBox");
  b.setLabel("NEW GAME");
  b.setSize(100,20);
  b.setPosition(30,30);
  b.setDefaultValue(1); 
  textFont(createFont("",30));
}

void draw() {
  if(messageBox.isVisible()) {
    background(128);
  } else {
    background(0);
    fill(250,73,45);
    text(teamOne,20,height-40);
    fill(64,97,255);
    text(teamTwo,300,height-40);
  }
}

void toggleBox(int theValue) {
  if(messageBox.isVisible()) {
    messageBox.hide();
  } else {
    messageBox.show();
  }
}


void createMessageBox() {
  // create a group to store the messageBox elements
  messageBox = cp5.addGroup("messageBox",width/2 - 150,100,300);
  messageBox.setBackgroundHeight(120);
  messageBox.setBackgroundColor(color(0,100));
  messageBox.hideBar();
  
  // add a TextLabel to the messageBox.
  Textlabel l = cp5.addTextlabel("messageBoxLabel","Who dares to take the stage?",20,20);
  l.moveTo(messageBox);
  
  Textfield teamOne = cp5.addTextfield("Team One",20,36,260,20);
  teamOne.getCaptionLabel().setVisible(false);
  teamOne.moveTo(messageBox);
  teamOne.setColorForeground(color(121,31,17));
  teamOne.setColorBackground(color(250,73,45));
  teamOne.setColorActive(color(255));
  
  Textfield teamTwo = cp5.addTextfield("Team Two",20,66,260,20);
  teamTwo.getCaptionLabel().setVisible(false);
  teamTwo.moveTo(messageBox);
  teamTwo.setColorForeground(color(38,53,126));
  teamTwo.setColorBackground(color(64,97,255));
  teamTwo.setColorActive(color(255));
  
  // OK button
  Button b1 = cp5.addButton("buttonOK");
  b1.setSize(50,20);
  b1.setPosition(100,200);
  b1.moveTo(messageBox);
  b1.setColorBackground(color(40));
  b1.setColorActive(color(20));
  b1.setBroadcast(false); 
  b1.setValue(1);
  b1.setBroadcast(true);
  b1.setCaptionLabel("OK");
}

void buttonOK(int theValue) {
  println("New game, play ball.");
  
  teamOne = ((Textfield)cp5.getController("Team One")).getText();
  println("Team Red : " + teamOne);
  
  teamTwo = ((Textfield)cp5.getController("Team Two")).getText();
  println("Team Blue : " + teamTwo);
  
  messageBoxResult = theValue;
  messageBox.hide();
  cp5.get(Textfield.class,"Team One").clear();
  cp5.get(Textfield.class,"Team Two").clear();
}