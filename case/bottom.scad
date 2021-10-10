//Create 3D model for end piece

bcx = 75;
bcy = 74;
bcz = 1;
lcx = 10;
lcy = 5;
lcz = 5;
lct = [0,35,0];
h = 20;
r = 12.5;
c1xt = -36;
cy1t = 17;
cy2t = -19;
czt = 0;
cx1t = -22;
cx2t = 0;
cx3t = 22;

difference() {
cube([bcx,bcy,bcz], center = true);
translate(lct)
cube([lcx,lcy,lcz], center = true);
translate([cx1t,cy1t,czt])
cylinder(h, r, center = true);
translate([cx1t,cy2t,czt])
cylinder(h, r, center = true);
translate([cx2t,cy1t,czt])
cylinder(h, r, center = true);
translate([cx2t,cy2t,czt])
cylinder(h, r, center = true);
translate([cx3t,cy1t,czt])
cylinder(h, r, center = true);
translate([cx3t,cy2t,czt])
cylinder(h, r, center = true);    
}

