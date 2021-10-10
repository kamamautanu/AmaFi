//AmaFi Bottom Cover

//Set variables (mm):
//Cover
bcx = 75; //cover width
bcy = 74; //cover height
bcz = 1; //cover thickness
// Power witing cutouts
lcx = 10; //
lcy = 5; //
lcz = 5; //
lct = [0,35,0]; //cutout trans
//Wiring cutouts
h = 20; //cutout height
d = 12.5; //cutout diameter
cy1t = 17; //row 1 translation
cy2t = -19; //row 2 translation
czt = 0; //z translation
cx1t = -22; //column 1 trans
cx2t = 0; //column 2 translation
cx3t = 22; //column 3 translation

//Create cover:
difference() { //remove cutouts
cube([bcx,bcy,bcz], center = true);
//polygon cutout
translate(lct)
cube([lcx,lcy,lcz], center = true);
//top-left cutout
translate([cx1t,cy1t,czt])
cylinder(h, d, center = true);
//bottom-left cutout
translate([cx1t,cy2t,czt])
cylinder(h, d, center = true);
//top-middle cutout
translate([cx2t,cy1t,czt])
cylinder(h, d, center = true);
//bottom-middle cutout
translate([cx2t,cy2t,czt])
cylinder(h, d, center = true);
//top-right cutout
translate([cx3t,cy1t,czt])
cylinder(h, d, center = true);
//bottom-right cutout
translate([cx3t,cy2t,czt])
cylinder(h, d, center = true);    
}

