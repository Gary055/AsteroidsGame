class Star //note that this class does NOT extend Floater
{
  private int myR, myG, myB;
  private float x, y;
  public Star()
  {
    myR = (int)(Math.random()*50)+205;
    myG = (int)(Math.random()*50)+205;
    myB = (int)(Math.random()*50)+205;
    x = (float)(Math.random()*1000);
    y = (float)(Math.random()*1000);
  }
  public void show()
  {
    fill(myR, myG, myB);
    ellipse(x,y,5,5);
  }
  //your code here
}
