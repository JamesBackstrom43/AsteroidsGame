class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 4;
      xCorners = new int[]{-8,16,-8,-2};
      yCorners = new int[]{-8,0,8,0};
      myCenterX = width/2;
      myCenterY = height/2;
      myPointDirection = 0;
      myXspeed = 0;
      myYspeed = 0;
      myColor = 255;
    }
    public void hyperspace(){
     myXspeed = 0;
     myYspeed = 0;
     myCenterX = (int)(Math.random()*500);
     myCenterY = (int)(Math.random()*500);
     myPointDirection = (int)(Math.random()*360);
    }
}
