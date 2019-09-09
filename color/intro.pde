int i=0;

void intro() {
  intro.play();
  background(0);
  imageMode(CENTER);
  image(introgif[i], 600, 450);
  if (i<=13) {
    i++;
  } else {
    i=0;
  }
  image(introimg, 600, 75, 447, 112);
  textAlign(CENTER);
  fill(255);
  textSize(100);
  text("GAME", 600, 225);
  textSize(30);
  text("LEFT CLICK TO BEGIN",610,700);
}
