width = 15;
length = 30;
height = 5;


difference() {
  body();
  translate([0, 8, 2.5])
    round_button();
}

translate([0, 8, 3])
  round_button();

translate([0, -5, 3])
  scale([0.5, 0.5, 1])
    round_button();


translate([0, 0, 3])
scale([2, 2, 1])
arrow();

translate([0, -9, 3])
scale([2, 2, 1])
rotate([0, 0, 180])
  arrow();


module arrow() {
  scale([1/7, 1/7, 1])
    union() {
      translate([0, -1, 0.5])
        union() {
        translate([0, 5, 0])
        cylinder(r=1, h=1, center=true, $fs=0.1);

        translate([5, 0, 0])
        cylinder(r=1, h=1, center=true, $fs=0.1);

        translate([-5, 0, 0])
        cylinder(r=1, h=1, center=true, $fs=0.1);


        rotate([0, 0, 45])
        translate([0, sqrt(25/2), 0])
        cube([sqrt(2)*5, 2, 1], center=true);

        rotate([0, 0, -45])
        translate([0, sqrt(25/2), 0])
        cube([sqrt(2)*5, 2, 1], center=true);

        cube([10, 2, 1], center=true);
        }

      cylinder(r=7, h=0.5);
  }
}


// module arrow() {
//   translate([0, -3, 0])
//   difference() {
//     cube([10, 10, 1], center=true);
// 
//     union() {
//       translate([5, 0, 0])
//       rotate([0, 0, -35])
//       cube([10, 20, 20], center=true);
// 
//       translate([-5, 0, 0])
//         rotate([0, 0, 35])
//         cube([10, 20, 20], center=true);
//     }
//   }
// }


module round_button() {
  translate([0, 0, 10])
  difference() {
    difference() {
      sphere(r=10, $fa=5, $fs=0.1);
      sphere(r=9.5, $fa=5, $fs=0.1);
    }
  
    translate([0, 0, 1])
      cube([20, 20, 20,], center=true); 
  }
}

module body() {
  cube([width, length, height], center=true);

  translate([0, 0, height/2])
    scale([1, 1, 0.1])
     rotate([90, 0, 0])
        cylinder(r=width/2, h=length, center=true);
}
