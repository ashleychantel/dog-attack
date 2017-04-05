// ball positions
float ballX;
float ballY;

// ball animation speed
float ballSpeed = 25;

// ball initialized as not thrown
boolean ballThrown = false;

// ball throwing animation
// startX parameter defines where the ball is thrown from
void throwBall(float startX) {

  // if ball isn't thrown, x position is maintained at manX
  // and y position follows mouse 
  if (!ballThrown) {
    ballX = startX;
    ballY = mouseY + 50;
    ballThrown = true;
  }
}

// creating the ball 
void ball() {

  // if ball is thrown, ball is drawn and animates by
  // adding the ballSpeed, making it advance to the right
  if (ballThrown) {
    ballX += ballSpeed;
    drawBall();
  }
}

// ball is drawn
void drawBall() {
  // when mouseY is at top of canvas, ball is small &
  // when mouseY is at bottom of canvas, ball grows in size
  float ballSize = map(ballY, 0, height, 20, 70);
  image (imgBall, ballX, ballY, ballSize, ballSize); // draw ball img
}