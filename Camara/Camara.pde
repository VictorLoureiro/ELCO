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
  
  
  /* Cargamos los Arrays y Matrices Contenedoras */
  float [] ArrayRojo = new float[height*width]; float [] ArrayVerde = new float[height*width]; float [] ArrayAzul = new float[height*width];
  float [][] MatrizRojo = new float[width][height]; float [][] MatrizVerde = new float[width][height]; float [][] MatrizAzul = new float[width][height];
  float r,g,b;
  
  
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
       int loc = x + y*width;
      
       /* Sacamos y guardamos la componente ROJA */
       r = red(img.pixels[loc]); g = green(0); b = blue(0);
       MatrizRojo[x][y] = r; ArrayRojo[x+y*width] = r;
       /* Carga los pixels rojos en el display */
       //pixels[loc] =  color(r,g,b); //Descomentar si queremos sacar este mapa
       
       /* Sacamos y guardamos la componente VERDE */
       r = red(0); g = green(img.pixels[loc]); b = blue(0);
       MatrizVerde[x][y] = g; ArrayVerde[x+y*width] = g;
       /* Carga los pixels verdes en el display */
       pixels[loc] =  color(r,g,b); //Descomentar si queremos sacar este mapa
       
       /* Sacamos y guardamos la componente AZUL */
       r = red(0); g = green(0); b = blue(img.pixels[loc]);
       MatrizAzul[x][y] = b; ArrayAzul[x+y*width] = b;
       /* Carga los pixels azules en el display */
       //pixels[loc] =  color(r,g,b); //Descomentar si queremos sacar este mapa 
    }
  }
  
  /* Carga los pixels tratados antes */
  updatePixels();
}
