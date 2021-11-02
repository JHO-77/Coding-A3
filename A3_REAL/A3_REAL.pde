//A3 for coding 

//gives movement coordinates for Swimmer 
float x;
float y;
float easing = 0.05; 

//gives coordinates for elipsis
int X = 50; 
int Y = 100; 

//imports sound
import processing.sound.*; 

SoundFile music;

//imported font 
PFont font1;

void setup() 
{
  size(1000, 500); //sets size of artwork frame
  smooth ();
  noStroke();  
  music = new SoundFile(this, "desktop/Wavesreal.wav"); //imports sound
  music.play(); //plays sound on loop
  font1 = loadFont("Galvji-BoldOblique-48.vlw"); //imports font
}

void draw() { 
  background(#08CBFA); //colour bright blue
  fill(#F2FFFE);
  textFont(font1, 24);
  textSize(50);
  text("Summer Time!", 300, 45); //Text
 
 //commands for swimmer to follow mouse movements
  float targetX = mouseX; 
  float dx = targetX - x;
  x += dx * easing;
  
  float targetY = mouseY;
  float dy = targetY - y;
  y += dy * easing;
  
  //insert image of swimmer
   PImage img; 
img = loadImage("images.png");
img.resize(100,0);//resized image to make it smaller 
image(img, x, y, 100, 75); // image 'x' and 'y' commands code to follow mouse 

//Sand
fill (#EAC42B); //colour light yellow/sand
rect (0, 400, 1000, 150); //start point (how many pixels over/down), width, height 

//Flags on beach
fill (#FF0000); //colour red
triangle (100, 400, 200, 400, 150, 200); //triangles for flags 

//Flags on beach
fill (#FF0000); //colour red
triangle (800, 400, 900, 400, 850, 200);//triangles fro flags 

//Sun
fill (#E1FF08); // yellow colour 
ellipse(X, Y, 100, 100); //cricle (sun) 
}

//commands for sun movement 
void keyPressed() { //commands for key commanded movements
  if (key == CODED) {
    if (keyCode == LEFT) {
     X = X -20;
    } else if (keyCode == RIGHT) {
      X = X +20;
   
  }
}

}
