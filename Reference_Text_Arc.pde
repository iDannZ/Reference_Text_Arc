// post Reference_Text_Arc code here
Rain r1;

int numDrops = 1;
Rain[] drops = new Rain[numDrops]; // Declare and create the array

void setup() {
  size(500, 500);
  background(255, 255, 255, 99);
  smooth();
  noStroke();


  //Loop through array to create each object
  for (int i = 0; i < drops.length; i++) {

    drops[i] = new Rain(); // Create each object
    r1 = new Rain();
  }
}

void draw() {
  noStroke();
  fill(255);
  rect(0, 0, 500, 500);



  //Loop through array to use objects.
  for (int i = 0; i < drops.length; i++) {
    drops[i].fall();
  }
}

class Rain {
  float r = random(500);
  float y = random(-height);

  void fall() {
    y = y + 7;
    stroke(0, 0, 0);
    fill(0, 0, 0);
    textAlign(CENTER);
    textSize(30);
    text("Hellc", y, r);
    noFill();
    strokeWeight(4);
    arc(r+20, r-8, 15, 15, radians(270), radians(360));
    arc(r+20, r-8, 15, 15, radians(0), radians(90));
    if (y>height) {
      r = random(500);
      y = random(-200);
    }
  }
}
