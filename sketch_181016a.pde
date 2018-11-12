PImage speedometer;

float x0;

float y0;

float len = 200;



void setup(){

  size(600, 600);

  x0 = width/2;

  y0 = height/2;

  speedometer = loadImage("kilo2.png");

}





void draw(){

  image(speedometer, 0, 0, width, height);

  stroke(#FF0000);

  strokeWeight(3);

  float angle = radians(86);

  float x1 = len * cos(angle) + x0;

  float y1 = len * sin(angle) + y0;

  line(x0, y0, x1, y1);

  println("X" + mouseX + " Y "+ mouseY); 
}
