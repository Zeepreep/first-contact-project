class TextBox {
  //PImage speechBubble; if you want to have multiple persons speak
  int textColor;
  String text;
  int x;
  int y;
  int textHeight = 25;
  PImage talkingPerson;
  
  
  TextBox nextDialog;

  TextBox(color testTextColor, String testText, int testX, int testY, int newTextHeight, PImage testTalkingPerson ) {

    textColor = testTextColor;
    text = testText;
    x = testX;
    y = testY;
    textHeight = newTextHeight;
    talkingPerson = testTalkingPerson;
  }

  //TextBox(color testTextColor, String testText, int testX, int testY ) {
  //  this( testTextColor, testText, testX, testY, 43, imgBubble);
  //}

  void display() {
      image(talkingPerson, 0, 0);
      if (mouseX < 800 && mouseY > 870) {
        cursor(HAND);
      }
    
    textFont(robotoFont);
    textSize( textHeight ); 
    fill(textColor);
    text(text, x, y, 700, 300);
    
  }
  
  boolean isPointInside( int px, int py ) {
      return px<850 && px > 620 && py < 1080 && py > 1010;
  }
 
}
