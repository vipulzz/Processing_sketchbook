class rain{

  float x1, x2, y;
  float position = random(width);
  float rsize = random(15, 40);
  float speed = rsize*0.25;

  void rainDrop(){
    stroke(179, 25, 255);
    strokeWeight(4);
    line(position, y, position, y+rsize);
  }
  void rainUpdate(){
    y += speed;
    if(y > height){
      y = 0;
      position= random(width);
    }
  }
}


rain[] drop;
int nod = 800;

void setup(){
  fullScreen();
  frameRate(300);
  drop = new rain[nod];
  for(int i = 0; i < nod; i++){
    drop[i] = new rain();
  }
}

void draw(){
  background(0);
  for(int i = 0; i < nod; i++){
    drop[i].rainDrop();
    drop[i].rainUpdate();
  }
}
