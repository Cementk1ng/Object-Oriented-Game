//define class rain
class rain {
  //state position value and position of rain
  PVector position;
  float mousePositionX, mousePositionY;

  //constructs rain with mouse positions
  rain ( float mousePisitionX, float mousePisitionY) {
    //adds vector position values,limit size with coordinates
    position = new PVector(random(0, 400), random(0, 200));
  }

  // display rain at random length
  void display () {
    fill(225);
    noStroke ();
    rect (position.x, position.y, 3, random(12, 20), 40);
  }
}
