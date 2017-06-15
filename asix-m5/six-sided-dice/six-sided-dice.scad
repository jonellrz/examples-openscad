/* 
    six-sided-dice is a 3D six sided dice model
    
    Copyright (C) 2017  Sergio Iglesias Valle

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

difference(){
    //dado
    intersection(){
        cube(20,center=true);
        sphere(15,$fn=100);
    }
    //numero 1
    translate([10,0,0])
    sphere(2,$fn=20);
    //numero 2
    translate([5,5,10])
    sphere(2,$fn=20);
    translate([-5,-5,10])
    sphere(2,$fn=20);
    //numero 3
    translate([0,10,0])
    sphere(2,$fn=20);
    translate([5,10,5])
    sphere(2,$fn=20);
    translate([-5,10,-5])
    sphere(2,$fn=20);
    //numero 4
    translate([-5,-10,5])
    sphere(2,$fn=20);
    translate([5,-10,5])
    sphere(2,$fn=20);
    translate([-5,-10,-5])
    sphere(2,$fn=20);
    translate([5,-10,-5])
    sphere(2,$fn=20);
    //numero 5
    translate([0,0,-10])
    sphere(2,$fn=20);
    translate([5,5,-10])
    sphere(2,$fn=20);
    translate([5,-5,-10])
    sphere(2,$fn=20);
    translate([-5,-5,-10])
    sphere(2,$fn=20);
    translate([-5,5,-10])
    sphere(2,$fn=20);
    //numero 6
    translate([-10,-4,0])
    sphere(2,$fn=20);
    translate([-10,4,0])
    sphere(2,$fn=20);
    translate([-10,4,6])
    sphere(2,$fn=20);
    translate([-10,4,-6])
    sphere(2,$fn=20);
    translate([-10,-4,6])
    sphere(2,$fn=20);
    translate([-10,-4,-6])
    sphere(2,$fn=20);
}
//hueco de los numeros
*cylinder(r=10,h=20,center=true,$fn=100);
*cylinder(r1=10,r2=0,h=20,center=true,$fn=100);