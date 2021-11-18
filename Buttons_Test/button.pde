class Button {

  int x;
  int y;
  int bWidth;
  int bLength;
  int sizeX;
  int sizeY;
  PImage img;
  boolean overImage;
  boolean button = true;
  boolean imgDisplay = false;

  Button(int tX, int tY, int test_bWidth, int test_bLength, PImage tImg, int tSizeX, int tSizeY) {

    x = tX;
    y = tY;
    bWidth = test_bWidth;
    bLength = test_bLength;
    img = tImg;
    sizeX = tSizeX;
    sizeY = tSizeY;
  }

  void display() {

    // Variable to check if the mouse is over the button.

    overImage = mouseX > x && mouseX < x + bWidth && mouseY > y && mouseY < y + bLength;

    // Making the mouse a hand when moving over the button.

    if (button && overImage) {
      cursor(HAND);
    }

    // Checking if the button should be there.

    if (button == true) {
      rect (x, y, bWidth, bLength);
    }

    // Code for making the image.
    if (imgDisplay == true) {
      image(img, 0, 0);
      img.resize(sizeX, sizeY);
    }

    // code for pressing the button.
    if (button && overImage && mouseButton == LEFT) {
      button = false;
      imgDisplay = true;
    }
  }
}
