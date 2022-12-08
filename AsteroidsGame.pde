Particle [] stars = new Particle[1500];
private int speed = 1;
private int score = 0;
private int level = 0;
private int lives = 3;
private double GameOver = 0;
private int numOfAsteroids = 15;
Spaceship [] ship = new Spaceship[1];
ArrayList <Asteroid> asteroid = new ArrayList <Asteroid>();
ArrayList <Bullet> bullet = new ArrayList <Bullet>();
public void setup() 
{
  size(750,750);
  for(int i = 0;i<stars.length;i++){
    stars[i] = new Particle(); 
    ship[0] = new Spaceship();
  }
  for(int i = 0;i<numOfAsteroids;i++){
   Asteroid asteroid1 = new Asteroid(); 
   asteroid.add(asteroid1);
  }
}
public void draw(){
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
  for(int i = 0;i < bullet.size();i++){
   bullet.get(i).move();
   bullet.get(i).show();
  }
  for(int i = 0;i<asteroid.size();i++){
    Asteroid anotherThing = asteroid.get(i);
    float d = dist((float)ship[0].getMyCenterX(),(float)ship[0].getMyCenterY(),(float)anotherThing.getmyCenterX(),(float)anotherThing.getmyCenterY());
    if(d < 20){
   asteroid.remove(i);
   Asteroid asteroid1 = new Asteroid(); 
   asteroid.add(asteroid1);
   lives = lives - 1;
  }
   for(int j = 0;j<bullet.size();j++){
   Bullet thing = bullet.get(j);
   float f = dist((float)thing.getCenterX(),(float)thing.getCenterY(),(float)anotherThing.getmyCenterX(),(float)anotherThing.getmyCenterY());
   if(f < 20){
   bullet.remove(j);
   asteroid.remove(i);
   score++;
  }
  }
   ship[0].show();
   ship[0].move();
}
if(asteroid.size() == 0 && score == 15){
  for(int i = 0;i<numOfAsteroids;i++){
   Asteroid asteroid1 = new Asteroid(); 
   asteroid.add(asteroid1);
  }
}
if(score % 15 == 0){
  level = score/15;
}
if(score % 15 == 0){
  lives = 3;
}
if(level == 3){
 numOfAsteroids = 20; 
}
if(level == 5){
 numOfAsteroids = 30; 
}
if(lives <= 0){
 GameOver = 1;
 fill(235);
 noStroke();
 rect(-10,-10,600,600);
 textSize(30);
 fill(0);
 text("Game Over",175,250);
 textSize(24);
 text("Refresh The Page To Play Again",75,300);
}
fill(235);
noStroke();
rect(0,0,width,50);
fill(0);
textSize(24);
if(GameOver == 0){
text("Score:" + score, 75, 30);
text("Level:" + level, 200 , 30);
text("Lives:" + lives, 325, 30);
}
}
public void keyPressed(){
  if(key == 'a'){
   ship[0].turn(-20); 
   speed = 1;
   if(asteroid.size() == 0){
     for(int i = 0;i<numOfAsteroids;i++){
   Asteroid asteroid1 = new Asteroid(); 
   asteroid.add(asteroid1);
  }
 }
}
  if(key == 'w'){
    ship[0].accelerate(.1);
    speed = 1;
    if(asteroid.size() == 0){
     for(int i = 0;i<numOfAsteroids;i++){
   Asteroid asteroid1 = new Asteroid(); 
   asteroid.add(asteroid1);
  }
  }
  }
  if(key == 's'){
    ship[0].accelerate(-.1);
    speed = 1;
    if(asteroid.size() == 0){
     for(int i = 0;i<numOfAsteroids;i++){
   Asteroid asteroid1 = new Asteroid(); 
   asteroid.add(asteroid1);
  }
  }
  }
  if(key == 'd'){
   ship[0].turn(20); 
   speed = 1;
   if(asteroid.size() == 0){
     for(int i = 0;i<numOfAsteroids;i++){
   Asteroid asteroid1 = new Asteroid(); 
   asteroid.add(asteroid1);
  }
  }
   }
  if(key == 'f'){
   ship[0].hyperspace(); 
   speed++;
   numOfAsteroids = asteroid.size();
   for(int j = 0;j<4;j++){
   for(int i = 0;i<asteroid.size();i++){
   asteroid.remove(0);
   }
   }
   }
   if(key == ' '){
     bullet.add(new Bullet(ship[0]));
   }
   }
