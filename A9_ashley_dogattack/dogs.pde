// draw dogs

void dogs() {
  //dog advance across screen at random speeds
  float minSpeed = 15;
  float maxSpeed = 30;
  speed = random(minSpeed, maxSpeed);

  for (int i = 0; i < 5; i++) {
    // random generator so each dog has different speeds
    if (random(100) < 50) {
      x[i] -= speed; // speed animates dogs to the left
    }
    image(imgDog, x[i], y[i], sizeW, sizeH); // draw dog img
  }
}