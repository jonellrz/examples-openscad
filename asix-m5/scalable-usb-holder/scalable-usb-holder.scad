/* 
    scalable-usb-holder is a 3D scalable usb holder model
    
    Copyright (C) 2017  Andryc Jonell Ramirez Chavez

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

module base(cantidad=6) {
	altura=18;
	ancho=20;
   margen = 5;
   gordo = 4;
   largo = cantidad * gordo + ((cantidad+1) * margen);

    difference() {
        union() {
            difference() {
               cube([ancho,largo,altura]);
               translate([(ancho/2),largo,-1])
                rotate([0,0,90])
                cylinder(r=(ancho/4), h=(altura/1.5), $fn=3);
            }
            translate([(ancho/2),0,0])
                rotate([0,0,90])
                cylinder(r=(ancho/4), h=(altura/1.5), $fn=3);
        }

        //distancia = 9;
        translate([0, margen, 0])
            for (i=[0:cantidad-1]) {
              translate([(ancho/4), i*(margen+gordo), (altura/3)]) cube([(ancho/2), gordo, altura]);
            }

    }
}

color("MEDIUMTURQUOISE")
translate([0, 59, 0])
base(cantidad=8);
/*
color("SPRINGGREEN")
base(cantidad=6);

color("TOMATO")
translate([0, -32, 0])
base(cantidad=3);
*/

