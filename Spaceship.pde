class Spaceship extends Floater  
{   
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
    yCorners[2] = 25;
    xCorners[3] = 18;
    yCorners[3] = 0;
    xCorners[4] = -8;
    yCorners[4] = -25;
    xCorners[5] = -22;
    yCorners[5] = -10;
    myColor = color(255);
  }
  //your code here
}
