public abstract class Ship {
  protected Position position;
  protected ArrayList<Projectile> projectiles = new ArrayList();
  protected int speed;
  
  public abstract void move(int direction);

  public abstract void shoot(ArrayList<Ship> ships);

  public abstract void display();
}
