int numDots = 0;

void setup(){
  size(500,500);
  noLoop();
  background(0,0,0);
}

void draw(){ // calling class
  fill(0);
  rect(20, 435, 80, 20);
  
  int sum = 0;
  for (int y = 15; y < 400; y += 60){
    for (int x = 15; x < 490; x += 60){
      Die dieA = new Die(x,y);
      dieA.roll();
      dieA.show();
      sum += dieA.myRoll;
    }
  } // display total dots
  
  fill(255);
  text("Total: ", 20, 450); // total text
  text(sum, 50, 450); // number of dots text
} 

void mousePressed(){
  redraw();
}

class Die{ //models one single dice cube
  //member variable declarations here
  int myX, myY, myRoll;

  Die(int x, int y){ //constructor
    myX = x;
    myY = y;
    myRoll = 0;
  }

  void roll(){
    myRoll = (int)((Math.random() * 6) + 1);
  }

  void show(){
    noStroke();
    fill(150, (int)(Math.random() * 100) + 150, (int)(Math.random() * 100) + 150);
    rect(myX, myY, 50, 50);
    fill(0); // (50, 150) change to x & y
  
    if (myRoll == 1){ // 1 dot
      ellipse(myX + 25, myY + 25, 10, 10);
    } else if (myRoll == 2){ // 2 dots
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
    } else if (myRoll == 3){ // 3 dots
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
    } else if (myRoll == 4){  // 4 dots
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
      ellipse(myX + 35, myY + 15, 10, 10);
      ellipse(myX + 15, myY + 35, 10, 10);
    } else if (myRoll == 5){  // 5 dots
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
      ellipse(myX + 35, myY + 15, 10, 10);
      ellipse(myX + 15, myY + 35, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
    } else {  // 6 dots
      ellipse(myX + 15, myY + 10, 10, 10);
      ellipse(myX + 15, myY + 25, 10, 10);
      ellipse(myX + 15, myY + 40, 10, 10);
      ellipse(myX + 35, myY + 10, 10, 10);
      ellipse(myX + 35, myY + 25, 10, 10);
      ellipse(myX + 35, myY + 40, 10, 10);
    }
  }
}
