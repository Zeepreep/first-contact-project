class SaxionScene extends Scene
{
  ImageButton devsButton = new ImageButton( "devsCut.png", 248, 396 );
  ImageButton rubenButton;
  ImageButton ruben2Button;
  TextBox dialogButton;

  SaxionScene() {
    super( "saxion.png" );
  }


  public void doStepWhileInState()
  {
    super.doStepWhileInState();
    //buttonTemp.display();
    //tempName.display();
    devsButton.display();
    if (rubenButton!=null) {
      rubenButton.display();
    }
    if (dialogButton!=null) {
      dialogButton.display();
    }
  }

  void handleMousePressed() {
    if ( dialogButton != null ) {
      if ( dialogButton.isPointInside( mouseX, mouseY ) ) {
        dialogButton = dialogButton.nextDialog;
      }
    } else if ( ruben2Button !=null && rubenButton.isPointInside( mouseX, mouseY ) ) {
      stateHandler.changeStateTo( COFFEE_SCENE );
    } else if ( rubenButton !=null && rubenButton.isPointInside( mouseX, mouseY ) ) {
      ruben2Button = new ImageButton( "rubenCut.png", 1641, 206 );
      TextBox textBox1 = new TextBox(#FFFFFF, "Who are you exactly?", 10, 915, 25, imgBubbleRuben );      
      TextBox textBox2 = new TextBox(#FFFFFF, "A sleep deprived student who needs some coffee", 10, 915, 25, imgBubble );

      dialogButton = textBox1;
      textBox1.nextDialog = textBox2;
    } else if ( devsButton.isPointInside( mouseX, mouseY ) ) {
      rubenButton = new ImageButton( "rubenCut.png", 1641, 206 );
      TextBox textBox1 = new TextBox(#FFFFFF, "Would you know where to get some coffee?", 10, 915, 25, imgBubble );      
      TextBox textBox2 = new TextBox(#FFFFFF, "There is a coffee machine around the corner ask Ruben our teacher for the key to get it for free", 10, 915, 25, imgBubbleTeam );

      textBox1.nextDialog = textBox2;

      dialogButton = textBox1;
    }
  }
}
