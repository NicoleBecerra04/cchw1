color bgColor;
ArrayList<float[]> stars; // star list

void setup() {
  size(1000, 1000);
  generateBackground(); 
  
  // initialize with original stars
  stars = new ArrayList<float[]>();
  float[][] initialStars = {
    {70, 70, 25}, {80, 360, 80}, {40, 600, 20}, {600, 70, 10},
    {100, 800, 15}, {160, 620, 10}, {500, 750, 15}, {860, 780, 10},
    {940, 680, 13}, {200, 120, 14}, {370, 249, 8}, {930, 60, 10},
    {700, 500, 12}, {200, 280, 20}, {530, 810, 8}
  };
  for (int i = 0; i < initialStars.length; i++) {
    stars.add(initialStars[i]);
  }
}

void draw() {
  background(bgColor);

  drawStars();
  drawCircles();
  drawLines();
    // draw instructions text
  drawInstructions();
}

void drawInstructions() {
  fill(255); 
  textSize(14); 
  textAlign(RIGHT, TOP); 
  text("Press spacebar for new background color\nand click mouse to add stars :)", width - 20, 20);

}

void keyPressed() {
  if (key == ' ') {
    generateBackground(); 
  }
}

void mousePressed() {
  // add new star at mouse position
  float size = random(8, 15); 
  stars.add(new float[] {mouseX, mouseY, size});
}

void generateBackground() {
  // darker cool colors
  float r = random(10, 60);   
  float g = random(20, 80);   
  float b = random(80, 150);  
  bgColor = color(r, g, b);
}

void drawStars() {
  noStroke();
  fill(255); 
  for (int i = 0; i < stars.size(); i++) {
    float[] s = stars.get(i);
    circle(s[0], s[1], s[2]);
  }
}

void drawCircles() {
  // filled large circle (left-middle)
  pushStyle();
  noStroke();
  fill(255);
  circle(410, 500, 200);
  popStyle();

  // filled top-right circle
  pushStyle();
  noStroke();
  fill(255);
  circle(800, 170, 120);
  popStyle();

  // outlined top-right larger ring
  pushStyle();
  noFill();
  stroke(255);
  strokeWeight(1);
  circle(800, 170, 170);
  circle(0, 0, 850);

  popStyle();

  // thick white arch (bottom-right)
  pushStyle();
  noFill();
  stroke(255);
  strokeWeight(40);
  circle(980, 790, 500);
  popStyle();

  // other big outlined circles
  pushStyle();
  noFill();
  stroke(255);
  strokeWeight(1);
  circle(980, 790, 600);
  circle(980, 790, 1300);
  popStyle();
}

void drawLines() {
  stroke(255);
  strokeWeight(1);
  
  // vertical
  line(70, 42, 70, 800);
  line(100, 500, 100, 1000);
  line(130, 520, 130, 1000);
  line(160, 540, 160, 1000);
  line(940, 600, 940, 1000);
  line(920, 640, 920, 1000);

  // horizontal
  line(42, 70, 700, 70);
  line(42, 90, 400, 90);
  line(500, 750, 970, 750);
  line(720, 780, 970, 780);

  // diagonal
  line(200, 120, 550, 385);
}
