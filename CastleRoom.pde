

class CastleRoomScene extends Scene
{
  ImageButton   chairButton = new ImageButton( "castleChair.png", 1466, 706 );
  ImageButton fireplaceButton = new ImageButton( "fireplace.png", 928, 480 );
  ImageButton lampButton = new ImageButton( "lamp.png", 1215, 360 );
  ImageButton wineBottle;
  TextBox dialogButton;

  CastleRoomScene() {
    super( "castleRoom.png" );
  }

  public void doStepWhileInState()
  {
    super.doStepWhileInState();
    chairButton.display();
    fireplaceButton.display();
    lampButton.display();
    if (wineBottle!=null) {
      wineBottle.display();
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
    } else if ( wineBottle !=null && wineBottle.isPointInside( mouseX, mouseY ) ) {
      stateHandler.changeStateTo( SAXION_SCENE );
    } else 
    if ( chairButton.isPointInside( mouseX, mouseY ) ) {
      //stateHandler.changeStateTo( CASTLE_SCENE );
      dialogButton = new TextBox(#FFFFFF, "Hmm seems like someone spilled some wine, it must be close. Did you know coca cola was inspired by a wine called Vin Tonique Mariani which contained coca leaves.", 10, 915, 25, imgBubble);
    } else if ( fireplaceButton.isPointInside( mouseX, mouseY ) ) {
      dialogButton = new TextBox(#FFFFFF, "There is some broken glass here. Wine glasses used to be way smaller, almost like a shot glass, looking at these shards this isn’t one of them.  ", 10, 915, 25, imgBubble );
    } else if ( lampButton.isPointInside( mouseX, mouseY ) ) {
      wineBottle = new ImageButton( "wineSmaller.png", 1400, 600 );
      dialogButton = new TextBox(#FFFFFF, "Found It! Someone must have had a rough day. It's half empty, but should still be enough to get to the next time zone. ", 10, 915, 25, imgBubble );
    }
  }
}
