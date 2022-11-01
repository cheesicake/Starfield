Particle[] love;
void setup()
{
  size(700, 700);
  love = new Particle[1000];
  for(int n = 1; n < love.length;  n++){
   love[n] = new Particle(); 
   love[5] = new OddballParticle();
  }
}
void draw()
{
  background(0);
  for(int n = 1; n < love.length;  n++){
  love[n].show();
  love[n].boom();
  }
}
class Particle
{
  double myX, myY, myS, myA;
  int myC, mySize;
  Particle(){
   myC = color((int)(Math.random()*200)+50,
               (int)(Math.random()*200)+50,
               (int)(Math.random()*200)+50);
   myX =  width/2;
   myY = height/2;
   myS = Math.random()*10 + 1;
   myA = Math.random()*2 * Math.PI;
   mySize = 10;
  }
  void show(){
   fill(myC);
   ellipse((float)myX, (float)myY, mySize, mySize);
  }
  void boom(){
    myX = myX + Math.cos(myA) * myS;
    myY = myY + Math.sin(myA) * myS;
    if(myX > 1000){
      myX = 0;
      myY = 0;
    }
}
}
class OddballParticle extends Particle//inherits from Particle
{
  OddballParticle(){
   myC = color(178, 232, 216);
   myX = width/2;
   myY = height/2;
   myS = Math.random()*1 - 1;
   myA = Math.random()*3 * Math.PI; 
   mySize = 40;
  }
}
