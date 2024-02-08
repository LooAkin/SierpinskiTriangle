public void setup()
{
  size(800,800);
  strokeWeight(5);
  
}
public void draw()
{
   background(100, 50, 200);
   sierpinski(100, 700, 600);
}

public void sierpinski(int x, int y, int len) 
{
  fill(40, 200, 100);
  stroke(36, 180, 90);
  if(len <= 10)
    triangle(x, y, x+len/2, y-len, x+len, y);
  else {
    int half = len/2;
    sierpinski(x, y, half);
    sierpinski(x+half, y, half); 
    sierpinski(x+half/2, y-half);
  }
}
