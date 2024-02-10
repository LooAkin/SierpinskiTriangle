public void setup()
{
  size(800,800);
  strokeWeight(3);
  Boolean draw = true;
  fill(50, 200, 100);
  stroke(45, 180, 90);
}
public void draw()
{
   background(100, 50, 200);
   if(draw == true)
    sierpinski(100, 700, 600);
}

public void mouseClicked(){
  if(draw == true)
    draw = false;
  else
    draw = true;
}

public void sierpinski(int x, int y, int len) 
{
  if(len <= 20)
    triangle(x, y, x+len/2, y-len, x+len, y);
  else {
    int half = len/2;
    sierpinski(x, y, half);
    sierpinski(x+half, y, half); 
    //sierpinski(x+(half/2), y-half, half);
  }
}
