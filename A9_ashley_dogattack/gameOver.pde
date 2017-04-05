// gameover
// ball restarts, and gameover img is drawn

void gameOver() {

  ballThrown = false;
  fill(0);
  rect(-1, -1, width, height); // black background

  image(imgGameover, 0, 0, width, height); // draw gameover img
}