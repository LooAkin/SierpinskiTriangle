public void setup()
{
  size(800,800);
  strokeWeight(3);
  Boolean draw = true;
  Boolean tri = true;
  fill(50, 200, 100);
  stroke(45, 180, 90);
}
public void draw()
{
   background(100, 50, 200);
   if(draw == true){
    if(tri == true)
      sierpinski(100, 700, 600);
    else
      sierpinski(100, 100, 600);
  }
}

public void mouseClicked(){
  if(draw == true)
    draw = false;
  else
    draw = true;
}

public void keyPressed(){
  if(tri == true)
    tri == false;
  else
    tri = true;
}

public void sierpinski(int x, int y, int len) 
{
  if(tri == false){
    if(len <= 20)
      rect(x, y, x+len, y+len);
    else {
      int third = (int) len/3;
      sierpinski(x, y, third);
      sierpinski(x+third, y, third);
      sierpinski(x+2*third, y, third);
      sierpinski(x, y+third, third);
      sierpinski(x+third, y+third, third);
      sierpinski(x+2*third, y+third, third);
      sierpinski(x, y+2*third, third);
      sierpinski(x+third, y+2*third, third);
      sierpinski(x+2*third, y+2*third, third);
  }
  else{ 
    if(len <= 20)
      triangle(x, y, x+len/2, y-len, x+len, y);
    else {
      int half = len/2;
      sierpinski(x, y, half);
      sierpinski(x+half, y, half); 
      sierpinski(x+(half/2), y-half, half);
    }
  }
}

