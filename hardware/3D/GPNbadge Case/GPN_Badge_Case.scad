////////////////////////////////////////////////
/////////////Open SCAD ////////////////////////
/*//////////////////////////////////////////////

date started  ///1.6.2017
date finished
modler @paradroid_
*/

/*

cylinder ([]) ;   sphere();  cube([]);
square ([]);  circle();

*/
///////////////////////////////////////////////

////////////////////////////////////////////////
////////////////////parameters//////////////////
////////////////////////////////////////////////
width_mainCube=40;
hight_mainCube=20;
length_mainCube =144;

width_negCube=35;
hight_negCube=20;
length_negCube=140;

width_negTragflaechen=15;
hight_negTragflaechen=200;
length_negTragflaechen=20;

width_negUSB=16;
hight_negUSB=3;
length_negUSB=20;

width_negScreen=35; 
hight_negScreen=70;
length_negScreen=10;

width_negInfra=30;
hight_negInfra=15;
length_negInfra=25;

width_negSwitch=4; 
hight_negSwitch=20;
length_negSwitch=16;
////////////////////////////////////////////////
/////////////////////renders////////////////////
///////////////////////////////////////////////

difference(){

 

mainCube(); 
  
negCube(); 
   negUSB(); 
   negTragflaechen(); //wings 
    negScreen(); // also LED and joystick 
  translate([0,110,0])
    negTragflaechen();  //wings
   negInfra(); // Infrared 
    negSwich();
}
////////////////////////////////////////////////
////////////////////modules////////////////////
///////////////////////////////////////////////
$fn = 50;

module mainCube(){
    translate([0,86,20])  
    cube([width_mainCube, length_mainCube, hight_mainCube], center=true);
       
}
module negCube(){
     translate([0,86,15]) 
     cube([width_negCube, length_negCube, hight_negCube], center=true);
}
module negTragflaechen(){
    rotate([0,0,270]){
        translate([-24,20,15]) 
        cube([width_negTragflaechen, hight_negTragflaechen, length_negTragflaechen],center=true);
 }
 }
 module negUSB(){
     translate([0,15,15]) 
     cube([width_negUSB, hight_negUSB, length_negUSB],center=true);
 }
 module negScreen(){
        translate([0,105,29]) 
     cube([width_negScreen, hight_negScreen, length_negScreen],center=true);
 }
 
 module negInfra(){
        translate([0,154,20]) 
     cube([width_negInfra, hight_negInfra, length_negInfra],center=true);
     
 }
 
  module negSwich(){
        translate([19,50,17]) 
     cube([width_negSwitch, hight_negSwitch, length_negSwitch],center=true);
 }