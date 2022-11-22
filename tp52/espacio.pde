class Espacio {

  PImage fondo;
  float x, y;
  int estadoID, timer;
  Espacio espacio ;
  Planetas planetas; 
  Estrellas varias;
  Nave n1;
  Pantallas pantalla;
  Boton botonJugar;
  Espacio() {
    this.estadoID = 0;
    this.timer = 0;
    fondo=loadImage("espacio.jpg");
    this.botonJugar = new Boton(this, width/2, height/2, width/10, "Jugar");
    this.pantalla = new Pantallas(this.botonJugar);
    varias = new Estrellas();
    n1 = new Nave();
    planetas = new Planetas();
  }

  //MÉTODOS
  void presionado() {
  }
  void dibujar() { 
    //dibujará el escenario
    image(fondo, 0, 0, 800, 600);
    varias.crear();
    n1.dibujar();
    planetas.dibujar();
    planetas.actualizar();
    this.pantalla.dibujar(this.estadoID);
    this.pantalla.presionada();
    timer++;

  }


  void jugar() {
  }


  void reiniciar() {
    //todos los valores a 0
  }
  void mouse() {
    varias.colorear();
  }

  void teclado() {
    varias.reiniciar();
    n1.mover();
  }
}
