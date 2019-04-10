import processing.video.*;


  int[] PC_Time = new int[3];  // Variable para registrar la hora
  int[] DD_MM_YY = new int[3];  // Variable para registrar la fecha
  PFont font12, font22, font44;  // Declaración de los textos a usar
  String curr_time, curr_date, row_data, filename, textoInforD="";  // Variables para obtención de tiempo, hora, texto informativo inferior y nombre log
  
  
  // Datos Botones
  
  int camaraX, camaraY;      // Position of CAMARA button
  int camaraTextX, camaraTextY;      // Position of CAMARA button
  int sensoresX, sensoresY;      // Position of SENSORES button
  int sensoresTextX, sensoresTextY;      // Position of SENSORES button
  int historialX, historialY;      // Position of HISTORIAL button
  int historialTextX, historialTextY;      // Position of HISTORIAL button
  int aboutX, aboutY;      // Position of ABOUT button
  int aboutTextX, aboutTextY;      // Position of ABOUT button

  int rectSize = 120;     // Diameter of rect
  
  color rectColor, baseColor;
  color rectHighlight;

  /* FLAGS */

int setupDone=0;
  
  
  
    /* Flags de la intefaz */
  boolean CAMARA=false;         // FLAG Pantalla Camara
  boolean SENSORES=false;       // FLAG Pantalla Sensores
  boolean HISTORIAL=false;      // FLAG Pantalla Historial
  boolean ABOUT=true;          // FLAG Pantalla About
  boolean rectOver1=false;      // Variable botón Camara
  boolean rectOver2=false;      // Variable botón Sensores
  boolean rectOver3=false;      // Variable botón Historial
  boolean rectOver4=false;      // Variable botón About

  
  boolean IF_Camara=false;      // Camara activo/no activo
  boolean IF_Sensores=false;    // Sensores activo/no activo
  boolean IF_Historial=false;   // Historial activo/no activo
  boolean IF_About=false;       // About activo/no activo


  /* Flags de la cámara */
  
  boolean boton_camara = true; 
  boolean hora_NDVI = true; 
  boolean luz = true;
  
  /* Flags de los sensores */
  
  /* Cámara */


void setup() {
    
  /* SETUP INTERFAZ */
  size(800, 480);  // Creamos interface del tamaño máximo de la pantalla
  font12 = loadFont("Monospaced-12.vlw");
  font22 = loadFont("Monospaced-22.vlw");  // Cargamos estilo de letra
  font44 = loadFont("Monospaced-32.vlw");  // Cargamos estilo de letra
  
  
  /* SETUP BOTONES */
  
  rectColor = color(201, 241, 114);
  rectHighlight = color(79, 227, 157);
  
  baseColor = color(102);
  
  
  // Boton CAMARA
  camaraX = width-rectSize;
  camaraY = 0;  
  camaraTextX=width-rectSize+20;
  camaraTextY=rectSize/2+10;
  
  // Boton SENSORES
  sensoresX = width-rectSize;
  sensoresY = rectSize;
  sensoresTextX=width-rectSize+10;
  sensoresTextY=rectSize+rectSize/2+10;
  
  // Boton HISTORIAL
  historialX = width-rectSize;
  historialY = rectSize*2;
  historialTextX=width-rectSize+5;
  historialTextY=rectSize*2+rectSize/2+10;
  
  // Boton ABPOUT
  aboutX = width-rectSize;
  aboutY = rectSize*3;
  aboutTextX=width-rectSize+30;
  aboutTextY=rectSize*3+rectSize/2+10;
  
  
  
  /* SETUP CAMARA */
  /*
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
  */
  /* SETUP  */
}

void draw() {
  
  /* HORA */

  // Obtención de la fecha y hora del PC
  curr_time = PC_Time();  // Cargamos en la variable el valor obtenido al llamar la función "PC_Time()"
  curr_date = PC_Date();  // Cargamos en la variable el valor obtenido al llamar la función "PC_Date()"
  
  
  /* INTERFAZ */  
  

  
  if (CAMARA){
    
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
              
     CAMARA();
  }else 
  
  if (SENSORES){
     SENSORES();
  }else 
  
  if (HISTORIAL){
     HISTORIAL();
  }else 
  
  if (ABOUT){
     ABOUT();
  }
  
  
  
  
  /* Activamos la CÁMARA cuando haya luz y pulsemos el botón o se cumpla el periodo de NDVI */
  /*
  if(luz && (hora_NDVI||boton_camara)){
    camara(cam,img);
  }
  */
  
}
