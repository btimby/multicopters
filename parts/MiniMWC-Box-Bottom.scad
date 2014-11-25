difference() {
    cube([40, 60, 13]);
    translate([3, 3, 2]) {
        cube([34, 54, 14]);
    }
    translate([9.5, -2, 2]) {
        cube([21, 5, 13]);
    }
    translate([19, 56, 7.5]) {
        rotate([-90, 0, 0]) {
            cylinder(h=5, d=2, $fn=6);
        }
    }
}

translate([7.25, 42.75, 2]) {
    cylinder(h=3.75, d=6, $fn=16);
    cylinder(h=5.75, d=1.75, $fn=16);
}

translate([7.25, 17.25, 2]) {
    cylinder(h=3.75, d=6, $fn=16);
    cylinder(h=5.75, d=1.75, $fn=16);
}

translate([32.75, 42.75, 2]) {
    cylinder(h=3.75, d=6, $fn=16);
    cylinder(h=5.75, d=1.75, $fn=16);
}

translate([32.75, 17.25, 2]) {
    cylinder(h=3.75, d=6, $fn=16);
    cylinder(h=6.75, d=1.75, $fn=16);
}