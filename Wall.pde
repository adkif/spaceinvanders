public class Wall{
  
  private Position position;
  private final int WIDTH = width/8;
  private final int HEIGHT = 10;
  
  public Wall(Position position){
    this.position = position;
  }
  
  void display(){
    noStroke();
    fill(64, 64, 64);
    rect(this.position.getX(), this.position.getY(), WIDTH, HEIGHT);
  }
}
