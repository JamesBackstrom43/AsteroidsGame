class Asteroid extends Floater  
{   
  private int rotSpeed;
    public Asteroid(){
      corners = 6;
      xCorners = new int[]{-11,7,13,6,-11,-5};
      yCorners = new int[]{-8,-8,0,10,8,0};
      myCenterX = (int)(Math.random()*width);
      myCenterY = (int)(Math.random()*height);
      myPointDirection = 0;
      myXspeed = (int)(Math.random()*5)-2;
      myYspeed = (int)(Math.random()*5)-2;
      myColor = #5A3B11;
      rotSpeed = (int)(Math.random()*3)+1;
    }
    
    public double getmyCenterX(){
     return myCenterX; 
    }
    public double getmyCenterY(){
     return myCenterY; 
    }
    public void move(){
      while(myXspeed == 0){
      myXspeed = (int)(Math.random()*5-2);
    }
    while(myYspeed == 0){
    myYspeed = (int)(Math.random()*5-2);
    }
      turn(rotSpeed);
      super.move();
    }
}
