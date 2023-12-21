int xpos[] = new int[50];
int ypos[] = new int[50];

void setup() {
   size(600,400);
   for(int i = 0; i < xpos.length; i++) {
     xpos[i] = 0;
     ypos[i] = 0; 
   } 
}
void draw() {
  background(255);
  for(int i = 0; i < xpos.length-1; i++) { 
    xpos[i] = xpos[i+1];
    ypos[i] = ypos[i+1];
  }
  xpos[xpos.length-1] = mouseX;
  ypos[xpos.length-1] = mouseY;
  
  for(int i = 0; i < xpos.length-1; i++) {
    noStroke();
    fill(255-i*5,100,100);
    ellipse(xpos[i],ypos[i],i,i);  
  }
}











