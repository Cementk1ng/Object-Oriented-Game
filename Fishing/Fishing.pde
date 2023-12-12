//Fishing//
//Hizo Chen//
//I want to create a fishing game where players can extend or shorten the fishing rod by pressing keyboard.
//In the river, three mines and one fish will  randomly appear.
//The goal for players is to avoid the mines and fishing the fish.

enum GameState {
  START, GAME, FAIL, SUCCESS
}
GameState state;//variable to create various states and change screen
rain[]water = new rain [3];
float fishX=300;
float fishY=300;
float rodlengthX=350;
float roddown=130;
PVector minePosition;
PVector minePosition2;
PVector minePosition3;

void setup() {
  size(400, 400);// set display window to 400 by 400 pixels
  state=GameState.START;
}
void draw() {
  switch(state) {
  case START:
    rodlengthX=350;
    roddown=130;
    startScreen();
    break;
  case GAME:
    gameScreen();
    break;
  case FAIL:
    failScreen();
    break;
  case SUCCESS:
    successScreen();
    break;
  }
}

void MissScreen() {
  fill(255, 0, 0, 60);
  rectMode(CORNER);
  rect(0, 0, 400, 400);
  fill(255);
  textSize(60);
  text("You Dead", width/5, height/2);
}

void keyPressed() {
  switch(state) {
  case GAME:
    if (keyCode == LEFT) {
      rodlengthX=constrain(rodlengthX-10, 160, 400);
    } else if ((keyCode == RIGHT)) {
      rodlengthX=constrain(rodlengthX+10, 160, 400);
    } else if ((keyCode == UP)) {
      roddown=constrain(roddown-20, 130, 400);
    } else if ((keyCode == DOWN)) {
      roddown=constrain(roddown+20, 130, 400);
    }
    break;
  }
}

void mousePressed() {
  switch(state) {
  case START:
    if (mouseX >= 120 && mouseX <= 280 && mouseY >= 300 && mouseY <= 350 ) {
      state=GameState.GAME;
      fishX = random(180, 370);
      fishY = random(240, 370);
      minePosition= new PVector(random(170, 370), random(240, 370));
      minePosition2= new PVector(random(170, 370), random(240, 370));
      minePosition3= new PVector(random(170, 370), random(240, 370));
    }
    break;
  case FAIL:
    if (mouseX >= 120 && mouseX <= 280 && mouseY >= 300 && mouseY <= 350 ) {
      state=GameState.START;
    }
    break;
  case SUCCESS:
    if (mouseX >= 120 && mouseX <= 280 && mouseY >= 300 && mouseY <= 350 ) {
      state=GameState.START;
    }
    break;
  }
}
