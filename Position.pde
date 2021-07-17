public class Position {
    private int x; // Position horizontal
    private int y; // Position vertical

    public int getX() {
        return x;
    }

    public void setX(int x) {
        this.x = x;
    }

    public int getY() {
        return y;
    }

    public void setY(int y) {
        this.y = y;
    }
    
    public float distance(int x1, int y1){
      return sqrt((this.x-x1)*(this.x-x1)+(this.y-y1)*(this.y-y1));
    }

    public Position(int x, int y) {
        this.x = x;
        this.y = y;
    }
}
