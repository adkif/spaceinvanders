public static class Score {
  private int killed;
  private static final Score instance;
  static {
    instance = new Score();
  }
  private Score() {
  }
  public void update() {
    this.killed++;
  }

  public static Score getInstance() {
    return instance;
  }

  public int getKilled() {
    return this.killed;
  }
}
