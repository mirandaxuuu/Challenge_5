class Monster {
  int r,g,b;
  float x=0;
  float y=0;
  
  Monster(int red, int green, int blue) {
    r=red;
    g=green;
    b=blue;
  }
  void display() {
    //body
    fill(71, 31, 31);
    ellipse(370, 550, 300, 350);
    
    //head
    fill(r,g,b); //156, 38, 50
    ellipse(260, 350, 320, 260);
    
    //eyes
    fill(255, 255, 255);
    ellipse(200, 330, 80, 80);
    ellipse(320, 340, 80, 80);
    
    //legs
    triangle(290, 720, 380, 730, 340, 800);
    triangle(440, 720, 510, 670, 490, 780);
    
    //ears
    arc(100, 350, 80, 80, 1.5, 4.8, CHORD);
    arc(420, 325, 80, 80, -1.9, 1.4, CHORD);
    
    //antenna
    fill(255, 200, 200);
    rect(180, 75, 50, 150);
    rect(280, 95, 50, 125);

    noFill();
    strokeWeight(3);
    arc(260, 410, 80, 80, 0, PI);
    
    
    //arms
    fill(197, 31, 31);
    quad(220, 550, 190, 600, 210, 650, 240, 600);
    quad(420, 510, 390, 550, 410, 610, 440, 560);
    
    //top of antenna
    strokeWeight(4);
    line(200, 70, 220, 20);
    line(300, 90, 340, 25);
    
    
    //pupils
    fill(0, 0, 0);
    noStroke();
    ellipse(180+x, 310+y, 25, 25);
    ellipse(340+x, 340+y, 25, 25);
  }
  
  void update(){ //pupils follow mouse's position
    x=map(mouseX,0,width,-10,5);
    y=map(mouseY,0,width,-5,2);    
    
  }
}