public class Ball
{
  private int x = 100;    
  private int y = 100;    
  private int dx = 1; 
  private int dy = 1;
  private int speed = 5; 
  private int size = 50;      //radius of ball   


  public Ball(int x, int y, int dx, int dy, int size) {
    this.x = x;
    this.y = y;
    this.dy = dy;
    this.dx = dx;
    this.size = size;
  }
  
  public Ball() {
  
  }
  
  public void display() {
    ellipse(x, y, size, size);
  }
  
  
  public void setdy(int dy) {
    this.dy = dy;
  }
  
  public void setdx(int dx) {
    this.dx = dx;
  }
  
  public void setSpeed(int speed) {
    this.speed = speed;
  }
  
  public int getdy() {
    return dy;
  }
  
  public int getdx() {
    return dx;
  }
  
  public int getX() {
    return x;
  }
  
  public int getY() {
    return y;
  }
  
  public int getsize() {
    return size;
  }
  
  public int getSpeed() {
    return speed;
  }
  
  public void move() {
    y += speed*dy;
    x += speed*dx;
  }
  
  public void collide() {
    
    move();
    
     if(getY() + getsize()/2 > height || getY() - getsize()/2 < 0) {
       setdy( getdy() * -1);  //roughly equals to... dy = dy*(-1)
     }
     
     if(getX() + getsize()/2 > width || getX() - getsize()/2 < 0) {
       setdx( getdx() * -1);  //roughly equals to... dx = dx*(-1)
     } 
  }

}
