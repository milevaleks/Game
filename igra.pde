float xr = 0;

float yr = 0;

float wr = 30;

float hrup = 100;

float hrdown = 100;

float xspeed = 5;

float birdX = 100;

float birdY = 100;

float birdW = 30;

float birdH = 30;

PImage bird;


void setup(){

    size(600,600);

    bird = loadImage("meme.png");

    xr = width;

}



void draw(){

  background(255,0,255);
  if(keyPressed && key == 'd'){
    background(0,255,0);
  }
  if(keyPressed && key == 'e'){
    background(255,0,0);
  }
      if(keyPressed && key == ' '){
    background(0,0,255);
  }
  if(keyPressed && key == 'a'){
    background(255,255,255);
  }

  if(xr < -wr){

      xr = width;

      hrup = random(200,280);

      hrdown = random(200,280);

  }

if(keyPressed && key == ' '){

  birdY--;

} 
  else{

  birdY++;

}
if(keyPressed && key == 'd'){
  
  xspeed = 10;
 
}
if(keyPressed && key == 'a'){
  
  xspeed = 2;
  
}
 

  image(bird,birdX,birdY,birdW,birdH);

  rect(xr,yr,wr,hrup);
fill(random(0,255), random(0,255), random(0,255));
  rect(xr,height - hrdown,wr,hrdown);

  //rect(birdX,birdY,birdW,birdH);

  xr-= xspeed;

  xr -= xspeed;

  

}
