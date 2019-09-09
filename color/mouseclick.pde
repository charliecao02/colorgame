
void mousePressed() {
  if (mode==1) {
    int a=(int(random(0, 5)));
    if (mouseButton==LEFT) {
      input=true;
      released=false;
      breath[a].play();
      breath[a].rewind();
      score++;
      minus+=0.07;
      if (input!=answer) {
        mode=2;
        score--;
        normal.pause();
        normal.rewind();
      }
    }
    if (mouseButton==RIGHT) {
      input=false;
      released=false;
      breath[a].play();
      breath[a].rewind();
      score++;
      minus+=0.1;
      if (input!=answer) {
        mode=2;
        score--;
        normal.pause();
        normal.rewind();
      }
    }
  }
  if (mode==2 && restart==true) {
    mode=0;
    released=true;
    temp=true;
    txtsize=300;
    score=0;
    minus=2;
    restart=false;
    end.pause();
    end.rewind();
  }
}

void mouseReleased() {
  if (mode==0 && start==false) {
    start=true;
  } else if (mode==0 && start==true) {
    mode=1;
  }
  if (mode==2) {
    restart=true;
    start=false;
  }
  released=true;
}