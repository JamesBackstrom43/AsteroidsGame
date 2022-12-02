Particle [] stars = new Particle[1500];
private int speed = 1;
Spaceship [] ship = new Spaceship[1];
ArrayList <Asteroid> asteroid = new ArrayList <Asteroid>();
public void setup() {
  size(500,500);
  for(int i = 0;i<stars.length;i++){
    stars[i] = new Particle(); 
    ship[0] = new Spaceship();
  }
  for(int i = 0;i<15;i++){
   Asteroid asteroid1 = new Asteroid(); 
   asteroid.add(asteroid1);
  }
}
public void draw() {
  background(0);
  if(speed%2 == 0){
 frameRate(150);
 fill(0,0,0,15);
  rect(-10,0,510,510);
  stars[0].show();
  stars[0].update();
  }
  else{
    frameRate(60);
    fill(0,0,0);
    rect(-10,0,510,510);
  }
  translate(width/2, height/2);
  for(int i = 0;i<stars.length;i++){
   stars[i].show(); 
   stars[i].update();
  }
  translate(-width/2,-height/2);
  for(Asteroid asteroid1 : asteroid){
   asteroid1.show();
   asteroid1.move();
  }
  for(int i = 0;i<asteroid.size();i++){
    Asteroid anotherThing = asteroid.get(i);
    float d = dist((float)ship[0].getMyCenterX(),(float)ship[0].getMyCenterY(),(float)anotherThing.getmyCenterX(),(float)anotherThing.getmyCenterY());
   if(d < 20){
   asteroid.remove(i);
   Asteroid asteroid1 = new Asteroid(); 
   asteroid.add(asteroid1);
  }
  }
   ship[0].show();
   ship[0].move();
}
public void keyPressed(){
  if(key == 'a'){
   ship[0].turn(-20); 
   speed = 1;
   if(asteroid.size() == 0){
     for(int i = 0;i<15;i++){
   Asteroid asteroid1 = new Asteroid(); 
   asteroid.add(asteroid1);
  }
  }
  }
  if(key == 'w'){
    ship[0].accelerate(1);
    speed = 1;
    if(asteroid.size() == 0){
     for(int i = 0;i<15;i++){
   Asteroid asteroid1 = new Asteroid(); 
   asteroid.add(asteroid1);
  }
  }
  }
  if(key == 'd'){
   ship[0].turn(20); 
   speed = 1;
   if(asteroid.size() == 0){
     for(int i = 0;i<15;i++){
   Asteroid asteroid1 = new Asteroid(); 
   asteroid.add(asteroid1);
  }
  }
   }
  if(key == 'f'){
   ship[0].hyperspace(); 
   speed++;
   for(int i = 0;i<asteroid.size();i++){
   asteroid.remove(0);
   }
   for(int i = 0;i<asteroid.size();i++){
   asteroid.remove(0);
   }
   for(int i = 0;i<asteroid.size();i++){
   asteroid.remove(0);
   }
   for(int i = 0;i<asteroid.size();i++){
   asteroid.remove(0);
   }
   }
   }
