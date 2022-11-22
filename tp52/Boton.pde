class Boton {
  int x, y, tam;
  String tex;
  Espacio espacio;
  Boton(Espacio espacio, int x, int y, int tam, String tex) {
    this.espacio = espacio;
    this.tex = tex;
    this.x = x;
    this.y = y;
    this.tam = tam;
  }
  void dibujar() {
    if (this.tex.equals("Jugar")) {
      rect(this.x, this.y, this.tam, this.tam);
      text("Jugar", this.x, this.y);
    }
  }
  void presionado() {
    if (mousePressed && this.espacio.estadoID == 0) {
      println(mouseX, " ", mouseY);
      this.espacio.estadoID = 2;
    }
  }
}
