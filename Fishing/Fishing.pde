//Fishing//
//Hizo Chen//
//This is a fishing game where players can extend or shorten the fishing rod by pressing[left]&[right]on keyboard.
//and pressed[up]&[down]to raising and lowering the bait.
//In the river, three mines and one fish will  randomly appear.
//The goal for players is to avoid the mines and fishing the fish.

enum GameState {
  START, GAME, FAIL, SUCCESS//set four different states to easy to switch
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
    rodlengthX=350;//Reset at the beginning of each game round
    roddown=130;//Reset at the beginning of each game round
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


void keyPressed() {
  switch(state) {
  case GAME://Limit only apply to game state
  //extend or shorten the fishing rod by pressing[left]&[right]on keyboard
    if (keyCode == LEFT) {
      rodlengthX=constrain(rodlengthX-10, 160, 400);
    } else if ((keyCode == RIGHT)) {
      rodlengthX=constrain(rodlengthX+10, 160, 400);
    } //pressed[up]&[down]to raising and lowering the bait
    else if ((keyCode == UP)) {
      roddown=constrain(roddown-20, 130, 400);
    } else if ((keyCode == DOWN)) {
      roddown=constrain(roddown+20, 130, 400);
    }
    break;//Make sure it can be interrupted at any time
  }
}

void mousePressed() {
  switch(state) {
  case START://Limit only apply to start state
    if (mouseX >= 120 && mouseX <= 280 && mouseY >= 300 && mouseY <= 350 ) {
      state=GameState.GAME;//Click on the text to start the game
      fishX = random(180, 370);//Random fish generation coordinates
      fishY = random(240, 370);//Random fish generation coordinates
      minePosition= new PVector(random(170, 370), random(240, 370));//Random mine generation coordinates
      minePosition2= new PVector(random(170, 370), random(240, 370));//Random mine generation coordinates
      minePosition3= new PVector(random(170, 370), random(240, 370));//Random mine generation coordinates
    }
    break;//Make sure it can be interrupted at any time
  case FAIL://Limit only apply to fail state
    if (mouseX >= 120 && mouseX <= 280 && mouseY >= 300 && mouseY <= 350 ) {
      state=GameState.START; //Click ‘return’ to return to the start interface
    }
    break;//Make sure it can be interrupted at any time
  case SUCCESS://Limit only apply to success state
    if (mouseX >= 120 && mouseX <= 280 && mouseY >= 300 && mouseY <= 350 ) {
      state=GameState.START;//Click ‘return’ to return to the start interface
    }
    break;//Make sure it can be interrupted at any time
  }
}
