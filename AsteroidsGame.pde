//your variable declarations here
Star [] Backdrop;
Spaceship Jeffery;
public void setup() 
{
  size(1000,1000);
  background(0);
  Backdrop = new Star[30];
  for(int i = 0; i < Backdrop.length; i++)
  {
    Backdrop[i] = new Star();
  }
   Jeffery = new Spaceship();
  //your code here
}
public void draw() 
{
  background(0);
  for(int i = 0; i < Backdrop.length; i++)
    Backdrop[i].show();
   Jeffery.show();
   Jeffery.move();
   Jeffery.turn(Jeffery.spin);
   if(keyPressed)
   {
     if(key == 'a')
     {
       Jeffery.addspin(-0.1);
     }
     if(key == 'd')
     {
       Jeffery.addspin(0.1);
     }
     if(key == 'w')
     {
       Jeffery.accelerate(0.1);
     }
     if(key == 'e')
     {
       Jeffery.n++;
       if(Jeffery.n == 10)
       {
       Jeffery.hyperspace();
       Jeffery.n = 0;
       }
     }
     if(key == ' ')
     {
       Jeffery.pew(0.1);
     }
   }
  //your code here
}
