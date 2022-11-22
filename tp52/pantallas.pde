class Pantallas {
  Boton botonJugar;
  int time;
  Pantallas(Boton botonJugar) {
    this.botonJugar = botonJugar;
    time=300;
  }
  void presionada() {
    this.botonJugar.presionado();
  }

  void dibujar(int estadoID) {
    if (estadoID == 0) {
      this.pantallaInicio();
    } else  if (estadoID == 1) {
      this.pantallaJuego();
    } else  if (estadoID == 2) {
      this.pantallaGanaste();
    }
  }

  void pantallaInicio() {
    push();
    background(0);
    this.botonJugar.dibujar();
    pop();
  }

 void pantallaJuego() {
    espacio.dibujar();
    time-=2;
    if( time == 0){
      pantallaPerdiste();
      
      
    }
  }

  void pantallaPerdiste() {
  }

  void pantallaGanaste() {
  }
  //void presionar () {
  // if (key == 'p' && .estado0 == 0 ) {
  // this.Pantallas.pantallaJuego;
}
