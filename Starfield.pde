Particle[] love;
void setup()
{
  size(700, 700);
  love = new Particle[1000];
  for(int n = 1; n < love.length;  n++){
   love[n] = new Particle(); 
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
  int myC;
  Particle(){
   myC = color((int)(Math.random()*200)+50,
               (int)(Math.random()*200)+50,
               (int)(Math.random()*200)+50);
   myX =  width/2;
   myY = height/2;
   myS = Math.random()*10 + 1;
   myA = Math.random()*2 * Math.PI;
  }
  void show(){
   fill(myC);
   ellipse((float)myX, (float)myY, 10, 10);
  }
  void boom(){
    myX = myX + Math.cos(myA) * myS;
    myY = myY + Math.sin(myA) * myS;
    if(myX > 1000){
      myX = 0;
      myY = 0;
    }
    /*if(myY > 1000){
      myY = 350;
    }*/
}
}
class OddballParticle //inherits from Particle
{
  //your code here
}
