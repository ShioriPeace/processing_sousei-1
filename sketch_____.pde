import ddf.minim.*;
Minim minim;
AudioPlayer player;

int x, y;
void setup() {
  //size(400,400);
  minim = new Minim(this);
  player = minim.loadFile("Kimigayo-rio-2016.mp3");
  player.play();
  fullScreen();
  frameRate(50);
  x = 2000;
  y = 2000;

  fill(255, 0, 0);
}

void draw() {
  background(255, 255, 255);
  noStroke();
  if (x >= 500 && y >= 500) {
    x += -10;
    y += -10;
  } else if (x == 500 && y == 500) {
    x = 500;
    y = 500;
  }
  ellipse(displayWidth/2, displayHeight/2, x, y);
}

void keyPressed() {
  if (key == 'b') {
    fill(0, 0, 255);
  } else if (key =='g') {
    fill(0, 255, 0);
  } else {
    fill(255, 0, 0);
  }
}

void stop(){
  player.close();
  minim.stop();
  super.stop();
}
