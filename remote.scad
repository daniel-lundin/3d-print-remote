width = 15;
length = 30;
height = 5;


difference() {
  body();
  translate([0, 8, 2.5])
    round_button();
}

translate([0, 8, 2.5])
  round_button();
      
translate([0, -5, 2.5])
  round_button();



module round_button() {
  translate([0, 0, 10])
  difference() {
    difference() {
      sphere(r=10, $fs=0.1);
      sphere(r=9.5, $fs=0.1);
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
