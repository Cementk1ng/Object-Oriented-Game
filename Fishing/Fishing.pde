//Fishing//
//Hizo Chen//
//I want to create a fishing game where players can extend or shorten the fishing rod by pressing keyboard.
//In the river, three mines and one fish will  randomly appear.
//The goal for players is to avoid the mines and fishing the fish.

rain[]water = new rain [3];

void setup() {
  size(400, 400);// set display window to 400 by 400 pixels
}
void draw() {
  Background();
  // draw array
  Rain();
  //display array from rain class
  for (int i = 0; i<water.length; i++) {
    water[i].display();
  }
  Mon();//the main character
  water();//use loop to draw water surface ripples
  platform();
  fish();
  mines();
}
void Background() {
  background(#54759e);
  noStroke();
  //dust
  fill(83, 112, 50, 140);
  ellipseMode(CENTER);
  noStroke();
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
  ellipse(270, 370, 60, 20);
  triangle(300, 370, 320, 350, 320, 390);
  ellipse(250, 370, 5, 5);
}

void mines() {
  ellipse(280, 300, 40, 40);
  vertex(280 , 300-50);
  vertex(280 +14, 300-20);
  vertex(280 +47, 300-15);
  vertex(280 +23, 300+7);
  vertex(280 +29, 300+40);
  vertex(280 , 300+25);
  vertex(280 -29, 300+40);
  vertex(280 -23, 300+7);
  vertex(280 -47, 300-15);
  vertex(280 -14, 300-20);
  endShape(CLOSE);
}

//array from the Rain class
void Rain() {
  for (int i = 0; i<water.length; i++) {
    water[i] = new rain (mouseX, mouseY);
  }
}
