int circleX = 250, circleY = 250;  // Position of circle button
int circleSize = 200;   // Diameter of circle Button
boolean circleOver = false;



boolean play = false;
boolean help = false;

boolean spacePressed = false;

boolean canUp = true;
boolean canDown = true;
boolean canLeft = true;
boolean canRight = true;
 
//keyPress check
boolean allowKeyPress = true;
boolean upPressed = false;
boolean downPressed = false;
boolean leftPressed = false;
boolean rightPressed = false;
 
//variables
float currX = 50;
float currY = 325;
float radius = 15;
float speedY = 0.5;
float speedX = 4;
 
//jump variables
float xJumpSpeed = 4.5;
float yJumpSpeed = 1;
float jumpHeight = radius*12;
float gravity = .7;
float airY = 0;
boolean notJump = true;
 
//floor minY/maxY, minX/maxX
float maxUp = 225-radius;
float maxDown = 250-radius;
float maxRight = 1000-radius;
float maxLeft = 0+radius;
 
float floorY = currY - 210;










void setup() {
size (500,500);
background(#57C0D3);
fill(#7FE1FF);

}

void draw() {
  
  update(mouseX,mouseY);
{Buttons();};
  
  textSize(100);
  fill(255);
  text("Play", width*0.31/1, height*2.8/5);

  
  if (play) {
    rect(width*0/1,height*0/1, width*1/1, height*1/1); //ERASER
    fill(0);
    
    ellipseMode(CENTER);
  ellipseMode(RADIUS);
  jump();
  
  drawFloor();
  fill(#F08A24);
  if (notJump) {
    ellipse(currX, currY, radius, radius);
  }
  else {
    ellipse(currX, airY, radius, radius);
  }
  }
    
}
  
  boolean overCircle(int x, int y, int diameter) { 
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}