module peonza() {
    cylinder(h=20, r1= 15, r2=0, fn= 10, fs=10, fa=10, center=true);
    
    translate([0,0,-10]) {
        sphere($fn = 100, $fa = 1, $fs = 20, r = 10);
    }
}

peonza();
