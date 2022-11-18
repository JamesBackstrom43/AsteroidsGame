class Star //note that this class does NOT extend Floater
{
  private int zX, zY;
  public Star(){
    zX = (int)(Math.random()*500);
    zY = (int)(Math.random()*500);

  }
 public void show(){
    ellipse (zX, zY, 3, 3);
  }
}
