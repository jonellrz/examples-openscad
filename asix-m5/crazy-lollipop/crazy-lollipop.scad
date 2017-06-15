/* 
    crazy-lollipop is a 3D crazy lollipop model
    
    Copyright (C) 2017  Jorge Arturo Valle Cubas

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

//-- Pieza - ASIX2 JORGE VALLE
//PIRULETA
 
module asixSample() {
 
rotate([0,0,0]) translate([146,0,-10]) linear_extrude(height=20)
 
//numero 6    
    //size=111
rotate([0,9,-90])
text("6",size=0,font="arial", halign="center", valign="center");
   
//rotate([180,180,-90])//rotar
//translate([0,-236.4,-9])//trasladar
//linear_extrude(height=19)//ancho de la palabra
//text("PUT1LL4",size=13,font="arial", halign="center", valign="center");
    
}
asixSample();
 
//rueda simple
    /*difference(){
        //base de la rueda
        cylinder(r=50/2, h=5, $fn=100);
        
        //taladro de 8mm
        cylinder(r=8/2, h=20h ,$fn=20, center=true);
        }*/
 
translate([0,0,0])//sirve para trasladar en los diferentes ejes
   rotate_extrude(angle=270, convexity=10)//sirve para rotar en los diferentes ejes
       translate([40, 0]) circle(10);
rotate_extrude(angle=90, convexity=10)
   translate([20, 0]) circle(10);
translate([20,0,0])
   rotate([90,0,90]) cylinder(r=10,h=80);
translate([150,0,0])
   rotate([90,0,90]) cylinder(r=10,h=80);
 
//real madrid
translate([0,0,0])
   rotate_extrude(angle=270, convexity=10)
   translate([60, 0]) circle(10);
   
 //esfera
 translate([126,0,0])//localizacion
 sphere(30,$fn=20);//tamaño
 translate([0,100,10]); sphere(0);//otra esfera
 
 
 
