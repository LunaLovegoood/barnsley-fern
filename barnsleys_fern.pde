final int padding = 7;

float x = 0;
float y = 0;

float barnsleyMatrix[][];

void setup() {
  size(600, 600);
  background(255);
  
  frameRate(10000);
 
  
  strokeWeight(1);
  
  barnsleyMatrix = blackSpleenwortFern;
}

void draw() {
  for (int i = 0; i < 100; i++) {
    stroke(36 + (int)random(50), 140 + (int)random(50), 13 + (int)random(50));
    point(map(x, -2.1820, 2.6558, padding, width - padding), map(y, 0, 9.9983, height - padding, padding)); // Black Spleenwort fern
    //point(map(x, -1.7724, 1.7724, padding, width - padding), map(y, 0, 7.6324, height - padding * 2, padding)); // Thelypteridaceae fern
    getNextPoint(); 
  }
}

void getNextPoint() {
  float probability = random(1);
  
  float nextX;
  float nextY;
  int row;
  
  if (probability < barnsleyMatrix[0][p]) { // First transform
    row = 0;
  } else if (probability < barnsleyMatrix[1][p]) { // Second transform
    row = 1;
  } else if (probability < barnsleyMatrix[2][p]) { // Third tranform
    row = 2;
  } else { // Fourth transform
    row = 3;
  }
  
  nextX = barnsleyMatrix[row][a] * x + barnsleyMatrix[row][b] * y + barnsleyMatrix[row][e];
  nextY = barnsleyMatrix[row][c] * x + barnsleyMatrix[row][d] * y + barnsleyMatrix[row][f];
  
  x = nextX;
  y = nextY;
}

void mousePressed() {
  saveFrame("snapshots/fern-######.png");
}
