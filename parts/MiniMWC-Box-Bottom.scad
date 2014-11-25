difference() {
    cube([38, 58, 14]);
    translate([2, 2, 2]) {
        cube([34, 54, 14]);
    }
    translate([9.5, -2, 2]) {
        cube([21, 5, 13]);
    }
    translate([19, 56, 9.5]) {
        rotate([-90, 0, 0]) {
            cylinder(h=5, d=2, $fn=6);
        }
    }
}

translate([6.25, 42.75, 2]) {
    difference() {
        cylinder(h=2.75, d=4, $fn=16);
        cylinder(h=4.75, d=1, $fn=16);
    }
}

translate([6.25, 17.25, 2]) {
    difference() {
        cylinder(h=2.75, d=4, $fn=16);
        cylinder(h=4.75, d=1, $fn=16);
    }
}

translate([31.75, 42.75, 2]) {
    difference() {
        cylinder(h=2.75, d=4, $fn=16);
        cylinder(h=4.75, d=1, $fn=16);
    }
}

translate([31.75, 17.25, 2]) {
    difference() {
        cylinder(h=2.75, d=4, $fn=16);
        cylinder(h=4.75, d=1, $fn=16);
    }
}