class Asteroids extends Floater
{
  protected double rotspeed;
  public Asteroids()
  {
    corners = 8;
    xCorners = new int{corners];
    xCorners = new int{corners];
    xCorners[0] = (int)(Math.random()*3)+4;
    yCorners[0] = (int)(Math.random()*3)-1;
    xCorners[1] = (int)(Math.random()*3)+3;
    yCorners[1] = (int)(Math.random()*3)+3;
    xCorners[2] = (int)(Math.random()*3)-1;
    yCorners[2] = (int)(Math.random()*3)+4;
    xCorners[3] = (int)(Math.random()*3)-3;
    yCorners[3] = (int)(Math.random()*3)+3;
    xCorners[4] = (int)(Math.random()*3)-4;
    yCorners[4] = (int)(Math.random()*3)-1;
    xCorners[5] = (int)(Math.random()*3)-3;
    yCorners[5] = (int)(Math.random()*3)-3;
    xCorners[6] = (int)(Math.random()*3)-1;
    yCorners[6] = (int)(Math.random()*3)-4;
    xCorners[7] = (int)(Math.random()*3)+3;
    yCorners[7] = (int)(Math.random()*3)-3;
  }
  public void move()
  {
    
  }
}
