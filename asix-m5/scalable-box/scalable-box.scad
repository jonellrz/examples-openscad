/* 
    scalable-box is a 3D scalable box model
    
    Copyright (C) 2017  Guillem Martínez Paris

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

//Variables
length = 200; //Alargada mm
width = 200; //Ancho en mm
height = 200; //Altura en mm
radius = 10; //Radio en mm
doubleRadius = 2*radius; //DobleRadio

//Modulo
module roundedBox(length, width, height, radius)
{
//Cubo
minkowski()
    {
        cube (size=[length-doubleRadius, width-doubleRadius, height]);
    }
}

//Corte
translate([10,10,0])
{
    difference()
    {   
        roundedBox(length, width, height, radius);
        translate([1,1,1])
            {
            //Paredes de la caja    
            roundedBox(length-2, width-2, height-1, radius);
            }
        }
}