// ============ VARIABLES ============
import processing.video.*;
Movie introVideo;
//Movie myMovie;
import processing.sound.*;
SoundFile castleMusic;
SoundFile monasteryMusic;
SoundFile saxionMusic;

boolean isAppleTaken = false;
PFont robotoFont;
PImage imgBubble;
PImage imgBubbleTeam;
PImage imgBubbleRuben;
int vidX=0;


// ============ STATE HANDLER AND STATES ============
StateHandler stateHandler;

final State END_SCENE = new EndScene();
final State  MONASTERY_SCENE = new Monastery();
final State   CELLAR_SCENE = new CellarScene();
final State  CASTLE_SCENE = new  CastleScene();
final State CASTLEROOM_SCENE = new CastleRoomScene();
final State SAXION_SCENE = new SaxionScene();
final State COFFEE_SCENE = new CoffeeScene();



void setup() {
  size( 1920, 1080 );
  noStroke();
  robotoFont = createFont( "Roboto-Bold.ttf", 200);
  imgBubble = loadImage( "speechBubble.png" );
  imgBubbleTeam = loadImage("speechBubbleTeam.png");
  imgBubbleRuben = loadImage("speechBubbleRubenBig.png");

  introVideo = new Movie(this, "animationIntro.mp4");

  castleMusic = new SoundFile(this, "castleMusic.wav");
  monasteryMusic = new SoundFile(this, "monasteryMusic.wav");
  saxionMusic = new SoundFile(this, "saxionMusic.wav");

  stateHandler = new StateHandler( "Dizzy Adventure" );
  stateHandler.changeStateTo( MONASTERY_SCENE );
  //stateHandler.changeStateTo( SAXION_SCENE );


  introVideo.play();
  //myMovie = new Movie(this, "animationIntro.mov");
  //myMovie.play();
}


void draw() {
  stateHandler.executeCurrentStateStep();
  image (introVideo, vidX, 0);
  introVideo.noLoop();
  if (!introVideo.isPlaying()) {
    vidX = 4000;
    introVideo.stop();
  }
}

//image(myMovie, 0, 0);


//============= MOVIE PLAYER ==============

void movieEvent(Movie introVideo) {
  introVideo.read();
}

// ============ EVENT HANDLERS ============

// only put stuff in here that is valid for all states
// otherwise use the handleKeyPressed in the state itself

void keyPressed() { 
  stateHandler.handleKeyPressed();
}
void keyReleased() { 
  stateHandler.handleKeyReleased();
}
void keyTyped() { 
  stateHandler.handleKeyTyped();
}

void mousePressed() { 
  stateHandler.handleMousePressed();
}
void mouseClicked() { 
  stateHandler.handleMouseClicked();
}
void mouseReleased() { 
  stateHandler.handleMouseReleased();
}
//void mouseDragged()  { stateHandler.handleMouseDragged();  }
void mouseMoved() { 
  stateHandler.handleMouseMoved();
}



//void mouseWheel(MouseEvent event) { stateHandler.handleMouseWheel( event ); }
