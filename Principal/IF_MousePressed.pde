  
  // Función para detectar acción del mouse
  void mousePressed()
  {
        
    if(rectOver1) {  // Si clicamos el mouse y rectOver1 es "true" significa que estamos encima del botón
      IF_Camara=true;
    }else
    
    if(rectOver2) {  // Si clicamos el mouse y rectOver2 es "true" significa que estamos encima del botón
      IF_Sensores=true;
    }else
        
    if(rectOver3) {  // Si clicamos el mouse y rectOver3 es "true" significa que estamos encima del botón
      IF_Historial=true;
    }else
      
    if(rectOver4) {  // Si clicamos el mouse y rectOver4 es "true" significa que estamos encima del botón
      IF_About=true;
    }  
  
}
