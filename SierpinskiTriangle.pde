public void setup() {
  size(820, 500);
}

public void draw() {
  background(0);
  sierpinksi (10, 35, 200, 7, color(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255))));
}
 
public void sierpinksi (int x_, int y_, int l_, int n_, color c_) {
    if(n_ == 0) {
      fill(c_);
      triangle(x_,y_,x_+10,y_,x_+5,y_+10);
    }
    else {
        sierpinksi(x_, y_+l_, l_/2, n_-1, color(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255))));
        sierpinksi(x_+l_, y_, l_/2, n_-1, color(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255))));
        sierpinksi(x_+l_*2, y_+l_, l_/2, n_-1, color(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255))));
    }
}
