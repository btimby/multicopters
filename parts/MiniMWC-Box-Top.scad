difference() {
    cube([40, 60, 4]);
    translate([-1, 5.75, 1.5]) {
        cube([42, 3, 1]);
    }
    translate([-1, 20.75, 1.5]) {
        cube([42, 3, 1]);
    }
    translate([-1, 35.75, 1.5]) {
        cube([42, 3, 1]);
    }
    translate([-1, 50.75, 1.5]) {
        cube([42, 3, 1]);
    }
}
translate([3, 3, 4]) {
    cube([34, 54, 1]);
}


translate([7.25, 42.75, 3]) {
    difference() {
        cylinder(h=6.25, d=6, $fn=16);
        translate([0, 0, 5.25]) {
            cylinder(h=2, d=2, $fn=16);
        }
    }
}

translate([7.25, 17.25, 3]) {
    difference() {
        cylinder(h=6.25, d=6, $fn=16);
        translate([0, 0, 5.25]) {
            cylinder(h=2, d=2, $fn=16);
        }
    }
}

translate([32.75, 42.75, 3]) {
    difference() {
        cylinder(h=6.25, d=6, $fn=16);
        translate([0, 0, 5.25]) {
            cylinder(h=2, d=2, $fn=16);
        }
    }
}

translate([32.75, 17.25, 3]) {
    difference() {
        cylinder(h=6.25, d=6, $fn=16);
        translate([0, 0, 5.25]) {
            cylinder(h=2, d=2, $fn=16);
        }
    }
}