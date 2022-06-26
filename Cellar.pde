

class CellarScene extends Scene
{
  ImageButton   beerTap = new ImageButton( "beerTap.png", 85, 410 );
  ImageButton storageBottle = new ImageButton( "storageBottle.png", 1067, 427 );
  ImageButton beerBucket = new ImageButton( "beerBucket.png", 930, 655 );
  ImageButton beerSmaller;
  TextBox dialogButton;

  CellarScene() {
    super( "cellar.png" );
  }


  public void doStepWhileInState()
  {
    super.doStepWhileInState();
    beerTap.display();
    storageBottle.display();
    beerBucket.display();
    if (beerSmaller!=null) {
      beerSmaller.display();
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
        } else if ( beerSmaller !=null && beerSmaller.isPointInside( mouseX, mouseY ) ) {
            stateHandler.changeStateTo( CASTLE_SCENE );
        } else 
        if ( beerTap.isPointInside( mouseX, mouseY ) ) {
            //stateHandler.changeStateTo( CASTLE_SCENE );
            dialogButton = new TextBox(#FFFFFF, "Want a glass of beer that badly huh? If you lovebeer, thank a monk. Monks have been producing beer for 1500 years.", 10, 915, 25, imgBubble );
        } else if ( storageBottle.isPointInside( mouseX, mouseY ) ) {
            dialogButton = new TextBox(#FFFFFF, "While you’re here better not drink any water. The beer is safer and cleaner to drink in medieval times than water. ", 10, 915, 25, imgBubble );
        } else if ( beerBucket.isPointInside( mouseX, mouseY ) ) {
            beerSmaller = new ImageButton( "beerSmaller.png", 950, 750 );
            dialogButton = new TextBox(#FFFFFF, "Found it! I’m kinda thirsty but I need it for fuel.", 10, 915, 25, imgBubble);
        }
    }
}
