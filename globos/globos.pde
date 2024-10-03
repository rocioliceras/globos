PImage payaso;
PImage circo;

class Globo
{
  float x, y,vx,vy;
  PImage fondo;
  Globo (PImage img,float _x, float _y)
  {
  fondo=img;
   x=_x;
   y=_y; 
   vx=random(-0.25,0.25);
   vy=random(-2,-0.5);
  }

  void update()
  {
    y+=vy;
    x+=vx;
  }

  void dibujate()
  {

      //ellipse(x,y,70,130);
      line(x,y+50,x,y+80);
      imageMode(CENTER);
      image(fondo,x,y,100,100);
  }
  
}

ArrayList<Globo> globos;


void setup()
{

  size(701,480);

  globos = new ArrayList<Globo>();  
  payaso = loadImage("payaso.png");
  
  circo = loadImage("circo.jpg");
  image(circo,0,0);
}

void draw()
{
  background(circo);
  for(int i=0;i<globos.size();i++)
  {
    globos.get(i).update();
    globos.get(i).dibujate();
    
  }
}

void mousePressed()
{
  globos.add(new Globo(payaso,mouseX,mouseY));
}
