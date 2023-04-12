import java.util.*;

// lists to store the positions of the lines for each quadrant
ArrayList<Integer> q1 = new ArrayList<Integer>();
ArrayList<Integer> q2 = new ArrayList<Integer>();
ArrayList<Integer> q3 = new ArrayList<Integer>();
ArrayList<Integer> q4 = new ArrayList<Integer>();
ArrayList<Integer> q1Reversed = new ArrayList<Integer>();
ArrayList<Integer> q2Reversed = new ArrayList<Integer>();
ArrayList<Integer> q3Reversed = new ArrayList<Integer>();
ArrayList<Integer> q4Reversed = new ArrayList<Integer>();

// function to fill the lists for each quadrant
ArrayList<Integer> listFilling (int start, int end, int step) {
  ArrayList<Integer> list = new ArrayList<Integer>();
  for (int i = start; i <= end; i += step) {
    list.add(i);
  }
  return list;
}

int w, h;
float delta, gamma;
int randomlimit = 25;

void setup(){
  frameRate(10);
  background(0);
  size(700, 700);
  stroke(255);
  
  w = width/2;
  h = height/2;
  
  // variables to make the lines rotate
  delta = 0.0;
  gamma = w;
  
  // fill the lists with the values
  q1 = listFilling(0, w, 10);
  q2 = listFilling(w, width, 10);
  q3 = listFilling(h, height, 10);
  q4 = listFilling(w, height, 10);
  
  // fill the reversed lists with the values
  q1Reversed = listFilling(0, w, 10);
  q2Reversed = listFilling(w, width, 10);
  q3Reversed = listFilling(h, height, 10);
  q4Reversed = listFilling(w, height, 10);
  
  // reverse the lists that are called reversed
  Collections.reverse(q1Reversed);
  Collections.reverse(q2Reversed);
  Collections.reverse(q3Reversed);
  Collections.reverse(q4Reversed);
  
}


void draw(){
  background(0);
  
  // create the lines for each quadrant rotating first to the right
  if(delta <= w){
    
    // Quadrant 1
      for(int i = 0; i < q1.size(); i++){
          line(0.0, q1.get(i)+delta+random(5, randomlimit), q1.get(i)+delta+random(5, randomlimit), w);
          line(q1.get(i)+delta+random(5, randomlimit), h, h, q1Reversed.get(i)-delta+random(5, randomlimit));
          line(w, q1Reversed.get(i)-delta+random(5, randomlimit), q1Reversed.get(i)-delta+random(5, randomlimit), 0.0);
          line(q1.get(i)+random(5, randomlimit), 0.0, 0.0, q1Reversed.get(i)+delta+random(5, randomlimit));
       }
      
       for(int i = 0; i < q1.size(); i++){
          line(q1Reversed.get(i)-delta+random(5, randomlimit), 0.0, 0.0,q1.get(i)+delta+random(5, randomlimit));
          line(w, q1.get(i)-delta+random(5, randomlimit), q1.get(i)-delta+random(5, randomlimit), 0.0);
          line(q1Reversed.get(i)+delta+random(5, randomlimit), h, h, q1.get(i)-delta+random(5, randomlimit));
          line(0.0, q1Reversed.get(i)+delta+random(5, randomlimit), q1Reversed.get(i)+delta+random(5, randomlimit), w);
      }
    
     // Quadrant 2
      for(int i = 0; i < q2.size(); i++){
        line(w, q1.get(i)+delta+random(5, randomlimit), q2.get(i)+delta+random(5, randomlimit), w);
        line(q2.get(i), w, width, q1Reversed.get(i)-delta+random(5, randomlimit));
        line(width, q1Reversed.get(i)-delta+random(5, randomlimit), q2Reversed.get(i)-delta+random(5, randomlimit), 0.0);
        line(q2Reversed.get(i)+random(5, randomlimit), 0, h, q1.get(i)+ delta+random(5, randomlimit));
      }
      
      for(int i = 0; i < q1.size(); i++){
         line(q2.get(i)-delta+random(5, randomlimit), 0.0, h, q1Reversed.get(i)+delta+random(5, randomlimit));
         line(w, q1.get(i)-delta+random(5, randomlimit), q2.get(i)-delta+random(5, randomlimit), 0.0);
         line(q2Reversed.get(i)+delta+random(5, randomlimit), h, h, q1.get(i)-delta+random(5, randomlimit));
         line(w, q1Reversed.get(i)+delta+random(5, randomlimit), q2Reversed.get(i)+delta+random(5, randomlimit), w);
      }
     
     // Quadrant 3
       for(int i = 0; i < q1.size(); i++){
          line(0, q2.get(i)+delta+random(5, randomlimit), q1.get(i)+delta+random(5, randomlimit), height); 
          line(q1.get(i), height, w, q2Reversed.get(i)-delta+random(5, randomlimit)); 
          line(h, q2Reversed.get(i)-delta+random(5, randomlimit), q1Reversed.get(i)-delta+random(5, randomlimit), w); 
          line(q1Reversed.get(i)-delta+random(5, randomlimit), h, 0, q2.get(i)+delta+random(5, randomlimit));  
      }
      
      for(int i = 0; i < q1.size(); i++){
          line(q1.get(i)-delta+random(5, randomlimit), h, 0, q2Reversed.get(i)+delta+random(5, randomlimit));
          line(h, q2.get(i)-delta+random(5, randomlimit), q1.get(i)-delta+random(5, randomlimit), w); 
          line(q1Reversed.get(i), height, w, q2.get(i)-delta+random(5, randomlimit)); 
          line(0, q2Reversed.get(i)+delta+random(5, randomlimit), q1Reversed.get(i)+delta+random(5, randomlimit), height); 
      }
      
     
     // Quadrant 4
     for(int i = 0; i < q4.size(); i++){
        line(w, q4.get(i)+delta+random(5, randomlimit), q4.get(i)+delta+random(5, randomlimit), height);
        line(q4.get(i)+delta+random(5, randomlimit), height, height, q4Reversed.get(i)-delta+random(5, randomlimit));
        line(height, q4Reversed.get(i)-delta+random(5, randomlimit), q4Reversed.get(i)-delta+random(5, randomlimit), w);
        line(q4.get(i)-delta+random(5, randomlimit), w, w, q4Reversed.get(i)+delta+random(5, randomlimit));
      }
      
      for(int i = 0; i < q4.size(); i++){
        line(q4Reversed.get(i)-delta+random(5, randomlimit), w, w, q4.get(i)+delta+random(5, randomlimit));
        line(height, q4.get(i)-delta+random(5, randomlimit), q4.get(i)-delta+random(5, randomlimit), w);
        line(q4Reversed.get(i)+delta+random(5, randomlimit), height, height, q4.get(i)-delta+random(5, randomlimit));
        line(w, q4Reversed.get(i)+delta+random(5, randomlimit), q4Reversed.get(i)+delta+random(5, randomlimit), height);
      }
      
    // increase the variable to rotate to the right
    delta += 10;
  }
  else{
    
    // Quadrant 1
       for(int i = 0; i < q1.size(); i++){
          stroke(random(255), random(255), random(255));
          line(0.0, q1.get(i)+gamma+random(5, randomlimit), q1.get(i)+gamma+random(5, randomlimit), w);
          line(q1.get(i)+gamma+random(5, randomlimit), h, h, q1Reversed.get(i)-gamma+random(5, randomlimit));
          line(w, q1Reversed.get(i)-gamma+random(5, randomlimit), q1Reversed.get(i)-gamma+random(5, randomlimit), 0.0);
          line(q1.get(i)-gamma+random(5, randomlimit), 0.0, 0.0,q1Reversed.get(i)+gamma+random(5, randomlimit));
      }
      
      for(int i = 0; i < q1.size(); i++){
          stroke(random(255), random(255), random(255));
          line(q1Reversed.get(i)-gamma+random(5, randomlimit), 0.0, 0.0, q1.get(i)+gamma+random(5, randomlimit));
          line(w, q1.get(i)-gamma+random(5, randomlimit), q1.get(i)-gamma+random(5, randomlimit), 0.0);
          line(q1Reversed.get(i)+gamma+random(5, randomlimit), h, h, q1.get(i)-gamma+random(5, randomlimit));
          line(0.0, q1Reversed.get(i)+gamma+random(5, randomlimit), q1Reversed.get(i)+gamma+random(5, randomlimit), w);
      }
      
      stroke(random(255), random(255), random(255));
    // Quadrant 2
      for(int i = 0; i < q2.size(); i++){
        line(w, q1.get(i)+gamma+random(5, randomlimit), q2.get(i)+delta+random(5, randomlimit), w);
        line(q2.get(i), w, width, q1Reversed.get(i)-gamma+random(5, randomlimit));
        line(width, q1Reversed.get(i)-delta+random(5, randomlimit), q2Reversed.get(i)-gamma+random(5, randomlimit), 0.0);
        line(q2Reversed.get(i), 0, h, q1.get(i)+ gamma+random(5, randomlimit));
      }
      
      for(int i = 0; i < q1.size(); i++){
         line(q2.get(i)-gamma+random(5, randomlimit), 0.0, 0.0, q1Reversed.get(i)+gamma+random(5, randomlimit));
         line(w, q1.get(i)-gamma+random(5, randomlimit), q2.get(i)-delta+random(5, randomlimit), 0.0);
         line(q2Reversed.get(i)+gamma+random(5, randomlimit), h, h, q1.get(i)-gamma+random(5, randomlimit));
         line(w, q1Reversed.get(i)+gamma+random(5, randomlimit), q2Reversed.get(i)+gamma+random(5, randomlimit), w);
      }
      
     // Quadrant 3
     for(int i = 0; i < q1.size(); i++){
          line(0, q2.get(i)+gamma+random(5, randomlimit), q1.get(i)+gamma+random(5, randomlimit), height); 
          line(q1.get(i), height, w, q2Reversed.get(i)-gamma+random(5, randomlimit)); 
          line(h, q2Reversed.get(i)-gamma+random(5, randomlimit), q1Reversed.get(i)-gamma+random(5, randomlimit), w); 
          line(q1Reversed.get(i)-gamma+random(5, randomlimit), h, 0, q2.get(i)+gamma+random(5, randomlimit));  
      }
      
      for(int i = 0; i < q1.size(); i++){
          line(q1.get(i)-gamma+random(5, randomlimit), h, 0, q2Reversed.get(i)+gamma+random(5, randomlimit));
          line(h, q2.get(i)-gamma+random(5, randomlimit), q1.get(i)-gamma+random(5, randomlimit), w); 
          line(q1Reversed.get(i), height, w, q2.get(i)-gamma+random(5, randomlimit)); 
          line(0, q2Reversed.get(i)+gamma+random(5, randomlimit), q1Reversed.get(i)+gamma+random(5, randomlimit), height); 
      }
      
      
      // Quadrant 4
     for(int i = 0; i < q4.size(); i++){
        stroke(random(255), random(255), random(255));
        line(w, q4.get(i)+gamma+random(5, randomlimit), q4.get(i)+gamma+random(5, randomlimit), height);
        line(q4.get(i)+gamma+random(5, randomlimit), height, height, q4Reversed.get(i)-gamma+random(5, randomlimit));
        line(height, q4Reversed.get(i)-gamma+random(5, randomlimit), q4Reversed.get(i)-gamma+random(5, randomlimit), w);
        line(q4.get(i)-gamma+random(5, randomlimit), w, w, q4Reversed.get(i)+gamma+random(5, randomlimit));
      }
      
      for(int i = 0; i < q4.size(); i++){
        stroke(random(255), random(255), random(255));
        line(q4Reversed.get(i)-gamma+random(5, randomlimit), w, w, q4.get(i)+gamma+random(5, randomlimit));
        line(height, q4.get(i)-gamma+random(5, randomlimit), q4.get(i)-gamma+random(5, randomlimit), w);
        line(q4Reversed.get(i)+gamma+random(5, randomlimit), height, height, q4.get(i)-gamma+random(5, randomlimit));
        line(w, q4Reversed.get(i)+gamma+random(5, randomlimit), q4Reversed.get(i)+gamma+random(5, randomlimit), height);
      }
   
    // decrease the variable to rotate to the left
    gamma -= 10;;
  } 
  
  // restart both variables when they reach the limit of rotation
  if (gamma <= -w){
    delta = 0;
  }
  if (delta == 0) {
    gamma = w;
  }
}
