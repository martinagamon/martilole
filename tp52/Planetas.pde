class Planetas {
  PImage [] planetas;
  int indicePlanetas, vel;
  float posX, posY, x, y;

  Planetas () {
    this.vel = 8;
    indicePlanetas = 0;
    planetas = new PImage [5];
    for (int i=0; i<5; i++) {
      planetas [i] = loadImage (i+".png");
    }
    posY = random (35, 365);
    posX = -200;
  }

  void dibujar () {
    pushStyle ();
    image (planetas [indicePlanetas], posX, posY);
    popStyle ();
  


    if (posX > width + 200) {
      posY = -200;
      posX = random (35, 565);
      indicePlanetas ++;
      vel +=20;
    }
    
    if (indicePlanetas >= 5) {
      indicePlanetas = 0;
    }
  }
  void actualizar() {

    this.posX  += this.vel;
  }
}
