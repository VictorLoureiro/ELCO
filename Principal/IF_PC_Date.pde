  
  // Función para obtener la fecha del ordenador
  String PC_Date(){
   DD_MM_YY[2] = year();    
   DD_MM_YY[1] = month(); 
   DD_MM_YY[0] = day(); 
   return join(nf(DD_MM_YY, 2), " - ");
  }
