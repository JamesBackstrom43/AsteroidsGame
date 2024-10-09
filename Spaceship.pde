class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 40;
      xCorners = new int[]{30,12,12,14,12,12,10,8,6,4,0,-4,-6,-8,-10,-12,-12,-14,-12,-12,-16,-12,-12,-14,-12,-12,-10,-8,-6,-4,0,4,6,8,10,12,12,14,12,12,30};
      yCorners = new int[]{0,-4,-6,-8,-10,-12,-12,-14,-12,-12,-16,-12,-12,-14,-12,-12,-10,-8,-6,-4,0,4,6,8,10,12,12,14,12,12,16,12,12,14,12,12,10,8,6,4,0};
     // corners = 4;
     // xCorners = new int[]{-8,16,-8,-2};
     // yCorners = new int[]{-8,0,8,0};
      myCenterX = width/2;
      myCenterY = height/2;
      myPointDirection = 0;
      myXspeed = 0;
      myYspeed = 0;
      myColor = #56d408;
    }
    public double getMyCenterX(){return myCenterX;}
    public double getMyCenterY(){return myCenterY;}
    public double getmyPointDirection(){return myPointDirection;}
    public double getmyXspeed(){return myXspeed;}
    public double getmyYspeed(){return myYspeed;}
    
    public void hyperspace(){
     myXspeed = 0;
     myYspeed = 0;
     myCenterX = (int)(Math.random()*500);
     myCenterY = (int)(Math.random()*500);
     myPointDirection = (int)(Math.random()*360);
    }
}
