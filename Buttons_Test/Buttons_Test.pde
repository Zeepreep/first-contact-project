PImage imgShrek;
PImage imgMega;
PImage img1D;
PImage img1D2;
PImage imgBar;

Button button0;

ImageObject imageObject0;

void setup() {
  size (1920, 1080);

  imgShrek = loadImage("shrek.png");
  imgMega = loadImage("megaman.gif");
  img1D = loadImage("1d.png");
  img1D2 = loadImage("1d2.png");
  imgBar = loadImage("barScene.png");

  button0 = new Button(width/2-200, height/2-200, 200, 200, imgBar, 1920, 1080);

  imageObject0 = new ImageObject(1000, 400, imgShrek, 700, 700, imgMega);
}

void draw() {
  background(100);
  cursor(ARROW);

  button0.display();
  
  if (!button0.button){
      imageObject0.display();
  }


}
