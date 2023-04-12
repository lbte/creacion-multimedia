void setup() {
  size(600, 600);
  background(0);
}

// ----------------------------------------------------------------------------------
// ---------------------------------VARIABLES----------------------------------------
// ----------------------------------------------------------------------------------

  
// ---------------------------------SQUARE----------------------------------------
// for the speed of movement of the circle
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
// distance between two points
float triangleSideLength = sqrt(pow((400-190),2)+pow((200-190),2));

int triangleOpacity = 150;
int triangleVertex1 = 190;
int triangleVertex2 = 270;
int triangleVertex3 = 400;
int triangleVertex4 = 200;
int triangleVertex5 = 330;
int triangleVertex6 = 410;
int triangleCircleX = triangleVertex1;
int triangleCircleY = triangleVertex2;

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
  stroke(255, 87, 20, squareOpacity);
  /*translate(width/2, height/3.5);
  pushMatrix();
  rotate(radians(45));
  rect(squarepos, squarepos, squareWidth, squareWidth);
  popMatrix();*/
  // increase square counter according to the variation
  rect(squarepos, squarepos, squareWidth, squareWidth);
  squareWidthCounter+=squareVariateX;
  
  // circle creation for the square
  fill(255, 87, 20);
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
  noFill();
  // creation of triangle
  stroke(110, 235, 131, triangleOpacity);
  beginShape();
    vertex(triangleVertex1, triangleVertex2);
    vertex(triangleVertex3, triangleVertex4);
    vertex(triangleVertex5, triangleVertex6);
  endShape(CLOSE);
  
  
  // circle creation for the triangle side 1
  fill(110, 235, 131);
  if ((triangleCircleX != triangleVertex3+1) && (triangleCircleY != triangleVertex4+1)) {
    float m1 = (triangleVertex3-triangleVertex1)/(triangleVertex4-triangleVertex2);
    triangleCircleX += -m1;
    triangleCircleY += -1;
    circle(triangleCircleX, triangleCircleY, circleWidth);
    if (triangleCircleX > triangleVertex3 && triangleCircleY < triangleVertex4){
        triangleCircleX = triangleVertex3;
        triangleCircleY = triangleVertex4;
        triangleOpacity = 300;
      } else {
        triangleOpacity = 150;
      }
  } else if ((triangleCircleX != triangleVertex5+1) && (triangleCircleY != triangleVertex6+1)) {
    float m2 = (triangleVertex5-triangleVertex3)/(triangleVertex6-triangleVertex4);
    triangleCircleX += m2;
    triangleCircleY += -1;
    circle(triangleCircleX, triangleCircleY, circleWidth);
  }
  
// ---------------------------------TRIANGLE--------------------------------------





// ----------------------------------------------------------------------------------

// ---------------------------------HEXAGON--------------------------------------
//color: 228, 255, 26

// ---------------------------------HEXAGON--------------------------------------







// ----------------------------------------------------------------------------------

// ---------------------------------DODECAGON--------------------------------------
// color: 27, 231, 255

// ---------------------------------DODECAGON--------------------------------------
}
