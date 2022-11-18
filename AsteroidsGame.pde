Star [] star = new Star[150];
Spaceship [] ship = new Spaceship[1];
public void setup() 
{
  size(500,500);
  for(int i = 0;i<star.length;i++){
    star[i] = new Star();
    ship[0] = new Spaceship();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0;i<star.length;i++){
   star[i].show(); 
  }
   ship[0].show();
   ship[0].move();
}
public void keyPressed(){
  if(key == 'a'){
   ship[0].turn(-15); 
  }
  if(key == 'w'){
    ship[0].accelerate(1);
  }
  if(key == 'd'){
   ship[0].turn(15); 
  }
  if(key == 'f'){
   ship[0].hyperspace(); 
  }
}
