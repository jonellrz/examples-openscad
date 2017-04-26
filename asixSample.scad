

module asixSample() {
    //cube([1,10,8], true);
    
    //cube([18,10,8], false);
    
    //sphere($fn = 100, $fa = 1, $fs = 20, r = 10);
    
    // cylinder(h=15, r1= 20, r2=20, fn= 10, fs=10, fa=10, center=true);
    
    
  //  rotate([0,0,0])
    //mirror([1,0,0])
    //translate([0,20,30])
  //  cube(10);
    /*
      for(i=[0:36]) {
    for(j=[0:36]) {
      color( [0.5+sin(10*i)/2, 0.5+sin(10*j)/2, 0.5+sin(10*(i+j))/2] )
      translate( [i*2, j, 0] )
      cube( size = [2, 2, 22+10*cos(10*i)*cos(10*j)] );
    }
  } */
  
  
  linear_extrude(height = 60, twist = 90, slices = 60) {
   difference() {
     offset(r = 10) {
      square(20, center = true);
     }
     offset(r = 8) {
       square(20, center = true);
     }
   }
 }
  
  
  //cylinder(h=15, r1= 10, r2=10, fn= 10, fs=10, fa=10, center=true);
  
  
//  intersection() {
 //     surface(file = "logo-proven.png", center = true);
    //cube([500, 500, 500], center=true);
      
      // text("ASIX2 ", 6, halign = "center");
       
      
  //circle(10, center=true);
      
  //}  
}

 asixSample();