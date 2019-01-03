class balls{
  float x = random(width);
  float y = random(height);
  float speed = 0.6;
  float a = random(20,60);
  float red = random(255), green = random(255), blue = random(255);
  void drawBalls(){
    ellipse(x, y, a, a);
    fill(red, green, blue);

  }
  void vibration(){
    int pos = int(random(4)+1);
    switch(pos){
          case 1:
        x += speed;
        break;
      case 2:
        y += speed;
        break;
     case 3:
        x -= speed;
        break;
     case 4:
        y -= speed;
        break;
    }
    speed += 0.005;
    if(speed > 3 || speed < 0.5){
      speed *= -1;
    }
  }

}

balls[] vib;
int num = 1000;

void setup(){
noStroke();
  frameRate(400);
  fullScreen();
  vib = new balls[num];
    for(int i = 0; i< num; i++){
  vib[i] = new balls();
  }
}

void draw(){
  background(255);
  for(int i = 0; i< num; i++){
  vib[i].drawBalls();
  vib[i].vibration();
  }
}
