public class Player extends Ship {
  private final static int WIDTH = 10;
  private final static int HEIGHT = 30;
  private ArrayList<Ship> ships;

  public Player(ArrayList<Ship> ships) {
    this.ships = ships;
    this.position = new Position(width/2, height - HEIGHT);
    this.speed = 3;
  }


  void move(int direction) {
    this.keyPressed();
  }

  void shoot(ArrayList<Ship> ships) {
    this.keyPressed();
    for (Projectile projectile : this.projectiles) {
      if (projectile.position.getY() >= 0) {
        projectile.display();
        projectile.move(-1);
      } else {
        //projectile.position.setY(this.position.getY());
        //projectile.position.setX(this.position.getX()+WIDTH/2);
      }
    }
  }


  void keyPressed () {

    if (key == ' ') {
      this.projectiles.add(new Projectile(new Position(this.position.getX()+WIDTH/2, this.position.getY()), this.ships));
    }

    if (key == CODED) {
      if (keyCode == LEFT) {
        if (this.position.getX() >= 0) {
          this.position.setX(this.position.getX() - this.speed);
        } else {
          this.position.setY(this.position.getY());
          this.position.setX(this.position.getX());
        }
      } else if (keyCode == RIGHT) {
        if (this.position.getX() <= width-WIDTH) {
          this.position.setX(this.position.getX() + this.speed);
        } else {
          this.position.setY(this.position.getY());
          this.position.setX(this.position.getX());
        }
      }
    }
  }

  void display() {
    noStroke();
    fill(190, 190, 190);
    rect(this.position.getX(), this.position.getY(), WIDTH, HEIGHT);
  }
}
