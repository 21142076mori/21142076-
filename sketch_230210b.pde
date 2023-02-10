float angle = 0.0;
float angleDirection = 1; 
float speedangel = 0.005;

float x;


void setup(){size(400,400,P3D);
x = 0;
}

void draw(){background(255);

line(0,210,width,210);

 x += 1;
 if (x > width) x = -10;
 rect(x, height/2, 10, 10);
  
 if(keyPressed){
  if(key=='s'){speedangel=0;}
  if(key=='m'){speedangel=0.005;}}
  
translate(20, 25);  
rotate(angle);
strokeWeight(24);
line(0, 0, 120, 0);

translate(120, 0);  
rotate(angle * 2.0); 
strokeWeight(12);
line(0, 0, 90, 0);
translate(90, 0);  
rotate(angle * 2.5); 
strokeWeight(6);
line(0, 0, 60, 0);

angle += speedangel * angleDirection; 
if((angle > QUARTER_PI)||(angle < 0)){
angleDirection = - angleDirection; }}
