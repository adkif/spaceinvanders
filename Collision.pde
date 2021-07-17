public class Collision {
  private Position impact;


  public Collision(Position position) {
    this.impact = position;
  }

  public void check(Ship ship) {
    if (impact.distance(ship.position.getX(), ship.position.getY()) <= 15) {
      if (ship instanceof Alien) {
        ship.position.setX((int) random(width));
        ship.position.setY((int) random(height/2));
        Score.getInstance().update();
      }
      if (ship instanceof Player) {
        textSize(32);
        fill(0, 102, 153);
        text("Game Over", width/3, height/2);
      }
      println("Score: "+Score.getInstance().getKilled());
    }
  }
}
