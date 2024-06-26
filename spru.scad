count = 5;
spacing = 19;
r = 0.8;
stl ="./stl/MX/lowprofile/DES_r2_1.00u_x2.stl";

union() {
    for (i = [0:count - 1]) {
      translate([0, i * spacing, 0]) import(stl);
    }

    translate([spacing / 2, -spacing / 2 * 0.9, - 0.9 * r])
    rotate ([270, 0, 0])
    cylinder(h = (count) * spacing - spacing * 0.1, r = r, $fn=15)
    ;
};
