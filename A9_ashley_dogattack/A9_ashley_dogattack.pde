// Ashley Wong ac22wong

import processing.sound.*;
SoundFile sound;

PImage imgGrass;
PImage imgSidewalk;
PImage imgMan;
PImage imgBall;
PImage imgDog;
PImage imgGameover;
PImage imgText;
PImage imgStarter;

// dog position arrays
float[] x = new float[5];
float[] y = new float[5];

// dog positions and speed
float spacing = height / float(7);
float speed;

// dog sizes
float sizeW = 170;
float sizeH = 165;

// man position
float manX = 60;
float manY;

//score counter
int score;

boolean starter = true;

void setup() {
  //music
  sound = new SoundFile(this, "bark.mp3");
  sound.play();
  sound.loop();

  size(1000, 750);
  imgGrass = loadImage("Grass.jpg");
  imgSidewalk = loadImage("Sidewalk.png");  
  imgMan = loadImage("Man.png");
  imgBall = loadImage("Ball.png");
  imgDog = loadImage("Dog.png");
  imgGameover = loadImage("Gameover.png");
  imgText = loadImage("Text.png");
  imgStarter = loadImage("Starter.png");
}

// hitTest format from spaceinvaders
boolean hitTest(float x, float y, 
  float rx, float ry, float rw, float rh) {
  if (x >= rx && x <= rx + rw && 
    y >= ry && y <= ry + rh) {
    return true;
  } else {
    return false;
  }
}

void draw() {  

  // background images
  image(imgGrass, 0, 120, width, height); // draw grass img
  image(imgSidewalk, -34, 82, 635, height); // draw sidewalk img

  //blue box at top
  stroke(64);
  strokeWeight(2);
  fill(221, 241, 250);
  rect(-4, -4, 1005, 125); 

  // header
  float shake = random(-2, 2); // jiggle header
  image(imgText, shake, 0, width, height); // draw header img
  // score counter
  fill(0);
  textSize(43);
  text(score, 830 + shake, 68);

  // man
  manY = mouseY;
  // when mouseY is at top of canvas, man is small &
  // wen mouseY is at bottom of canvas, man grows in size
  float manSize = map(mouseY, 0, height, 100, 400);
  image(imgMan, manX, manY, manSize, manSize); // draw man img

  // call to draw dogs and tennis balls 
  dogs();
  ball();

  for (int i = 0; i < 5; i++) {
    // if the ball hits the dogs, then then 1 is added
    // to the score and the ball resets to start
    if (hitTest(ballX, ballY, 
      x[i] - sizeW / 2, y[i] - sizeH / 2, 
      sizeW, sizeH)) {
      x[i] = 1050;
      score += 1;
      ballThrown = false;
    }
    // if dogs pass man, game is over
    if (x[i] < manSize || x[i] < 60) {
      gameOver();
    }
  }

  //instructions starter
  if (starter) {
    image(imgStarter, 0, 0, width, height); // draw instructions img
  }
}

void keyPressed() {
  // if space is pressed, game restarts
  // or starter is false and does not appear
  if (key == ' ') { 
    restart();
    starter = false;
    println("space") ;
  }
}

void mousePressed() {
  // if mouse is pressed, ball is thrown
  throwBall(manX + 180);
  println("click");
}