class Star {
  
  float x;
  float y;
  float z;
  float max_size;
  float min_size;
  
  float sx;
  float sy;
  float r;
  
  float px;
  float py;
  
  float new_star;
  
  Star(){
    x = random(-width/2, width/2);
    y = random(-height/2, height/2);
    //z = random(0, width);
    z = random(0, width);
    min_size = 0;
    max_size = 3;
    new_star = 1;
  }
  
  void show(){
    fill(255);
    noStroke();

    sx = map(x / z, 0, 1, 0, width/2);
    sy = map(y / z, 0, 1, 0, height/2);
    r = map(z, 0, width, max_size, min_size);
    
    stroke (255);
    
    if(new_star == 0){  
      line(sx, sy, px, py);
    }
    new_star = 0;
    
    px = sx;
    py = sy;
    
    
    //ellipse(sx, sy, r, r);  
 }
  
  void update(){
    z = z - speed;
    if(z < 1|| abs(sx) > width/2|| abs(sy) > height/2){
      //z = random(0, width);
      z = width;
      x = random(-width/2, width/2);
      y = random(-height/2, height/2);
      new_star = 1;
    }
  }
  
};