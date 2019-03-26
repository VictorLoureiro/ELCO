import processing.video.*;

Capture cam;
PImage img;

void setup() {
  size(640, 480);
  String[] cameras = Capture.list();
  img = createImage(width, height, RGB);
  
  if (cameras.length == 0) {
    println("No hay cámaras conectadas!");
    exit();
  } else {
    println("Cámaras disponibles:");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }
    
    cam = new Capture(this, cameras[0]);
    cam.start();     
  }   
}

void draw() {
  
  if (cam.available() == true) {
    img.copy(cam, 0, 0, cam.width, cam.height, 0, 0, cam.width, cam.height);
    img.updatePixels();
    cam.read();
  }
  
  loadPixels();
  cam.loadPixels();
  img.loadPixels(); 
  
  /* Inicializamos las Matrices Contenedoras */
  float [][] matrizRojo = new float[width][height]; float [][] matrizVerde = new float[width][height]; float [][] matrizAzul = new float[width][height];
  float [][] NDVI = new float [width][height];
  float r = 0; float g = 0; float b = 0;
  
  /* Llamamos a la función colores para obtener las componentes de color de cada pixel */
  colores(img,r,g,b,matrizRojo,matrizVerde,matrizAzul);
  
  /* Llamamos a la función NDVI para calcular el Índice de Vegetación en cada pixel*/
  NDVI = ndvi(matrizRojo,matrizAzul,NDVI);
  
  /* Carga los pixels tratados antes */
  updatePixels();
}
