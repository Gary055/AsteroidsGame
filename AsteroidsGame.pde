//your variable declarations here
ArrayList <Asteroids> Rocks = new ArrayList <Asteroids>();
ArrayList <Bullet> pews = new ArrayList <Bullet>();
Star [] Backdrop;
Spaceship Jeffery;
public void setup() 
{
  size(1000,1000);
  background(0);
  for(int i = 0; i < 10; i++)
  {
    Asteroids Rock = new Asteroids();
    Rocks.add(Rock);
  }
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
  for(int i = 0; i < Rocks.size(); i++)
  {
    Rocks.get(i).move();
    Rocks.get(i).show();
    if(dist((float)Jeffery.myCenterX, (float)Jeffery.myCenterY, (float)Rocks.get(i).myCenterX, (float)Rocks.get(i).myCenterY) < 30)
      Rocks.remove(i);
  }
  for(int i = 0; i < Rocks.size(); i++)
  {
  for(int j = 0; j < pews.size(); j++)
     {
       if(dist((float)pews.get(j).myCenterX, (float)pews.get(j).myCenterY, (float)Rocks.get(i).myCenterX, (float)Rocks.get(i).myCenterY) < 10)
        {
        Rocks.remove(i);
        pews.remove(j);
        break;
        }
     }
  }
  for(int i = 0; i < pews.size(); i++)
  {
    pews.get(i).move();
    pews.get(i).show();
  }
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
     if(key == 's')
     {
       Jeffery.accelerate(-0.1);
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
       pews.add(new Bullet(Jeffery));
     }
   }
  //your code here
}
