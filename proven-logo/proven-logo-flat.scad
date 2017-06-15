/* 
    proven-logo-flat is a 3D logo model from Institut Provençana
    
    Copyright (C) 2017  Institut Provençana

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


module provenLogoFlat() {
   
    side = 90;
    height = 4;
    fontSize = 10;
    myFont = "Noto Sans CJK TC Black:style=Bold";
    name = "rovençana";
    P = "P";
    i = "i";
    n = "n";
    s = "s";
    textHeight = 10;
    pHeight = 15;
    pFontSize = 40;
    smallSquareOffset = 10;

difference() {   
    union() {
        // Big square
        translate([side/2, side/2, 0]) {
            cube(size = [side,side,height], center = true);
        }

        // small rectangle   
        translate([side/2, -side/12, 0]) {
            cube(size = [side,side/6,height], center = true);
        }
    }
    
    translate ([0,0,-10]) {
        linear_extrude( height = pHeight ) {
            text (
                text = P,
                font = myFont,
                size = pFontSize
            );
        }
    }
   
    translate([7,-7,0]) {
       cylinder(h=100, r1= 4, r2=4, fn= 10, fs=10, fa=10, center=true);
    }
    
       translate ([15,-10,-10]) {
            linear_extrude( height = textHeight*2 ) {
                text (
                    text = name,
                    font = myFont,
                    size = fontSize
                );
            }
        }
        
        translate ([10,(5/7)*side,-10]) {
        linear_extrude( height = pHeight ) {
            text (
                text = i,
                font = myFont,
                size = fontSize*2
            );
        }
    }
   
   
    translate ([(5/7)*side,(5/7)*side,-10]) {
        rotate([0,0,0]) {
            linear_extrude( height = pHeight ) {
                text (
                    text = n,
                    font = myFont,
                    size = fontSize*2
                );
            }
        }
    }
   
    translate ([(5/7)*side,10,-10]) {
        linear_extrude( height = pHeight ) {
            text (
                text = s,
                font = myFont,
                size = fontSize*2
            );
        }
    }
}
   
}

provenLogoFlat();
