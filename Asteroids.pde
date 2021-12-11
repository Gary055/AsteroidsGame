class Asteroids extends Floater
{
  protected double rotspeed = Math.random()*9 - 4;
  public Asteroids()
  {
    myCenterX = (int)(Math.random()*1000);
    myCenterY = (int)(Math.random()*1000);
    myXspeed = Math.random()*11 - 5;
    myYspeed = Math.random()*11 - 5;
    corners = 8;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = (int)(Math.random()*3)+7;
    yCorners[0] = (int)(Math.random()*3)-4;
    xCorners[1] = (int)(Math.random()*3)+6;
    yCorners[1] = (int)(Math.random()*3)+6;
    xCorners[2] = (int)(Math.random()*3)-4;
    yCorners[2] = (int)(Math.random()*3)+7;
    xCorners[3] = (int)(Math.random()*3)-6;
    yCorners[3] = (int)(Math.random()*3)+6;
    xCorners[4] = (int)(Math.random()*3)-7;
    yCorners[4] = (int)(Math.random()*3)-4;
    xCorners[5] = (int)(Math.random()*3)-6;
    yCorners[5] = (int)(Math.random()*3)-6;
    xCorners[6] = (int)(Math.random()*3)-4;
    yCorners[6] = (int)(Math.random()*3)-7;
    xCorners[7] = (int)(Math.random()*3)+6;
    yCorners[7] = (int)(Math.random()*3)-6;
    myColor = color(((int)Math.random()*100)+100);
  }
  public void move()
  {
    turn(rotspeed);
    super.move();
  }
}
