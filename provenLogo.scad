module provenLogo() {
   
    side = 90;
    height = 10;
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
        translate([side/2, -side/12, smallSquareOffset/2]) {
            cube(size = [side,side/6,height+smallSquareOffset], center = true);
        }
        
            translate ([-5,0,0]) {
        linear_extrude( height = pHeight ) {
            text (
                text = P,
                font = myFont,
                size = pFontSize
            );
        }
    }
}


    
 

   
translate([7,-7,0]) {
   cylinder(h=100, r1= 4, r2=4, fn= 10, fs=10, fa=10, center=true);
}
   }
   

   
    translate ([10,(5/7)*side,0]) {
        linear_extrude( height = pHeight ) {
            text (
                text = i,
                font = myFont,
                size = fontSize*2
            );
        }
    }
   
   
    translate ([(5/7)*side,(5/7)*side,0]) {
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
   
    translate ([(5/7)*side,10,0]) {
        linear_extrude( height = pHeight ) {
            text (
                text = s,
                font = myFont,
                size = fontSize*2
            );
        }
    }
   
   
    translate ([15,-10,0]) {
        linear_extrude( height = textHeight*2 ) {
            text (
                text = name,
                font = myFont,
                size = fontSize
            );
        }
    }
       
   
   
   
   
   
}

provenLogo();
