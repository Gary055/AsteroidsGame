class Spaceship extends Floater  
{   
  protected double spin;
  public int n;
  public Spaceship()
  {
    myCenterX = 500;
    myCenterY = 500;
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
    myColor = color(255);
  }
  public void addspin(double x){spin += x;}
  public void hyperspace()
  {
    myCenterX = Math.random()*1000;
    myCenterY = Math.random()*1000;
    myXspeed = myYspeed = 0;
    spin = 0;
  }
  public void pew(double speed)
  {
    double MyX, MyY, speedX, speedY;
    MyX = myCenterX;
    MyY = myCenterY;
    speedX = speed * Math.cos(myPointDirection * (Math.PI/180));
    speedY = speed * Math.sin(myPointDirection * (Math.PI/180));
    for(int i = 0; i < 1000; i++)
    {
    fill(100);
    ellipse((float)(MyX += speedX), (float)(MyY += speedY), 10, 10);
    }
  }
  //your code here
}
