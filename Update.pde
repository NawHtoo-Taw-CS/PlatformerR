void update(int x, int y) { // Update the position of cursor and see if they're on a button
  if ( overCircle(circleX, circleY, circleSize) ) { // bool function for CircleOver
    circleOver = true;
  } else {
    circleOver = false;}
  
  

}