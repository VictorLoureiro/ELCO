  
  // Función para obtener la hora del ordenador
  String PC_Time(){
   PC_Time[2] = second();  // Valores de 0 a 59
   PC_Time[1] = minute();  // Valores de 0 a 59
   PC_Time[0] = hour();    // Valores de 0 a 23
   return join(nf(PC_Time, 2), " : ");  // Devolvemos la hora completa indicando que entre cada número se impriman ":"
  }
