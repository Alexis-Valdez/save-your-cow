import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.* ;
import org.jbox2d.dynamics.* ;
import processing.sound.*;
PImage fondo;
PImage vaca;
PImage ovni;
Box2DProcessing mundo;
Limite suelo;
ArrayList <Caja> cajas;
Caja vacas;
vaca vacam;
//vaca vacam;
SoundFile cancion;

void setup(){
  cancion = new SoundFile(this, "vacamu.mp3" );
  size(1200,800);
  fondo= loadImage("fondo.jpg");
  fondo.resize(1200,800);
  ovni= loadImage("ovni.png"); 
  ovni.resize(400,200);
  vaca= loadImage("vaca.png");
  vaca.resize(150,100);
  mundo = new Box2DProcessing(this);
  mundo.createWorld();
  cajas = new ArrayList<Caja>();
  suelo = new Limite(0,700,0,0);
  vacas = new Caja(mouseX,mouseY,80,60);
  vacam = new vaca(500,300,260,90);

}

void draw(){
 
  image(fondo,0,0);
  mundo.step();

  for(Caja c:cajas){
    c.display();
  }
  if (mousePressed) {
    cajas.add(new Caja(mouseX,mouseY,80,50));
    cancion.loop();
  }
  vacam.display();
  suelo.display();
}

//void mousePressed(){

   
 //  vacas = new Caja(mouseX,mouseY,80,60);
 //  vacas.display();
//}
 
 
 
