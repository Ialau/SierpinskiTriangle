

public void setup()
{
  size(1000,1000);
  
}
public void draw()
{
  sierpinski(300,600,400);

}
public void mousePressed()//optional
{
  background(color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255)));

}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20){
    fill(color(210,2,222));
    triangle(x,y,x+len,y,x+(int)(len/2),y-len);
  }else{
    sierpinski(x,y,(int)(len/2));
    sierpinski(x+(int)(len/2), y, (int)(len/2));
    sierpinski(x+(int)(len/4), y - (int)(len/2), (int)(len/2));
  }

}
