
void setup()
{
  size(700, 700);
}
void draw()
{
  //your code here
}
class Particle
{
  double myX, myY, myS, myC, myA;
  Particle(){
   myC = color((int)(Math.random()*252)+50);
   myX =  width/2;
   myY = height/2;
   myS = (int)(Math.random()*5) - 2;
   
  }
  void show(){
   
  }
}

class OddballParticle //inherits from Particle
{
  //your code here
}
