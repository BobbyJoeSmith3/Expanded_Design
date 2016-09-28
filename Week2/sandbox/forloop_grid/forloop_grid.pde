size(500, 600);
background(0);

strokeWeight(2);
stroke(255);

for(int x = 0; x < width; x += 20) {
  line(x, 0, x, height);
}
for(int y = 0; y < height; y += 20) {
  stroke(255);
  line(0, y, width, y);
}