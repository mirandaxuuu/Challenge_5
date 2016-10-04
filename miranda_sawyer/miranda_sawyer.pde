Monster sam;

void setup() {
  size(700, 900);
  background(205, 164, 158);
  sam = new Monster(156, 38, 50); //sam is a new instance of the monster
}
void draw() {
  background(205,164,158);
  sam.display(); //draw sam
  sam.update(); //makes sam interactive by checking mouse's location
}