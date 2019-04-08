  
  // Función para actualizar estados 
  void update(int x, int y){

   if (overRect(camaraX, camaraY, rectSize, rectSize)) { 
      rectOver1=true;  
      rectOver2=false;  
      rectOver3=false;  
      rectOver4=false; 
    }else if (overRect(sensoresX, sensoresY, rectSize, rectSize)){  
      rectOver1=false;  
      rectOver2=true;  
      rectOver3=false;  
      rectOver4=false; 
    }else if (overRect(historialX, historialY, rectSize, rectSize)){  
      rectOver1=false;  
      rectOver2=false;  
      rectOver3=true;  
      rectOver4=false; 
    }else if (overRect(aboutX, aboutY, rectSize, rectSize)){  
      rectOver1=false;  
      rectOver2=false;  
      rectOver3=false;  
      rectOver4=true; 
    } else {
      rectOver1=false;  
      rectOver2=false;  
      rectOver3=false;  
      rectOver4=false;  
    }
  }
  
  boolean overRect(int x, int y, int width, int height) // Si las coordenadas del mouse corresponden a las indicadas en la llamada desde "overRect" devuelve un "true", sino un "false"
  {
    if (mouseX >= x && mouseX <= x+width &&     // Si las coordenadas son correctas envía true, sino false
        mouseY >= y && mouseY <= y+height) {
      return true;
    } else {
      return false;
    }
  }
  
