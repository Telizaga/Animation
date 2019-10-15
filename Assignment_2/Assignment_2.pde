int bn=100;
int a=200;
int b=597;
int B=31;
int R=212;
int x=3;
int z=3;
int a2=200;
int b2=-200;
int bn2=255;
int G=9;
int B2=33;
color sky=#040921;
color sky2=#031264;
float c=0;
Star[] stars;
int numStars = 3000;
int currentStars = 0;


int xx=-75;
int yy=-30;
int xx2=0;
int yy2=0;
void setup(){
  size(800,600);
  background(sky);
  noStroke();
  stars = new Star[numStars];
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}

void draw(){
  println(mouseX,mouseY);
  noStroke();
  background(sky);
  ski();
  for (int n = 0; n < stars.length; n++) {
    stars[n].display();
  }
//flash
stroke(255,100);
line(xx,yy,xx2,yy2);

xx=xx+40;
yy=yy+16;
xx2=xx2+40;
yy2=yy2+16;
if(yy2>=3000){
  xx=-75;
  yy=-30;
  xx2=0;
  yy2=0;
}


  //land
  noStroke();
  fill(0);
  beginShape();
  curveVertex(-50,650);
  curveVertex(-50,650);
  curveVertex(-50,558);
  curveVertex(0,558);
  curveVertex(99,540);
  curveVertex(131,498);
  curveVertex(190,530);
  curveVertex(190,650);
  curveVertex(190,650);
  endShape();
  quad(287,534,237,509,131,498,132,650);
  quad(170,534,296,532,374,650,170,650);
  quad(295,532,302,520,366,524,373,538);
  quad(295,531,294,650,434,650,373,537);
  quad(373,538,454,566,540,650,373,650);
  quad(454,566,641,600,641,650,454,650);
  quad(303,515,371,522,370,525,297,520);
  
  
  
  //man
  noStroke();
  quad(324,519,327,504,335,510,335,520);
  quad(336,507,335,510,326,504,327,502);
  quad(336,507,334,497,329,497,327,502);
  triangle(339,495,325,496,330,499);
  quad(325,496,326,480,336,478,339,495);
  quad(324,476,326,480,336,478,337,473);
  triangle(337,473,324,476,328,471);
  ellipse(333,468,7,9);
  stroke(0);
  strokeWeight(1.2);
  line(334,466,338,466);
}
//---------------------------------------------------------------------------



class Star{
  void star(){
    fill(255,255,255,l);
    ellipse(x,y,6,6);
    fill(255,255,255,100);
    ellipse(x,y,3,3);
    fill(255);
    ellipse(x,y,1,1);
  }
  float x;
  float y;
  float l;
  int sl=3;
  Star(){
    x=random(-800,width);
    y=random(-800,height);
    l=random(0,150);
  }



 void display() {
    pushMatrix();
  translate(400, 300);
  rotate(c);
  star();
  popMatrix();
  c=c+radians(0.00002);
//shining stars
  l=l+sl;
  if (l<=0) {
    sl=5;
  }
  if (l>=150) {
    sl=-5;
  }
  }
}
void ski(){
  //sky
  while(a>0){
  fill(R,200,B,bn);
  rect(0,b,800,4);
  bn=bn-2;
  b=b-4;
  a--;
  R=R-3;
  B=B+3;
  if(R<=150){
    R=150;
  }
  if(B>=170){
    B=170;
  }
  }
  if(a<=0){
    a=200;
  }
  if(a==200){
    b=597;
    R=212;
    B=31;
    bn=255;
    
  }
  while(a2>0){
    fill(4,9,33,bn2);
    rect(b2,0,4,600);
    bn2--;
    b2=b2+4;
    a2--;
    bn2--;
  }
  
  if(a2<=0){
    a2=200;
    bn2=255;
    b2=0;
  }
}
