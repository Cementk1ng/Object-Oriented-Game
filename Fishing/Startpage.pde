void startScreen() {
  background(#e0e6e4);
  fill(#e0e6e4);
  rect(0, 0, 400, 400);
  fill(#95e3c9);
  quad(120, 300, 280, 300, 280, 350, 120, 350);
  fill(0);
  textSize(60);
  text("START", 120, 345);
  textSize(30);
  text("RULE", 10, 50);
  textSize(20);
  text("press[left]/[right]to control the length of rod.", 10, 150);
  text("press[up]/[down]Raising and lowering the bait.", 10, 100);
  fill(#437e82);
  textSize(100);
  text("FISHING", 30, 275);
}
