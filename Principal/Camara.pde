

void camara(Capture cam, PImage img) {
  
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
  float [][] NDVI = new float [width][height]; float NDVIMedio;
  float r = 0; float g = 0; float b = 0;
  
  /* Obtenemos las componentes de color RGB de cada pixel */
  colores(img,r,g,b,matrizRojo,matrizVerde,matrizAzul);
  
  /* Calculamos el Índice de Vegetación NDVI en cada pixel*/
  NDVI = ndvi(matrizRojo,matrizAzul,NDVI);
  
  /* Calculamos el NDVI Medio correspondiente a la zona de vegetación */
  NDVIMedio = NDVIMedio(NDVI);
  
  /* Carga los pixels tratados antes */
  if(boton_camara){
    updatePixels();
    /* Indicamos el NDVIMedio */
    textSize(28);
    text("NDVI Medio: " + NDVIMedio,width-350,height-15);
    fill(0); //Color Negro (RGB)
  } else {}
  
}
