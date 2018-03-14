void Buttons (){

  textSize(35);
  if (circleOver) { 
    fill(225);
    ellipse(circleX,circleY,circleSize,circleSize);// Next Button
    fill(225);   
  } else {
    fill(255);
    textSize(100);
    fill(100);
    ellipse(circleX,circleY,circleSize,circleSize);
    fill(255);
  }
  }