PFont f;

int xPos;
int yPos;

int linex;
int liney;
int linex2;
int liney2;

float radius1;
float radius2;
float radius3;
float radius4;

int r1=39;
int g1=39;
int b1=39;
int r2=241;
int g2=179;
int b2=166;
int r3=217;
int g3=187;
int b3=133;
int r4=133;
int g4=178;
int b4=217;

int speedX;
int speedY;



void setup(){
  size(800,500);
  
  xPos= 250;
  yPos= 80;
  
  radius1= 10;
  radius2= 20;
  radius3= 30;
  radius4= 40;
  
  linex = 250;
  liney = 350;
  linex2 = 550;
  liney2 = 350;
  
  f = createFont("Arial",50,true);
  textFont(f,20);
  
  speedY= 2;
}



void draw(){
  
  line(linex, liney, linex2, liney2);
  
  background(255);
  noStroke();
  fill(r4,g4,b4);
  yPos+= speedY;
  ellipse(xPos, yPos, radius1, radius1);
  ellipse(xPos-100, yPos+200, radius2, radius2);
  ellipse(xPos+400, yPos+50, radius3, radius3);
  ellipse(xPos+250, yPos+350, radius4, radius4);
  ellipse(xPos+450, yPos+250, radius1, radius1);
  
  if(yPos> height){
    speedY*= -1;
    fill(0,255,0);
    println("The speed is:");
    println(speedY);
  }else if(yPos< 0){
    speedY*= -1;
    fill(0,0,255);
    println("The speed is:");
    println(speedY);
    
  }
  
  fill(r1,g1,b1);
  triangle(300, 150, 350, 100, 350, 150);
  triangle(300, 150, 300, 200, 350, 200);
  triangle(400, 150, 400, 200, 450, 200);
  triangle(450, 150, 450, 200, 500, 150);
  triangle(350, 200, 350, 250, 400, 200);
  triangle(400, 250, 400, 300, 450, 250);
  
  fill(r2,g2,b2);
  noStroke();
  triangle(350, 100, 350, 150, 400, 150);
  triangle(400, 150, 450, 100, 450, 150);
  triangle(300, 150, 350, 150, 350, 200);
  triangle(350, 200, 400, 150, 400, 200);
  triangle(300, 200, 350, 200, 350, 250);
  triangle(400, 200, 400, 250, 450, 250);
  triangle(450, 200, 450, 250, 500, 200);
  triangle(350, 250, 400, 250, 400, 300);
  
  fill(r3,g3,b3);
  noStroke();
  triangle(450, 100, 450, 150, 500, 150);
  triangle(350, 150, 350, 200, 400, 150);
  triangle(400, 150, 450, 150, 450, 200);
  triangle(450, 200, 500, 150, 500, 200);
  triangle(350, 250, 400, 200, 400, 250);
  triangle(400, 200, 450, 200, 450, 250);
  
  text("First my mother. Forever my friend.",245,340);
  
  
}