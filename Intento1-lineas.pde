void setup(){
  background(0);
  size(400, 400);
  stroke(255);
  
}
int step_x = 0;
int step_y = 0;
int side = 0;
void draw() {
  if (side == 0 ) {
    if(step_x < width){
      for (int i = 0; i < width; i+=10){
        line(0, step_y, step_x, width);
        step_x +=10;
        step_y +=10;
      }
    }else {
      step_x = 0;
      step_y = height;
      side ++;
    }
  } 
    
  if (side == 1){
    if (step_x <= width){
      line(step_x, height, height, step_y);
      step_x += 10;
      step_y -= 10;
    } else {
      step_x = width;
      step_y = height;
      side ++;
    }  
  } 
  
  if (side == 2){
    if (step_x <= width & step_x >= 0){
      line(width, step_y, step_x, 0);
      step_x -= 10;
      step_y -= 10;
    } else {
      step_x = width;
      step_y = 0;
      side ++;
    }  
  } 
  if (side == 3){
    if (step_x <= width){
      line(step_x, 0, 0, step_y);
      step_x -= 10;
      step_y += 10;
    }
  } 
}
