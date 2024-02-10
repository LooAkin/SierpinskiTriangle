public void setup()
{
  size(800,800);
  strokeWeight(5);
  Boolean draw = true;
  Boolean triangle = true;
}
public void draw()
{
   background(100, 50, 200);
   if(draw == true){
   int r = (int) Math.random()*5 + 20;
   int g = (int) Math.random()*55 + 200;
   int b = (int) Math.random()*20 + 100;
    fill(r, g, b);
    stroke(r*.9, g*.9, b*.9);
    sierpinski(100, 700, 600);
  }
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
