import android.content.Intent;
import android.net.Uri;
import java.io.File;
String thisVersion = "v0.1";
String[] verCheckLoad;
String verChecked = "";
boolean CFUerror = false;
String CFUurl = "https://raw.githubusercontent.com/Unnamed3/prochaineSonnerie/master/prochaineSonnerie.version";

boolean highlight = false;
int highlightID = 0;
int X = 0, Y = 0;
float midX, midY; //milieu d ecran
int screen = 1;

String path = "/storage/emulated/0/consoBombons.memory";
String rPath = "consoBombons.memory";
String[] loadfile;

public static String OS = System.getProperty("os.name").toLowerCase();

int barres = 0;
int langues = 0;
int languesRainbow = 0;
int schtroumpf = 0;
int total = 0;

void setup() {

  if (OS.equalsIgnoreCase("linux")) {
    size(displayWidth, displayHeight);

    try {
      loadfile = loadStrings(path);
      
      barres = (parseInt(loadfile[0]));
      langues = (parseInt(loadfile[1]));
      languesRainbow = (parseInt(loadfile[2]));
      schtroumpf = (parseInt(loadfile[3]));
      total = (parseInt(loadfile[4]));
      //système de chargement des données bombons à développer ici
    } 
    catch(Exception e) {
      String[] db = {"0", "0", "0", "0", "0"};
      saveStrings(path, db);
    }
  } else if (OS.contains("windows")) {  
    //  surface.setSize(displayWidth/3, displayHeight/3);

    try {
      loadfile = loadStrings(rPath);
      
      barres = (parseInt(loadfile[0]));
      langues = (parseInt(loadfile[1]));
      languesRainbow = (parseInt(loadfile[2]));
      schtroumpf = (parseInt(loadfile[3]));
      total = (parseInt(loadfile[4]));
    } 
    catch(Exception e) {
      String[] db = {"0", "0", "0", "0", "0"};
      saveStrings(rPath, db);
    }
  }
  X = width;
  Y = height;
  midX = X*0.5;
  midY = Y*0.5;

}

void draw() {
  //background(127);
  rect(0.046*X, 0.052*Y, 0.139*X, 0.139*X);
  
}