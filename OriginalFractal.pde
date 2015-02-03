public void setup(){
    size(600, 600);
    background(0);
    stroke(100);
    smooth();
    noLoop();
}
 
public void tri(float x, float y, float l, int level){
    line(x, y, x, y+l);
    line(x, y, x+l*sqrt(3)/2, y-l/2);
    line(x, y, x-l*sqrt(3)/2, y-l/2);
    
    if (level>1){
    l*=.5;
    level= level-1;
    tri(x, y+l, l, level);
    tri(x+l*sqrt(3)/2, y-l/2, l, level);
    tri(x-l*sqrt(3)/2, y-l/2, l, level);
     
    }
}
     
public void draw(){
    tri(width/2, height/2-50, 300, 5);
    }
