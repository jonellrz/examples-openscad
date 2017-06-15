/* 
    ghosty is a 3D ghosty model
    
    Copyright (C) 2017  David Sáez González

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

cube([10,20,70]);
translate([10,0,10])
cube([10,20,90]);
translate([20,0,20])
cube([10,20,90]);
translate([30,0,10])
cube([10,20,50]);
translate([40,0,0])
cube([10,20,50]);
translate([50,0,0])
cube([10,20,50]);
translate([60,0,20])
cube([10,20,40]);
translate([70,0,20])
cube([10,20,110]);
translate([80,0,0])
cube([10,20,130]);
translate([90,0,0])
cube([10,20,60]);
translate([100,0,10])
cube([10,20,40]);
translate([110,0,20])
cube([10,20,30]);
translate([120,0,10])
cube([10,20,50]);
translate([130,0,0])
cube([10,20,70]);

//Ojos
translate([50,10,60])
color ("red") cube([20,10,20]);
translate([110,10,60])
color ("red") cube([20,10,20]);

translate([30,0,90])
cube([10,20,30]);
translate([40,0,100])
cube([10,20,20]);
translate([50,0,100])
cube([10,20,30]);
translate([60,0,90])
cube([10,20,40]);
translate([90,0,90])
cube([10,20,30]);
translate([100,0,100])
cube([10,20,20]);
translate([110,0,100])
cube([10,20,10]);
translate([120,0,92])
cube([10,20,10]);



