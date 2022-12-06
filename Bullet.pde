class Bullet extends Floater{
  public Bullet(Spaceship theShip){
    myCenterX = theShip.getMyCenterX();
    myCenterY = theShip.getMyCenterY();
    myXspeed = theShip.getmyXspeed();
    myYspeed = theShip.getmyYspeed();
    myPointDirection = theShip.getmyPointDirection();
    accelerate(4);
  }
  public double getCenterX(){return myCenterX;}
  public double getCenterY(){return myCenterY;}
  public void move (){             
    myCenterX += myXspeed;    
    myCenterY += myYspeed;      
    if(myCenterX >width){}    
    else if (myCenterX<0){}    
    if(myCenterY >height){} 
    else if (myCenterY < 0){}   
  }
    public void show(){
      ellipse((float)myCenterX, (float)myCenterY,10,10);
    }
}
