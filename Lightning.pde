int startX = 150;
  int startY = 50;
  int endX = 150;
  int endY = 50;
  
 //eat some noodles
void setup()
{
  size(300,300);

}
void draw()
{ 
  stick();
  cup();
stroke(252,240,212);
strokeWeight(4);
  while (endX < 300){
    endY = startY + (int)(Math.random()*10);
    endX = startX + (int)((Math.random()*18)-9);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }

}
void mousePressed()
{
  startX = 150;
  startY = 50;
  endX = 150;
  endY = 50;
}

void stick(){
  strokeWeight(15);
  stroke(137,129,112);
  line(0,70,150,70);
  line(0,30,150,50);
}

void cup(){
  fill(255);
  stroke(255);
  rect(30,270,240,50);
  fill(242,250,40);
  noStroke();
  for(int x = 35; x < 270; x = x+25){
    rect(x,270,10,15);
  }
}
