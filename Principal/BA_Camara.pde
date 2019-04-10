import processing.video.*;
  
  Capture cam; 
  PImage img;



void camara(Capture cam, PImage img) {
    
      setupDone++;
  
  if (cam.available() == true) {
    img.copy(cam, 0, 0, cam.width, cam.height, 40, 50, 600, 380);
    img.updatePixels();
    cam.read();
  }
  
  loadPixels();
  cam.loadPixels();
  img.loadPixels(); 
  
  /* Inicializamos las Matrices Contenedoras */
  float [][] matrizRojo = new float[width][height]; float [][] matrizVerde = new float[width][height]; float [][] matrizAzul = new float[width][height];
  float [][] NDVI = new float [width][height]; 
  
  //float NDVIMedio;
  
  float r = 0; float g = 0; float b = 0;
  
  /* Obtenemos las componentes de color RGB de cada pixel */
  colores(img,r,g,b,matrizRojo,matrizVerde,matrizAzul);
  
  /* Calculamos el Índice de Vegetación NDVI en cada pixel*/
  NDVI = ndvi(matrizRojo,matrizAzul,NDVI);
  
  /* Calculamos el NDVI Medio correspondiente a la zona de vegetación */
  NDVIMedio = NDVIMedio(NDVI);
  
  /* Carga los pixels tratados antes */
  
  if(!NDVIperiodico || CAMARA){
    
    updatePixels();
    /* Indicamos el NDVIMedio */
    textSize(28);
    fill(0); //Color Negro (RGB)
    text("NDVI Medio: " + NDVIMedio, 25, height-15);
    
  }
  
}
