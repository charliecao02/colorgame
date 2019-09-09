import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

int mode;
color red, blue, green, purple, yellow, cyan;
boolean input, released, temp, restart, start;
boolean answer;
float txtsize, minus, timeleft;
int score;

color[] colors;
String[] cname;

PImage backgroundplaying, introimg;
PImage[] introgif;

int rnd1, rnd2, answertrue;

PFont gamefont;

Minim myMinim;
AudioPlayer intro;
AudioPlayer end;
AudioPlayer normal;
AudioPlayer[] breath;


void setup() {
  minus=2;
  score=0;
  
  start=true;
  released=true;
  temp=true;
  restart=false;
  txtsize=300;
  gamefont= createFont("Games.ttf", 100);
  textFont(gamefont);

  introgif= new PImage[15];

  breath= new AudioPlayer[6];

  myMinim= new Minim(this);
  intro= myMinim.loadFile("intro.mp3");
  end= myMinim.loadFile("endsong.wav");
  normal= myMinim.loadFile("r00.mp3");
  for (int a=0; a<6; a++) {
    breath[a]= myMinim.loadFile("breathing"+a+".mp3");
  }  
  size(1200, 750);

  mode=0;

  red=#FF0000;
  green=#00FF00;
  blue=#0000FF;
  purple=#BA00FF;
  yellow=#DBD800;
  cyan=#00FFFF;

  colors=new color[6];
  cname=new String[6];

  colors[0]=red;
  colors[1]=green;
  colors[2]=blue;
  colors[3]=purple;
  colors[4]=yellow;
  colors[5]=cyan;

  cname[0]="Red";
  cname[1]="Green";
  cname[2]="Blue";
  cname[3]="Purple";
  cname[4]="Yellow";
  cname[5]="Cyan";

  backgroundplaying= loadImage("backgroundplaying.jpg");
  introimg= loadImage("color.png");
  for (int a=0; a<=14; a++) {
    introgif[a]=loadImage("frame_"+a+".gif");
  }

  answertrue=int(random(0, 100));
  if (answertrue<50) {
    rnd1=int(random(0, 6));
    rnd2=rnd1;
  } else if (answertrue>=50) {
    rnd1=int(random(0, 6));
    rnd2=int(random(0, 6));
  }
  colornow=colors[int(rnd1)];
  namenow=cname[int(rnd2)];
  temp=false;
}

void draw() {
  println(answertrue);
  if (mode==0) {
    intro();
  } else if (mode==1) {
    playing();
  } else if (mode==2) {
    end();
  }
}