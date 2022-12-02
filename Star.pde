class Particle //note that this class does NOT extend Floater
{
  private float x, y, z, c;
  public Particle() {
    x = random(-width, width);
    y = random(-height,height);
    z = random(width);
    c = 255;
  }
  public void update(){
  z = z - 5;
  if(z < 1){
    z = width;
    x = random(-width, width);  
    y = random(-height,height); 
  }
}
  
public void show(){
  fill(c);
  noStroke();
  float sx = map(x / z, 0, 1, 0, width);
  float sy = map(y / z, 0, 1, 0, width);
  float s = map(z, 0, width, 8, 0);
  ellipse(sx,sy,s,s); 
}   
} 
