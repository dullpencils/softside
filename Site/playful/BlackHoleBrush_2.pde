int sizer = width/6;
float change = sizer/4;

void setup() {
  size(1000, 500);
  background(255);
  frameRate(15);
}

void draw() {

  if (keyPressed) {

    if (key=='r') {
      ellipse(mouseX, mouseY, 12.5, 25);
      strokeWeight(1);
      stroke(255, 0, 0);
      noFill();
    }

    if (key==' ') {
      background(255);
    }
  }

  if (mousePressed) {
    ellipse(mouseX, mouseY, sizer, sizer);
    strokeWeight(1);
    stroke(0);
    noFill();
  }

  sizer += change;

  if (sizer>100) {
    change*=-1;
  }

  if (sizer<20) {
    change*=-1;
  }
}
