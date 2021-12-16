class Spaceship extends Floater  
{   
  protected double spin;
  public int n;
  public Spaceship(int x, int y)
  {
    myCenterX = x;
    myCenterY = x;
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -12;
    yCorners[0] = 0;
    xCorners[1] = -22;
    yCorners[1] = 10;
    xCorners[2] = -8;
    yCorners[2] = 20;
    xCorners[3] = 28;
    yCorners[3] = 0;
    xCorners[4] = -8;
    yCorners[4] = -20;
    xCorners[5] = -22;
    yCorners[5] = -10;
    myColor = color((int)(Math.random()*100)+155, (int)(Math.random()*100)+155, (int)(Math.random()*100)+155);
  }
  public void addspin(double x){spin += x;}
  public void hyperspace()
  {
    myCenterX = Math.random()*1000;
    myCenterY = Math.random()*1000;
    myXspeed = myYspeed = 0;
    spin = 0;
  }
  //your code here
}
