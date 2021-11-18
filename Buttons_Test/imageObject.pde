class ImageObject {

  int x;
  int y;
  int sizeX;
  int sizeY;
  PImage img;
  PImage img2;
  boolean overImage;
  boolean imgDisplayed = true;
  boolean imgCollected = false;

  ImageObject(int tX, int tY, PImage tImg, int tSizeX, int tSizeY, PImage tImg2) {

    img = tImg;
    img2 = tImg2;
    x = tX;
    y = tY;
    sizeX = tSizeX;
    sizeX = tSizeY;
  }

  void display() {

    overImage = mouseX > x && mouseX < x + img.width && mouseY > y && mouseY < y + img.height;

    if (overImage) {
      cursor(HAND);
    }

    if (imgDisplayed) {
      image(img, x, y);
      img.resize(sizeX, sizeY);
    }

    if (overImage && mousePressed) {
      imgCollected = true;
    }

    if (imgCollected) {
      x =  50;
      y = 30;
      sizeX = 200;
      sizeY = 200;


      //image(img2, 0, 0);
      //img2.resize(1920, 1080);
    }
  }
}
