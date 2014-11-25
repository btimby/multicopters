// Syma X1 arm & prop disc
// Left-middle:
/*translate([0, -10, 0]) {
    rotate([0, 0, 180]) {
        union() {
            translate([-1.5, 0, -1.5]) {
                cube([3, 109, 3]);
            }
            translate([-10, 97, -10]) {
                cube([24, 24, 37]);
            }
            translate([0, 109, 27]) {
                cylinder(h=8.75, d=135);
            }
        }
    }
}

// Syma X1 arm & prop disc
// Left-rear:
translate([55, -10, 0]) {
    rotate([0, 0, 230]) {
        union() {
            translate([-1.5, 0, -1.5]) {
                cube([3, 109, 3]);
            }
            translate([-10, 97, -10]) {
                cube([24, 24, 37]);
            }
            translate([0, 109, 27]) {
                cylinder(h=8.75, d=135);
            }
        }
    }
}*/

module quarter() {
    difference() {
        translate([0, 0, -2.75]) {
            union() {
                linear_extrude(height=7) {
                    polygon(
                        points=[
                            // Outer race
                            [0, 0],
                            [0, 32],
                            [68.5, 25.5],

                            [72.5, 20],
                            [72.5, 0],
                            [70.5, 0],
                            [70.5, 18.5],
                            [49, 0],
                    
                            //Inner race
                            [3.5, 1],
                            [3.5, 30],
                            [67, 24],
                            [41, 1],
                        ],
                        paths=[
                            [0, 1, 2, 3, 4, 5, 6, 7],
                            [8, 9, 10, 11],
                            //[9, 10, 11],
                        ]
                    );
                }

    
                linear_extrude(height=1) {
                    polygon(
                        points=[
                            // Outer race
                            [0, 0],
                            [0, 32],
                            [68, 25.5],

                            //[70, 0],
                            [72.5, 20],
                            [72.5, 0],
                            [67.5, 0],
                        ],
                        paths=[
                            [0, 1, 2, 3, 4, 5, 6, 7],
                        ]
                    );
                }
            }
        }

        translate([25, 13, -4]) {
            cylinder(h=3, d=20, $fn=6);
        }

        translate([13, 6.5, -4]) {
            cylinder(h=3, d=5, $fn=6);
        }

        translate([36, 6.5, -4]) {
            cylinder(h=3, d=5, $fn=6);
        }

        translate([36, 19.5, -4]) {
            cylinder(h=3, d=5, $fn=6);
        }

        translate([13, 19.5, -4]) {
            cylinder(h=3, d=5, $fn=6);
        }

        translate([7, 13, -4]) {
            cylinder(h=3, d=5, $fn=6);
        }

        translate([42, 13, -4]) {
            cylinder(h=3, d=5, $fn=6);
        }

        translate([48, 19.5, -4]) {
            cylinder(h=3, d=5, $fn=6);
        }

        translate([63, 6.5, -4]) {
            cylinder(h=3, d=5, $fn=6);
        }

        translate([57, 0, -4]) {
            cylinder(h=3, d=5, $fn=6);
        }
        
        mirror([0, 1, 0]) {
            translate([-1.55, -32, -1.55]) {
                cube([3.1, 22, 3.1]);
                translate([1.5, 22, 3.15]) {
                    rotate([90, 0, 0]) {
                        cylinder(h=22, d=3, $fn=10);
                    }
                }
            }

            translate([71, -25.2, -1.55]) {
                rotate([0, 0, 50]) {
                    cube([3.1, 23, 3.1]);
                    translate([1.5, 23, 3.15]) {
                        rotate([90, 0, 0]) {
                            cylinder(h=23, d=3, $fn=10);
                        }
                    }
                }
            }
        }
    }
}

module whole() {
    union() {
        quarter();
        mirror() {
            quarter();
        }
        mirror([0, 1, 0]) {
            quarter();
            mirror() {
                quarter();
            }
        }
    }
}

whole();