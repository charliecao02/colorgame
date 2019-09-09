color colornow;
String namenow;
void playing() {
  intro.pause();
  intro.rewind();
  normal.play();
  image(backgroundplaying, 600, 375);
  if (released==false && temp==true) {
    txtsize=300;
    answertrue=int(random(0, 2));
    if (answertrue==0) {
      rnd1=int(random(0, 6));
      rnd2=rnd1;
    } else if (answertrue>=1) {
      rnd1=int(random(0, 6));
      rnd2=int(random(0, 6));
    }
    colornow=colors[int(rnd1)];
    namenow=cname[int(rnd2)];
    temp=false;
  } else if (released==true) {
    temp=true;
  }

  if (int(rnd1)==int(rnd2)) {
    answer=true;
  } else {
    answer=false;
  }

  fill(colornow);
  textAlign(CENTER, CENTER);
  if (txtsize>=70) {
    txtsize-=minus;
    rectMode(CENTER);
    rect(600, 670, (txtsize-70)*2.5, 20);
  } else if (txtsize<70) {
    mode=2;
    restart=true;
    start=false;
    normal.pause();
    normal.rewind();
  }
  textSize(60);
  text("Time remaining:", 600, 630);
  textSize(150);
  text(score, 600, 80);
  textSize(txtsize);
  text(namenow, 600, 375);
}