

  void MEDIDA_PERIODICA_NDVI(){


    
    if(PC_Time[0] == 20 && PC_Time[1] == 57 && PC_Time[2] >= 0 && PC_Time[2] <= 30 && !medidoNDVI){
      
                NDVIperiodico = true;
                println("NDVIperiodico = true");

      
          if(setupDone==0){
            
            String[] cameras = Capture.list();
            img = createImage(width, height, RGB);
            
            if (cameras.length == 0) {
              println("No hay cámaras conectadas!");
              exit();
            } 
            else {
              println("Cámaras disponibles:");
              for (int i = 0; i < cameras.length; i++) {
                println(cameras[i]);
              }
              cam = new Capture(this, cameras[0]);
              cam.start(); 
            }
          }
          
          
          
        camara(cam,img);
        
          if(PC_Time[2] == 30){
            
            medidoNDVI = true;
            
            String NDVIMedioString = String.valueOf(NDVIMedio);
        
            appendTextToFile("ndvi.txt", NDVIMedioString);
            
            println(NDVIMedioString);
            
              if(!CAMARA){
                
                cam.stop();
                
                setupDone = 0;
              
              }
         
            NDVIperiodico = false;
            
            println("NDVIperiodico = false");

          }
        

        
        
      
    }else if(PC_Time[0] == 12 && PC_Time[1] == 10){
    
        medidoNDVI = false;
      
    }
    


    
    
    
  }  
