
module ruspot(lenght = 100, width = 100, height = 100) {
    
    density = 5;
    
    rotate_extrude($fn=200) polygon( points=[[0,0],[2,1],[1,2],[1,3],[6,4],[0,5]] );
    
  /*  
     intersection_for(i = [ [  133,  12,   100],
 			[ 10, 20, 300],
 			[100, 40,  57],
 			[ 20, 88,  57] ])
{
    rotate(i)
    cube([100, 20, 20], center = true);
}
*/
    
        //rotate_extrude(convexity = 10)
        //translate([4, 0, 0])
        //circle(r=1);
    /*
    translate([0,60,0])
   rotate_extrude(angle=270, convexity=10)
       translate([40, 0]) circle(10);
rotate_extrude(angle=90, convexity=10)
   translate([20, 0]) circle(10);
translate([20,0,0]) 
   rotate([90,0,0]) cylinder(r=10,h=80);
    */
    /*
        difference() {
            cube([lenght, width, height], true);
            translate([-((density*lenght)/100), -((density*width)/100), -((density*height)/100)]) {
                cube([lenght-density, width-density, height-density], true);
            }
            
        }
    */
}

ruspot(200, 200, 200);