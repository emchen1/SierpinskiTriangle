int a = 50;
public void setup()
{
  size(500, 500);
  background(0);
}
public void draw()
{
  sierpinski(0, 0, a);
  sierpinski(-100, 0, a);
  sierpinski(400, 0, a);
  sierpinski(300, 0, a);
  sierpinski(200, 0, a);
  sierpinski(100, 0, a);
  sierpinski(0, 200, a);
  sierpinski(-100, 200, a);
  sierpinski(400, 200, a);
  sierpinski(300, 200, a);
  sierpinski(200, 200, a);
  sierpinski(100, 200, a);
  sierpinski(0, 400, a);
  sierpinski(-100, 400, a);
  sierpinski(400, 400, a);
  sierpinski(300, 400, a);
  sierpinski(200, 400, a);
  sierpinski(100, 400, a);


}
public void mousePressed()//optional
{
  if(a == 50)
  a = 100;
  else if(a==100)
  a=200;
  else
  a = 50;
  

}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20)
  triangle(x,y, x+len/2,y+len, x+len, y);
  else{
  sierpinski(x,y,len/2);
  sierpinski(x+len/2, y, len/2);
  sierpinski(x+len/4, y+len/2, len/2);
  }
  

}