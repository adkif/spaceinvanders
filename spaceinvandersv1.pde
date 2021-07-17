import java.util.*;

Ship player;
ArrayList<Ship> aliens;
ArrayList<Wall> walls = new ArrayList<Wall>();
void setup() {
  size(400, 750);
  aliens = new ArrayList<Ship>();
  for (int i = 0; i < 10; i++ ) {
    aliens.add(new Alien(new Position((int) random(width), (int) random(height/4))));
  }
  walls.add(new Wall(new Position((int) (width-width/8) * 1/8, (int) height * 3/4)));
  walls.add(new Wall(new Position((int) (width-width/8) * 1/2, (int) height * 3/4)));
  walls.add(new Wall(new Position((int) (width-width/8) * 7/8, (int) height * 3/4)));

  player = new Player(aliens);
}

void draw() {
  background(255);
  textSize(18);
  fill(0, 102, 153);
  text("Score: "+Score.getInstance().getKilled(), 5, 18);
  for (Wall wall : walls) {
    wall.display();
  }
  player.display();
  player.move(1);
  player.shoot(aliens);
  for (Ship alien : aliens) {
    alien.display();
    alien.move(1);
    if (alien.position.distance(player.position.getX(), player.position.getY()) < height/3) {
      alien.shoot(new ArrayList<Ship>() {
        {
          add(player);
        }
      }
      );
    }
    for (Wall wall : walls) {
      for (Projectile projectile : alien.projectiles) {
        if (projectile.position.distance(wall.position.getX(), wall.position.getY()) < 10) {
          projectile.absorbed();
        }
      }
    }
  }
}
