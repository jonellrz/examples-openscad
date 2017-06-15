/* 
    pacman is a 3D pacman model
    
    Copyright (C) 2017  Marta Blanco Cañas

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

union(){
	difference() {
		difference() {
         // cuerpo del pacman
			cylinder(r=50/2, h=5, $fn=1000);
         
			// ojo del pacman
			color("red")
			translate([-6,15,0])
	  			cylinder(r=8/2, h=20, $fn=1000,center=true);
		}
      // triangulo de boca
		color("red")
		translate([15,10,-2])
			rotate([0,0,-20])
				cylinder(r=20, h=8, $fn=3);
	}
   // iris
	color("red")
		translate([-6,15,0])
			rotate([0,0,-20])
				cylinder(r=2, h=5, $fn=1000);

   // dientes
	translate([1.2,-0.9,0]) rotate([0,0,-20])
		cylinder(r=2, h=5, $fn=3);

	translate([3,4,0]) rotate([0,0,-20])
		cylinder(r=2, h=5, $fn=3);

	translate([5,9,0]) rotate([0,0,-20])
		cylinder(r=2, h=5, $fn=3);

	translate([6.8,14,0]) rotate([0,0,-20])
		cylinder(r=2, h=5, $fn=3);

	translate([8.5,19,0]) rotate([0,0,-15])
		cylinder(r=2, h=5, $fn=3);

	translate([5,-1.2,0]) rotate([0,0,-20])
		cylinder(r=2, h=5, $fn=3);

	translate([10,-0.3,0]) rotate([0,0,-20])
		cylinder(r=2, h=5, $fn=3);

	translate([15,0.5,0]) rotate([0,0,-20])
		cylinder(r=2, h=5, $fn=3);

	translate([20,1.4,0]) rotate([0,0,-20])
		cylinder(r=2, h=5, $fn=3);
}

   // comida
	color("green")
	translate([15, 10,0]) rotate([0,0,-20])
		cylinder(r=3, h=5, $fn=1000);
	color("green")
	translate([25, 15,0]) rotate([0,0,-20])
		cylinder(r=4, h=5, $fn=1000);
	color("green")
	translate([38, 21,0]) rotate([0,0,-20])
		cylinder(r=5, h=5, $fn=1000);


difference() {
difference() {
	union(){
		translate([56,48,0]) rotate([0,0,-20])
			cylinder(r=12.1, h=5, $fn=1000);
		translate([75.3, 38.5, 0]) rotate([0,0,120])
			cube([20,24,5]); 
	}
	color("red")
	translate([50,48,-2]) rotate([0,0,-20])
		cylinder(r=2, h=8, $fn=1000);
	color("red")
	translate([59,53,-2]) rotate([0,0,-20])
		cylinder(r=2, h=8, $fn=1000);
}	
	color("red")
	translate([57,29,-2]) rotate([0,0,-0])
		cylinder(r=3, h=8, $fn=3);
	color("red")
	translate([64,33,-2]) rotate([0,0,-0])
		cylinder(r=3, h=8, $fn=3);
	color("red")
	translate([71,37,-2]) rotate([0,0,-0])
		cylinder(r=3, h=8, $fn=3);
}


color("black")
translate([90, 20, -4]) rotate([0,0,120])
			cube([55,115,5]); 


