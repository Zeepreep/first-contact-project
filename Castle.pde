


class CastleScene extends Scene
{
  ImageButton  castleDoor = new ImageButton(    "castleDoor.png", 435, 230);
  //TextButton   textButton = new  TextButton( 10, 915, "This is text", 32 );
  TextBox   dialogButton;



  CastleScene() {
    super( "castle.png" );

    //TextBox   textBox1 = new TextBox(#FAFAFA, "Where have I ended up now? Seems like it's some sort of castle.", 10, 915, 25, imgBubbleTeam);

    //textBox1.nextDialog = textBox2;

    //dialogButton = textBox1;
  }

  public void doStepWhileInState()
  {
    super.doStepWhileInState();
    castleDoor.display();
    //textButton.display();
    if ( dialogButton != null ) {
      dialogButton.display();
    }
  }

  void handleMousePressed() {
    //if ( textButton.isPointInside( mouseX, mouseY ) ) {
    //  stateHandler.changeStateTo( CELLAR_SCENE );
    //}
    if (castleDoor.isPointInside( mouseX, mouseY ) ) {
      stateHandler.changeStateTo( CASTLEROOM_SCENE );
    }
    if ( dialogButton != null && dialogButton.isPointInside( mouseX, mouseY ) ) {
      dialogButton = dialogButton.nextDialog;
      if ( dialogButton == null ) {
        stateHandler.changeStateTo( CASTLEROOM_SCENE );
      }
    }
  }
}
