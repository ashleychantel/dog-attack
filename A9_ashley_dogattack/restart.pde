// beginnging of game/restart

void restart() {

  // dog y position spacing
  float spacing = height / float(7);

  for (int i = 0; i < 5; i++) {
    // dogs positions restart
    x[i] = 1000;
    y[i] = (i + 1) * spacing;
  }

  // ball x position restarts and ball does not animate
  ballX = (manX + 180);
  ballThrown = false;

  // scoreboard restarts
  score = 0;
}