
// What height should the ring be
ringHeight = 10;

// How big is the lens that should fit
lensDiameter = 162;

// How big should the lens opening be
lensOpening = 153;

// What is the diameter of the lamp around which it should fit
lampDiameter = 160;

// What is the desired wall thickness
wallThickness = 1.2;

// What is the resolution of the cylinder
fn = 300;


difference() {
    cylinder(h = ringHeight, d1 = lensDiameter + 2 * wallThickness, d2 = lampDiameter + 2 * wallThickness, $fn = fn);
    translate([0, 0, wallThickness]) {
        cylinder(h = ringHeight, d1 = lensDiameter, d2 = lampDiameter, $fn = fn);
    }
    cylinder(h = ringHeight, d = lensOpening, $fn = fn);
}