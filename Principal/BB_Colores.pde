

void colores(PImage img, float r, float g ,float b, float [][] MatrizRojo,float [][] MatrizVerde, float [][] MatrizAzul) {
  
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
       
       int loc = x + y*width;
      
       /* Guardamos la componente ROJA */
       r = red(img.pixels[loc]); g = green(0); b = blue(0);
       MatrizRojo[x][y] = r;
       //pixels[loc] =  color(r,g,b); //Descomentar si queremos cargar los pixels rojos en el display
       
       /* Guardamos la componente VERDE */
       r = red(0); g = green(img.pixels[loc]); b = blue(0);
       MatrizVerde[x][y] = g;
       //pixels[loc] =  color(r,g,b); //Descomentar si queremos cargar los pixels verdes en el display
       
       /* Guardamos la componente AZUL */
       r = red(0); g = green(0); b = blue(img.pixels[loc]);
       MatrizAzul[x][y] = b;
       //pixels[loc] =  color(r,g,b); //Descomentar si queremos cargar los pixels azules en el display 
    }
  }
}
