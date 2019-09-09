void end(){
  normal.pause();
  normal.rewind();
  end.play();
  background(0);
  textSize(150);
  textAlign(CENTER);
  text("you lost!",600,175);
  textSize(100);
  text("Your score:\n"+score,600,400);
  textSize(50);
  text("Click Anywhere to restart",600,700);
}
