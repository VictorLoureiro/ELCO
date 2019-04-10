
  
 
    
  void graficaNDVI(){
  

    
   
       float[] FloatNDVIArray1 = float(loadStrings("ndvi.txt")); 
      
      
      for(int i = FloatNDVIArray1.length-30; i < FloatNDVIArray1.length; i++){
      
        
        println("FloatNDVIArray1[" + i + "] = " + FloatNDVIArray1[i]);

/*
        fill(238,199,117);
        stroke(0);
        rect(150, 50+(i-(FloatNDVIArray1.length-30))*13, FloatNDVIArray1[i]*1000, 13);
        fill(0);
        textFont(font22);  // Determinamos tipo de letra
        textSize(13);
        text(FloatNDVIArray1[i], 50, 63+(i-(FloatNDVIArray1.length-30))*13);
*/




        fill(238,199,117);
        rect(40+(i-(FloatNDVIArray1.length-30))*20,430-FloatNDVIArray1[i]*1000,15,FloatNDVIArray1[i]*1000);
        textFont(font22);  // Determinamos tipo de letra
        textSize(13);
        pushMatrix();
        fill(0);
        translate(43+(i-(FloatNDVIArray1.length-30))*20,435);
        rotate(HALF_PI/2);
       // text(FloatNDVIArray1[i], 40+(i-(FloatNDVIArray1.length-30))*20, 330);
        text(FloatNDVIArray1[i], 0, 0);
        popMatrix();

        
 
      }  
            
       stroke(0);  
       line(30, 430, 645, 430);

    
  }
