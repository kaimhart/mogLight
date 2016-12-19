PImage mog;
int x = 0;
int y = 0;

void setup() {
  size(584, 579);
  mog = loadImage("Moogle.jpg");
  
  background(50);
  mog.loadPixels();
  loadPixels();
}

void draw() {
  
  for (int i =0; i < mog.width; i++) {
    for (int j = 0; j < mog.height; j++) {
      int loc = j*mog.width + i;
      
      float r = red(mog.pixels[loc]);
      float g = green(mog.pixels[loc]);
      float b = blue(mog.pixels[loc]);
      
      
      float d = dist(mouseX, mouseY, i, j);
      pixels[loc] = color(r-d, g-d, b-d);
    }
    
  }
  updatePixels();
}