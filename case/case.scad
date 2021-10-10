//AmaFi Weatherproofing Case

//Set variables (mm):
//Case
h = 113; //height
l = 77; //length
w = 76; //width
t = 1; //thickness
ht = (0.5*h); //h translation
lt = (0.5*l); //l translation
wt = (0.5*w); //w translation
//Pegs
ch = 51; //cylinder height
cr = 1.1; //cylinder radius
tcyt = 45 ; //top peg y trans 
bcyt = tcyt - 73.7; //bottom peg y translation
//Supports and zip tie slots
bh =25; // polygon height
b1l = 8; //polygon length
b1w = 4; //polygon width
b2l = 5; //cutout length
b2w = 2; //cutout width
bxt = 0; //x translation
byt = 30; //y translation
bzt = 40; //z translation

//Create Case:
//front side 
translate([0,0,-wt])
   cube([l,h,t], center = true);
//back side
translate([0,0,wt])
   cube([l,h,t], center = true);
//left side
translate([wt,0,0])
   cube([t,h,w], center = true);
//right side
translate([-wt,0,0])
   cube([t,h,w], center = true);   
//top side
translate([0,ht-0.5,0])
   cube([l,t,w], center = true);
   
//Create mounting pegs:
//top peg
translate([0,tcyt,-wt])
    cylinder(ch,cr);
//bottom peg
translate([0,bcyt,-wt])
    cylinder(ch,cr);

//Create supports
difference()  {    
translate([bxt,byt,bzt])
   cube([bh,b1l,b1w], center = true); //top slot
translate ([bxt,byt,bzt]) 
   cube([bh,b2l,b2w], center = true); //remove cutout  
    }   
difference()  {    
translate([bxt,-byt,bzt])
   cube([bh,b1l,b1w], center = true); //bottom slot
translate ([bxt,-byt,bzt]) 
   cube([bh,b2l,b2w], center = true); //remove cutout   
    }