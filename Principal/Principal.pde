import processing.video.*;

  /* FLAGS */
  /* Flags de la cámara */
  boolean boton_camara = true; boolean hora_NDVI = false; boolean luz = true;
  /* Flags de los sensores */
  
  /* Cámara */
  Capture cam; PImage img;

void setup() {
    
  /* SETUP CAMARA */
  size(640, 480);
  String[] cameras = Capture.list();
  img = createImage(width, height, RGB);
  
  if (cameras.length == 0) {
    println("No hay cámaras conectadas!");
    exit();
  } 
  else {
    println("Cámaras disponibles:");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }
    cam = new Capture(this, cameras[0]);
    cam.start();     
  }   
}

void draw() {
  
  /* Activamos la CÁMARA cuando haya luz y pulsemos el botón el periodo de NDVI */
  if(luz && (hora_NDVI||boton_camara)){
    camara(cam,img);
  }
  
  
}
