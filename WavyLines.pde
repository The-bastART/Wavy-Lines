int lin_num=100;

float t=1.0;

float x1(float t) {
  return sin(t/10)*50+sin(t/5)*20-tan(t/50)*100;
}
  
float y1(float t) {
  return cos(t/50)*100-sin(t/10)*150;
}
  
float x2(float t) {
  return tan(t/20)*200+sin(t)*20;
}
  
float y2(float t) {
  return tan(t/20)*200+cos(t/12)*20+sin(t/2)*100;
}

void setup() {
    background(120);
    //size(1920,1080);
    fullScreen();
    frameRate(60);
}

void draw() {
  //background(100);
  translate(width/2,height/2);
  stroke(100+x1(t*t)*2,100+x2(t+t),100+y1(t));
  strokeWeight(1);
  
  for (int i=0; i<lin_num; i++){
    rotate(30);
    line(x1(t+i),y1(t+i),x2(t+i),y2(t+i));
  }
  for (int i=0; i<lin_num; i++){
    rotate(30);
    line(x1(t+i+20),y1(t+i+20),x2(t+i),y2(t+i+20));
  }
  for (int i=0; i<lin_num; i++){
    rotate(30);
    line(x1(t+i+40),y1(t+i),x2(t+i+40),y2(t+i+40));
  }

  
  t+=0.1;
}
  
