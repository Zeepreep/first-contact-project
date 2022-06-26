class CoffeeScene extends Scene
{
  ImageButton mugTray = new ImageButton( "mugTray.png", 1427, 430 );
  ImageButton sinkButton = new ImageButton( "sink.png", 974, 280 );
  ImageButton coffeeMachine = new ImageButton( "coffeeMachine.png", 594, 46 );
  ImageButton coffeeCup;
  TextBox   dialogButton;


  CoffeeScene() {
    super( "saxionCoffee.png" );
  }

  public void doStepWhileInState()
  {
    super.doStepWhileInState();
    mugTray.display();
    sinkButton.display();
    coffeeMachine.display();
    
    if (coffeeCup!=null) {
      coffeeCup.display();
    }
    if ( dialogButton != null ) {
      dialogButton.display();
    }
  }

  void handleMousePressed() {

    if ( dialogButton != null ) {
      if ( dialogButton.isPointInside( mouseX, mouseY ) ) {
        dialogButton = dialogButton.nextDialog;
      }
    } else if ( coffeeCup !=null && coffeeCup.isPointInside( mouseX, mouseY ) ) {
      stateHandler.changeStateTo( END_SCENE );
    } else if (mugTray.isPointInside( mouseX, mouseY ) ) {
      dialogButton = new TextBox(#FFFFFF, "maybe the fact could be that it's great to use saxion cups just wash them afterwards xd", 10, 915, 25, imgBubbleTeam );
    } else if (sinkButton.isPointInside( mouseX, mouseY ) ) {
      dialogButton = new TextBox(#FFFFFF, "Or did you know saxion has the cheapest coffee in enschede xD", 10, 915, 25, imgBubbleTeam );
    } else if (coffeeMachine.isPointInside( mouseX, mouseY ) ) {
      dialogButton = new TextBox(#FFFFFF, " I found it! Now let's go home i'm thirsty.", 10, 915, 25, imgBubble );
      coffeeCup = new ImageButton( "coffee.png", 950, 750 );
    } else if ( dialogButton != null && dialogButton.isPointInside( mouseX, mouseY ) ) {
      dialogButton = dialogButton.nextDialog;
    }
  }
}
