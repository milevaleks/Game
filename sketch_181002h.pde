void setup(){
  size(700, 600);
  strokeWeight(5);
}

int x = 100;
int y = 150;
int w = 200;
int h = 50;
int r = 50;
int x1 = 400;
int y1 = 350;
int d = 100;
int s = 100;
void draw(){
  boolean isOnButton1 = mousePressed && mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h;
  boolean isOnButton2 = dist(x1, y1, mouseX, mouseY) < r;
 
 
  if((isOnButton1 || isOnButton2)&& mousePressed){
    background(#ffff00);
  }
  
  else{
    background(#ffffff);
  }
  
  fill(#00ff00);
  //float d = dist(x1, y1, mouseX, mouseY);
  //if(d <=r && mousePressed){
   // background(225, 0, 0);
    
  rect(x, y, w, h);
  ellipse(x1, y1, d, s);
}
