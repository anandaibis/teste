float  vx[] = new float [100];
float  vy[] = new float [100];
float  posx[] = new float [100];
float  posy[] = new float [100];
float  tam[] = new float [100];
float  linha[] = new float [100];
color cor[] = new color[100];

void setup() {

  for (int i = 0; i < 50; i++) {
    vx[i] = random(1,10) ;
    vy[i] = 3 ;  
    posy[i] = 500 ;
    posx[i] = 5 ;
    tam[i] = random(5,100) ;
    linha[i] = 10;
    float r = random(100,255);
    cor[i] = color(r, random(r/2,r), 0);
  }

  size (800,800);
  background (255);
  smooth();
}
void draw () {

  background (255);
  for (int i = 0 ; i < 50; i++) {
    
    roda(posx[i], posy[i], tam[i], linha[i], cor[i]);

    posx[i] = posx[i] + vx[i];

    if (posx[i] > 1000) {
      posx[i]=0;
      vx[i]=random(10);
      tam[i]= random(500);
      linha[i] = random(10,110);
    }
  }
}



void roda(float x, float y, float t, float linha, color cor) {

  pushMatrix();
  strokeWeight (linha);
  translate(x, y);
  rotate(x/50.0);
  fill(cor);
  ellipse(0,0, t, t);
  fill(0);
  ellipse(20,0,10,10);
  popMatrix();
}

