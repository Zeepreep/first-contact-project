class EndScene extends Scene
{

  //ImageButton  endButton = new ImageButton(    "monestaryDoor.png", 1535, 570);
  //TextButton   textButton = new  TextButton( 10, 915, "This is text", 32 );
  TextBox   dialogButton;


  EndScene() {
    super( "endScene.png" );

    //TextBox   textBox1 = new TextBox(#FAFAFA, "I should find some beverages \n and go back to my time period!", 10, 915, 25, imgBubble);

    //textBox1.nextDialog = textBox2;

    //dialogButton = textBox1;
  }

  public void doStepWhileInState()
  {
    
    super.doStepWhileInState();
    //endButton.display();
    //textButton.display();
    if ( dialogButton != null ) {
      dialogButton.display();
    }
    

  }

  void handleMousePressed() {
    //if ( textButton.isPointInside( mouseX, mouseY ) ) {
    //  stateHandler.changeStateTo( CELLAR_SCENE );
    //}
    //if (endButton.isPointInside( mouseX, mouseY ) ) {
    //}
    if ( dialogButton != null && dialogButton.isPointInside( mouseX, mouseY ) ) {
      dialogButton = dialogButton.nextDialog;
      if ( dialogButton == null ) {
        stateHandler.changeStateTo( CELLAR_SCENE );
      }
    }
  }
}
