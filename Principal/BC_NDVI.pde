

float [][] ndvi (float[][] MatrizRojo, float [][] MatrizAzul, float[][] NDVI){
  
  /* El canal ROJO de la Pi NoIR Camera V2 guarda el espectro NIR */
  /* El canal AZUL de la Pi NoIR Camera V2 guarda el espectro VIS */
  /* NDVI = (NIR - VIS) / (NIR + VIS) = (ROJO - AZUL) / (ROJO + AZUL) */
  
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      
      int loc = x + y*width;
      NDVI[x][y] = (MatrizRojo[x][y] - MatrizAzul[x][y])/(MatrizRojo[x][y] + MatrizAzul[x][y]);
      
      /* Elegimos que el NDVI varíe desde el VERDE (NDVI = 1) hasta el ROJO (NDVI = -1) pasando por el AMARILLO (NDVI = 0) */
      /* Por ello el ROJO varía de 0 a 255 para un NDVI de 1 a 0 */
      float r = 255*(NDVI[x][y]-1)/(-2);
      /* Por ello el VERDE varía de 255 a 0 para un NDVI de 0 a -1 */
      float g = 255*(NDVI[x][y]+1)/(2);
      
      if(!NDVIperiodico || CAMARA){
        
          if(x<40||x>639||y<50||y>429){
            pixels[loc]=color(255,255,255);
          }else if(NDVI[x][y]<=1 && NDVI[x][y]>0){
            pixels[loc]=color(r,255,0);
          }else {
            pixels[loc]=color(255,g,0); 
          } 
          
      }
    }
  }
  
  return NDVI;
  
}
