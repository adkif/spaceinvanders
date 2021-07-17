public class Alien extends Ship {
  public static final int RAYON = 25;
  public Ship ship;

  public Alien(Position position) {
    this.speed = 1;
    this.position = position;
  }


  void shoot(ArrayList<Ship> ships) {
    this.projectiles.add(new Projectile(new Position(this.position.getX(), this.position.getY()+RAYON), ships));
    for (int i = 0; i< this.projectiles.size(); i+=50) {
      this.projectiles.get(i).setSpeed(2);
      this.projectiles.get(i).display();
      this.projectiles.get(i).move(1);
    }

    if (this.projectiles.size() > 150) this.projectiles.clear();
  }



  void move(int direction) {
    if (this.position.getY() <= height) {
      this.position.setY(this.position.getY() + this.speed * direction);
    } else {
      textSize(32);
      fill(0, 102, 153);
      text("Game Over", width/3, height/2);
      this.position.setY((int) random(height/4));
      this.position.setX((int) random(width));
    }
  }

  void display() {
    noStroke();
    fill(0, 225, 30);
    ellipse(this.position.getX(), this.position.getY(), RAYON, RAYON);
  }
}
