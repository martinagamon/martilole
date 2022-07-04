int cant, tam, newMemoria;
PImage taylor, zayn, bad, queen, imagine, rauw;
PImage []memoria = new PImage[newMemoria];



void setup() {
  size(800, 600);
  cant= 4;
  tam= 800/cant;
  newMemoria=5;
  memoria [0]= loadImage("taylorSwift.jpg");
  memoria [1]= loadImage("zayn.jpg");
  memoria [2]=  loadImage("badBunny.jpg");
  memoria [3]=  loadImage("queen.jpg");
  memoria [4]=  loadImage("iamgineDragons.jpg");
  memoria [5]= loadImage("rauw.jpg");
}

void draw() {
  for (int i=0; i< cant; i++) {
    for (int l=0; l<cant; l++) {
      rect(i*tam, l*tam, 400, 400);
      image(memoria[1],200, 200);
    }
  }
}
