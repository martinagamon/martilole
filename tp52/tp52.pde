

Espacio espacio;

void setup() {
  size(800, 600);
  espacio = new Espacio();
}
void draw() {

  espacio.dibujar();
}

void keyPressed () {
  //  espacio.jugar();
  espacio.mouse();
  espacio.teclado();
}

void mousePressed() {
  espacio.presionado();
}
