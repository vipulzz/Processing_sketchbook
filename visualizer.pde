class visualize{
  float h = 0;
  float temp;
  float xPos = 40;
  float max = random(130);
  float speed = random(1);
  void createPosition(int x){
    temp = x;
    xPos += x*12;
    if(x < 10 || x > 40){
      max = random(40);
    }
  }
  void drawBar(){
    fill(218, 11, 219);
    stroke(255);
    line(0, 240 ,width, 240);
    rect(xPos, 240-h, 12, h);
  }
  void updateBar(){
    h += speed;
    if(h>max){
      h = random(0,30);
      if(temp < 10 || temp > 40){
        max = random(40);
        speed = random(.1, .3);
      }else{
        max = random(140);
        speed = random(.3, .5);
      }
    }
  }
}

visualize[] bar;

void setup(){
 frameRate(200);
 bar = new visualize[50];
 for(int i = 0; i < 50; i++){
  bar[i] = new visualize();
  bar[i].createPosition(i+1);
 }
 size(700, 300);
}

void draw(){
  background(255);
    for(int i = 0; i < 50; i++){
    bar[i].drawBar();
    bar[i].updateBar();
  }
}
