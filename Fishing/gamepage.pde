void gameScreen() {
  backGround();
  // draw array
  Rain();
  //display array from rain class
  for (int i = 0; i<water.length; i++) {
    water[i].display();
  }
  Mon();//the main character
  water();//use loop to draw water surface ripples
  fishingRod ();
  fish();
  mines();
  platform();
}
void backGround() {
  background(#54759e);
  noStroke();
  //dust
  fill(83, 112, 50, 140);
  ellipseMode(CENTER);
  noStroke();
  //Draw fog and make it dynamic
  ellipse(10, 190, 110+10*sin(frameCount*.05), 110+10*sin(frameCount*.05));
  ellipse(190, 130, 200+10*sin(frameCount*.05), 200+10*sin(frameCount*.05));
  ellipse(350, 50, 200+10*sin(frameCount*.05), 200+10*sin(frameCount*.05));
  ellipse(330, 250, 200+10*sin(frameCount*.05), 200+10*sin(frameCount*.05));
  ellipse(0, 0, 200+10*sin(frameCount*.05), 200+10*sin(frameCount*.05));
  // moon
  fill(#e0e088);
  ellipse(180, 50, 70, 70);
  fill(255, 255, 223, 125);
  ellipse(180, 50, 85, 85);
  ellipse(180, 50, sin(frameCount/10)*95, sin(frameCount/10)*95);
  //clouds
  fill(130+(mouseY/2), 208, 224);
  ellipse(-mouseX*.2+20, 120, 120, 80);
  ellipse(-mouseX*.2+10, 80, 70, 80);
  ellipse(-mouseX*.2+130, 100, 120, 80);
  ellipse(-mouseX*.2+160, 150, 200, 80);
  ellipse(-mouseX*.2+280, 10, 150, 100);
  ellipse(-mouseX*.2+360, 40, 110, 110);
  ellipse(-mouseX*.2+390, 70, 150, 70);
}
void Mon() {
  //body&clothe
  strokeWeight(2);
  stroke(0);
  fill(#666666);
  quad(70, 100, 90, 100, 90, 180, 55, 180);
  quad(90, 140, 140, 140, 140, 200, 90, 200);
  triangle(70, 100, 90, 140, 80, 140);
  triangle(80, 140, 120, 150, 120, 130);
  fill(#3b816c);
  triangle(130, 150, 140, 200, 120, 200);
  triangle(105, 140, 120, 135, 120, 145);
  fill(#7ae0dc);
  ellipse(97, 73, 60, 45);//left side hair bang
  fill(#f2efef);
  quad(120, 135, 140, 133, 140, 147, 120, 145);//hand
  quad(90, 60, 120, 80, 100, 110, 60, 90);//head
  //eye
  strokeWeight(2);
  stroke(#7ee285);
  fill(#f4a8e9);
  ellipse(103, 95, 7, 6);
  strokeWeight(2);
  stroke(0);
  fill(#666666);
  ellipse(102, 89, 13, 1);
  //hair
  fill(#f5bde4);
  triangle(60, 70, 70, 80, 50, 100);
  triangle(65, 80, 80, 90, 60, 100);
  fill(#eef9f8);
  ellipse(90, 70, 60, 40);
  triangle(70, 50, 100, 60, 90, 70);
  triangle(70, 70, 90, 70, 80, 80);
  //chair
  fill(#e5d2ea);
  quad(40, 180, 120, 180, 120, 200, 40, 200);
  quad(40, 120, 50, 110, 55, 180, 40, 180);
}
void platform() {
  strokeWeight(2);
  stroke(0);
  fill(#838280);
  quad(0, 200, 160, 200, 160, 400, 0, 400);
}
void water() {
  noStroke();
  for (int x=0; x<=400; x+=50) {
    fill(#d6e3f2);
    ellipse(x, 320, 80, 200);
  }
}
void fish() {
  fill(#9ed8f2);
  ellipse(fishX+20, fishY+20, 60, 20);
  triangle(fishX+50, fishY+20, fishX+70, fishY, fishX+70, fishY+40);
  ellipse(fishX, fishY+20, 5, 5);
}
void fishingRod () {
  stroke(0);
  strokeWeight(8);
  line(140, 130, rodlengthX, 130);
  stroke(#e0e6e4);
  strokeWeight(6);
  line(140, 130, rodlengthX, 130);
  stroke(0);
  strokeWeight(3);
  line( rodlengthX, 130, rodlengthX, roddown);
  circle(rodlengthX, roddown, 7);
}

void mines() {
  fill(#869292);
  ellipse(minePosition.x, minePosition.y, 40, 40);
  fill(#e0e6e4);
  beginShape();
  vertex(minePosition.x, minePosition.y-25);
  vertex(minePosition.x+7, minePosition.y-10);
  vertex(minePosition.x+28, minePosition.y-7);
  vertex(minePosition.x+11, minePosition.y+3.5);
  vertex(minePosition.x+14, minePosition.y+20);
  vertex(minePosition.x, minePosition.y+12);
  vertex(minePosition.x-14, minePosition.y+20);
  vertex(minePosition.x-11, minePosition.y+3.5);
  vertex(minePosition.x-28, minePosition.y-7);
  vertex(minePosition.x-7, minePosition.y-10);
  endShape(CLOSE);
  fill(#869292);
  ellipse(minePosition2.x, minePosition2.y, 40, 40);
  fill(#e0e6e4);
  beginShape();
  vertex(minePosition2.x, minePosition2.y-25);
  vertex(minePosition2.x+7, minePosition2.y-10);
  vertex(minePosition2.x+28, minePosition2.y-7);
  vertex(minePosition2.x+11, minePosition2.y+3.5);
  vertex(minePosition2.x+14, minePosition2.y+20);
  vertex(minePosition2.x, minePosition2.y+12);
  vertex(minePosition2.x-14, minePosition2.y+20);
  vertex(minePosition2.x-11, minePosition2.y+3.5);
  vertex(minePosition2.x-28, minePosition2.y-7);
  vertex(minePosition2.x-7, minePosition2.y-10);
  endShape(CLOSE);
  fill(#869292);
  ellipse(minePosition3.x, minePosition3.y, 40, 40);
  fill(#e0e6e4);
  beginShape();
  vertex(minePosition3.x, minePosition3.y-25);
  vertex(minePosition3.x+7, minePosition3.y-10);
  vertex(minePosition3.x+28, minePosition3.y-7);
  vertex(minePosition3.x+11, minePosition3.y+3.5);
  vertex(minePosition3.x+14, minePosition3.y+20);
  vertex(minePosition3.x, minePosition3.y+12);
  vertex(minePosition3.x-14, minePosition3.y+20);
  vertex(minePosition3.x-11, minePosition3.y+3.5);
  vertex(minePosition3.x-28, minePosition3.y-7);
  vertex(minePosition3.x-7, minePosition3.y-10);
  endShape(CLOSE);
}

//array from the Rain class
void Rain() {
  for (int i = 0; i<water.length; i++) {
    water[i] = new rain (mouseX, mouseY);
  }

  if ((roddown <= fishY+20 && roddown >= fishY-20 ) && (rodlengthX <= fishX+70 && rodlengthX >= fishX-20) ) {
    print ("get it");//testing
    state=GameState.SUCCESS;
  } else if ( (rodlengthX <= minePosition.x+28 && rodlengthX >= minePosition.x-28 ) && (roddown <= minePosition.y+20 && roddown >= minePosition.y-10) ) {
    print ("opps");//testing
    state=GameState.FAIL;
  }
}
