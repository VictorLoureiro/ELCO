
float NDVIMedio (float[][] NDVI){
  
  float NDVIMedio = 0; float NDVISuma = 0;
  int cuentas = 0;
  
  /* Recorremos el mapa NDVI para localizar los pixels correspondientes a vegetación */
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {     
      /* Consideramos vegetación NDVIs superiores a 0.1  */
      if (NDVI[x][y]>=0.2){
        NDVISuma+= NDVI[x][y];
        cuentas ++;
      }    
    }
  }
  
  /* Calculamos la media en fución del números de pixels recogidos */
  NDVIMedio = NDVISuma/cuentas;
  return NDVIMedio;
  
}
