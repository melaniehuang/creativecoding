/*
 * Creative Coding
 * Week 3, 04 - spinning top: curved motion with sin() and cos()
 * by Indae Hwang and Jon McCormack
 * Copyright (c) 2014 Monash University
 *
 * This sketch is the first cut at translating the motion of a spinning top
 * to trace a drawing path. This sketch traces a path using sin() and cos()
 *
 */

float x, y;      // current drawing position
float dx, dy;    // change in position at each frame
float rad;       // radius for the moving hand

void setup() {
  background(124,171,244);
  size(displayWidth, displayHeight);

  // initial position in the centre of the screen
  x = width/2;
  y = height/2;

  // dx and dy are the small change in position each frame
  dx = random(-1, 1);
  dy = random(-1, 1);

}


void draw() {
  // blend the old frames into the background
//  blendMode(BLEND);
//  fill(124,171,200,5);
//  rect(0, 0, width, height);
  rad = radians(frameCount);

  // calculate new position
  x += dx;
  y += dy;

  float max = 10;
  float min = 1;

  //When the shape hits the edge of the window, it reverses its direction and changes velocity
  if (x > width-100 || x < 100) {
    dx = dx > 0 ? -random(min, max) : random(min, max);
  }

  if (y > height-100 || y < 100) {
    dy = dy > 0 ? -random(min, max) : random(min, max);
  }

  float bx = x + 100 * sin(rad);
  float by = y + 100 * cos(rad);

  float radius = 200 * sin(rad*1);
  float handX = bx + radius * sin(rad*1);
  float handY = by + radius * cos(rad*1);

  float handA = handX + radius * sin(rad*2);
  float handB = handY + radius * cos(rad*2);

  for (int i = 0; i < 10; i++) {
    float handC = handA + i * sin(rad*4);
    float handD = handB + i * cos(rad*4);
    stroke(255, 50);
    line(bx, bx, handX, handY);
    line(handA,handB,handC,handD);
  }
  
  
  
//  line(handA, handB, handX, handY);
//  line(x,y,bx,by);
  
}

