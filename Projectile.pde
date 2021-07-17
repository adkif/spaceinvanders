public class Projectile extends Ship {
  private Collision collision;
  private final int WIDTH = 10;
  private final int HEIGHT = 10;
  private ArrayList<Ship> ships = new ArrayList();

  public Projectile(Position position, ArrayList<Ship> ships) {
    this.speed = 5;
    this.position = position;
    this.ships = ships;
    this.collision = new Collision(position);
  }
  
  void setSpeed(int speed){
    this.speed = speed;
  }

  void move(int direction) {
    this.position.setY(this.position.getY() + this.speed * direction);
    for (Ship ship : ships) {
      this.collision.check(ship);
    }
  }
  
  void absorbed(){
    this.position.setY((int) height*2);
  }

  void shoot(ArrayList<Ship> ships) {
  }


  void display() {
    noStroke();
    fill(203, 71, 14);
    ellipse(this.position.getX(), this.position.getY(), WIDTH, HEIGHT);
  }
}
