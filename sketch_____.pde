int x,y;
void setup(){
  fullScreen();
  frameRate(50);
  x = 2000;
  y = 2000;
}

void draw(){
  background(255,255,255);
  noStroke();
  fill(255,0,0);
  ellipse(displayWidth/2,displayHeight/2,x,y);
  
  if (x >= 500 && y >= 500){
    x += -10;
    y += -10;
  }
  else if(x == 500 && y == 500){
    x = 500;
    y = 500;
    
  }

}

void keyPressed(){
  
  
}
