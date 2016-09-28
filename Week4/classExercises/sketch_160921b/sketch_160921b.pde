String[] someText = {"a", "b", "c", "d"};

int text_size = 34;

void setup() {
  size(600, 600);
  textSize(text_size);
}

void draw() {
  background(0);
  if (key == 'a') {
    text(someText[0], 300, 300);
  }
  if (key == 'b') {
    text(someText[1], 300, 300);
  }
  if (key == 'c') {
    text(someText[2], 300, 300);
  }
  if (key == 'd') {
    text(someText[3], 300, 300);
  }
}

void mousePressed() {
  
}