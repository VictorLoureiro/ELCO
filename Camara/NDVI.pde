
float [][] ndvi (float[][] MatrizRojo, float [][] MatrizAzul, float[][] NDVI){
  
  /* El canal ROJO de la Pi NoIR Camera V2 guarda el espectro NIR */
  /* El canal AZUL de la Pi NoIR Camera V2 guarda el espectro VIS */
  /* NDVI = (NIR - VIS) / (NIR + VIS) = (ROJO - AZUL) / (ROJO + AZUL) */
  
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      NDVI[x][y] = (MatrizRojo[x][y] - MatrizAzul[x][y])/(MatrizRojo[x][y] + MatrizAzul[x][y]);
    }
  }
  
  return NDVI;
  
}
