PImage img;

void setup() {
  size(536, 490);
  img = loadImage("sunflower.jpg");
}

void draw() {
  
  loadPixels(); 
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
       pixels[loc] =  color(r,g,b); //Descomentar si queremos sacar este mapa
       
       /* Sacamos y guardamos la componente VERDE */
       r = red(0); g = green(img.pixels[loc]); b = blue(0);
       MatrizVerde[x][y] = g; ArrayVerde[x+y*width] = g;
       /* Carga los pixels verdes en el display */
       //pixels[loc] =  color(r,g,b); //Descomentar si queremos sacar este mapa
       
       /* Sacamos y guardamos la componente AZUL */
       r = red(0); g = green(0); b = blue(img.pixels[loc]);
       MatrizAzul[x][y] = b; ArrayAzul[x+y*width] = b;
       /* Carga los pixels azules en el display */
       //pixels[loc] =  color(r,g,b); //Descomentar si queremos sacar este mapa
       
    }
  }
  
  /* Carga los pixels tratados antes */
  updatePixels();
  noLoop();
}
