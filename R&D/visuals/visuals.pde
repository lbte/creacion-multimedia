void setup() {
  size(600, 600);
  background(0);
}

// ----------------------------------------------------------------------------------
// ---------------------------------VARIABLES----------------------------------------
// ----------------------------------------------------------------------------------

  
// ---------------------------------SQUARE----------------------------------------
// for the speed of movement of the circles
float squareVariateX = 3.5*2;
float squareVariateY = 3.5*2;

int squareWidth = 200;
int squareWidthCounter = 0;
//int squarepos = 0;
int squarepos = 200;
int squareOpacity = 150;
int squareCircleX = squarepos;
int squareCircleY = squarepos;
// ---------------------------------SQUARE----------------------------------------

// ---------------------------------TRIANGLE--------------------------------------

int triangleSideLength = 150;

// ---------------------------------TRIANGLE--------------------------------------



int circleWidth = 15;
// ----------------------------------------------------------------------------------
// ---------------------------------VARIABLES----------------------------------------
// ----------------------------------------------------------------------------------


void draw() {
  background(0);
  strokeWeight(2.5);
  noFill();
  
// ---------------------------------SQUARE----------------------------------------
  // square properties and creation
  stroke(250, 110, 100, squareOpacity);
  /*translate(width/2, height/3.5);
  pushMatrix();
  rotate(radians(45));
  rect(squarepos, squarepos, squareWidth, squareWidth);
  popMatrix();*/
  // increase square counter according to the variation
  rect(squarepos, squarepos, squareWidth, squareWidth);
  squareWidthCounter+=squareVariateX;
  
  // circle creation for the square
  fill(250, 110, 100);
  if (squareWidthCounter <= squareWidth){
    squareCircleX += squareVariateX;
    circle(squareCircleX, squareCircleY, circleWidth);
    // change opacity of the square when the circle reaches the corners
    if (squareCircleX == squarepos+squareWidth){
      squareOpacity = 300;
    } else {
      squareOpacity = 150;
    }
  } else if (squareWidthCounter > squareWidth & squareWidthCounter <= squareWidth*2){
    squareCircleX = squarepos + squareWidth;
    squareCircleY += squareVariateY;
    circle(squareCircleX, squareCircleY, circleWidth);
    // change opacity of the square when the circle reaches the corners
    if (squareCircleY == squarepos+squareWidth){
      squareOpacity = 300;
    } else {
      squareOpacity = 150;
    }
  } else if (squareWidth*2 < squareWidthCounter & squareWidthCounter <= squareWidth*3){
    squareCircleY = squarepos + squareWidth;
    squareCircleX -= squareVariateX;
    circle(squareCircleX, squareCircleY, circleWidth);
    // change opacity of the square when the circle reaches the corners
    if (squareCircleX == squarepos){
      squareOpacity = 300;
    } else {
      squareOpacity = 150;
    }
  } else if (squareWidth*3 < squareWidthCounter & squareWidthCounter <= squareWidth*4){
    squareCircleX = squarepos;
    squareCircleY -= squareVariateY;
    circle(squareCircleX, squareCircleY, circleWidth);
    // change opacity of the square when the circle reaches the corners
    if (squareCircleY == squarepos){
      squareOpacity = 300;
    } else {
      squareOpacity = 150;
    }
  } else {
    squareWidthCounter = 0;
    squareCircleX = squarepos;
    squareCircleY = squarepos;
  }
// ---------------------------------SQUARE----------------------------------------

// ----------------------------------------------------------------------------------

// ---------------------------------TRIANGLE--------------------------------------
  /*beginShape();
  vertex();
  vertex();
  vertex();
  endShape();*/
// ---------------------------------TRIANGLE--------------------------------------
}
