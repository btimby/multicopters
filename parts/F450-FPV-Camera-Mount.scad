// bottom plate
difference() {
	translate([0, -10, 0]) {
		cube([57, 30, 3]);
	}
	// 3.5mm mounting holes
	translate([11.5, 14.5, 1]) {
		cylinder(h=5, d=3.5, center=true);
	}
	translate([57-11.5, 14.5, 1]) {
		cylinder(h=5, d=3.5, center=true);
	}
	translate([11.5, -4, 1]) {
		cylinder(h=5, d=3.5, center=true);
	}
	translate([57-11.5, -4, 1]) {
		cylinder(h=5, d=3.5, center=true);
	}
}
// front plate
difference() {
	cube([57,3,30]);
	// lens hole
	translate([28.5, 4, 17.5]) {
		rotate([90, 0, 0]) {
			cylinder(h=5, d=18, $fn=8);
		}
	}
}
// camera platform
difference() {
	union() {
		translate([18.5, 0, 0]) {
			cube([20, 20, 7.5]);
		}
		translate([19.5, 20, 7.5]) {
			rotate([90, 0, 0]) {
				cylinder(h=20, d=2, $fn=20);
			}
		}
		translate([37.5, 20, 7.5]) {
			rotate([90, 0, 0]) {
				cylinder(h=20, d=2, $fn=20);
			}
		}
		translate([19.5, 3, 7.5]) {
			cube([18, 5.5, 1]);
		}
	}
	// ziptie tunnel
	translate([17.5, 12.75, 4]) {
		cube([22, 3.5, 2]);
	}
}
// Lens guards
translate([15.5, -10, 0]) {
	cube([3, 10, 30]);
}
translate([38.5, -10, 0]) {
	cube([3, 10, 30]);
}
// Right-side support
polyhedron(
	points = [
		[0, 3, 3],
		[0, 3, 30],
		[0, 20, 3],

		[3, 3, 30],
		[3, 20, 3],

		[3, 3, 3]
	],
	faces = [
		[0, 2, 1],
		[1, 4, 3],
		[1, 2, 4],
		[3, 4, 5],
		[0, 1, 3],
		[0, 3, 5],
		[0, 4, 2],
		[0, 5, 4],
	]
);
// Left-side support
polyhedron(
	points = [
		[54, 3, 3],
		[54, 3, 30],
		[54, 20, 3],

		[57, 3, 30],
		[57, 20, 3],

		[57, 3, 3]
	],
	faces = [
		[0, 2, 1],
		[1, 4, 3],
		[1, 2, 4],
		[3, 4, 5],
		[0, 1, 3],
		[0, 3, 5],
		[0, 4, 2],
		[0, 5, 4],
	]
);
