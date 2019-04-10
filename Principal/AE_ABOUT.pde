
  void ABOUT(){
    
   background(255, 255, 255);  // Color de fondo pantalla
    
    update(mouseX, mouseY);  // Llamamos a la función update para que actualize posición del mouse

    // Escritura texto INICIO tras la pulsación de un botón
    fill(234, 93, 21);
    textFont(font44);  // Determinamos tipo de letra
    textSize(140);  // Tamaño de la letra del botón
    text("PLANTHY", 50, 280);  // Imprimimos el contenido de la variable y lo posicionamos
  
    
  // BOTON CAMARA
  
      if(rectOver1) {  // Si las coordenadas del mouse coinciden con las del botón "rectOver1" será "true", sino "false"
        fill(rectHighlight);  // Al coincidir coordenadas pintamos el botón
       
      } else {
        fill(rectColor);  // Mientras las coordenadas no coincidan pintamos el botón de azul/verde
        
      }
      
      stroke(255);  // Pintamos el perfil del cuadrado de blanco
      rect(camaraX, camaraY, rectSize, rectSize);  // Dibujamos el cuadrado que hará de botón
      fill(0);
      textFont(font22);  // Determinamos tipo de letra
      text("CAMARA", camaraTextX, camaraTextY);  // Imprimimos el contenido de la variable y lo posicionamos
     
 
 // BOTON SENSORES
  
      if(rectOver2) {  // Si las coordenadas del mouse coinciden con las del botón "rectOver1" será "true", sino "false"
        fill(rectHighlight);  // Al coincidir coordenadas pintamos el botón
       
      } else {
        fill(rectColor);  // Mientras las coordenadas no coincidan pintamos el botón de azul/verde
        
      }
      
      stroke(255);  // Pintamos el perfil del cuadrado de blanco
      rect(sensoresX, sensoresY, rectSize, rectSize);  // Dibujamos el cuadrado que hará de botón
      fill(0);
      textFont(font22);  // Determinamos tipo de letra
      text("SENSORES", sensoresTextX, sensoresTextY);  // Imprimimos el contenido de la variable y lo posicionamos
     
 
 // BOTON HISTORIAL
  
  
      if(rectOver3) {  // Si las coordenadas del mouse coinciden con las del botón "rectOver1" será "true", sino "false"
        fill(rectHighlight);  // Al coincidir coordenadas pintamos el botón
       
      } else {
        fill(rectColor);  // Mientras las coordenadas no coincidan pintamos el botón de azul/verde
        
      }
      
      stroke(255);  // Pintamos el perfil del cuadrado de blanco
      rect(historialX, historialY, rectSize, rectSize);  // Dibujamos el cuadrado que hará de botón
      fill(0);
      textFont(font22);  // Determinamos tipo de letra
      text("HISTORIAL", historialTextX, historialTextY);  // Imprimimos el contenido de la variable y lo posicionamos
     
   
 // BOTON ABOUT
  
  
      if(rectOver4) {  // Si las coordenadas del mouse coinciden con las del botón "rectOver1" será "true", sino "false"
        fill(rectHighlight);  // Al coincidir coordenadas pintamos el botón
       
      } else {
        fill(rectHighlight);  // Mientras las coordenadas no coincidan pintamos el botón de azul/verde
        
      }
      
      stroke(255);  // Pintamos el perfil del cuadrado de blanco
      rect(aboutX, aboutY, rectSize, rectSize);  // Dibujamos el cuadrado que hará de botón
      fill(0);
      textFont(font22);  // Determinamos tipo de letra
      text("ABOUT", aboutTextX, aboutTextY);  // Imprimimos el contenido de la variable y lo posicionamos
   
 // ACTIVACIÓN Y DESACTIVACIÓN FLAGS
 
      if(IF_Camara){  // Si la variable "IF_Camara" está activa (true)
        ABOUT=false;
        CAMARA=true;
        IF_Camara=false;
      }
      
     
      if(IF_Sensores){  // Si la variable "IF_Sensores" está activa (true)
        ABOUT=false;
        SENSORES=true;
        IF_Sensores=false;
      }  
      
      
      if(IF_Historial){  // Si la variable "IF_Historial" está activa (true)
        ABOUT=false;
        HISTORIAL=true;
        IF_Historial=false;
      }
      
        /*
      if(IF_About){  // Si la variable "IF_About" está activa (true)
        ABOUT=false;
        ABOUT=true;
        IF_About=false;
      }
 */
  
    
  // Escritura de la fecha y hora
  fill(31, 125, 222);  // Determinamos color de la letra
  textFont(font22);  // Determinamos tipo de fuente
  text(curr_date, 25, 30);  // Imprimimos el contenido de la variable y lo posicionamos
  text(curr_time, 250, 30);  // Imprimimos el contenido de la variable y lo posicionamos
  
  }
