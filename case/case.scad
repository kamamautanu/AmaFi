//Create weatherproofing box

//set variables
h = 113;
l = 77;
w = 76;
t = 1;
ht = (0.5*h);
lt = (0.5*l);
wt = (0.5*w);
ch = 51;
cr = 1.1;
bh =25;
b1l = 8;
b1w = 4;
b2l = 5;
b2w = 2;
bxt = 0;
byt = 30;
bzt = 40;

//create front 
translate([0,0,-wt])
   cube([l,h,t], center = true);
   
//create back
translate([0,0,wt])
   cube([l,h,t], center = true);
   
//create left side
translate([wt,0,0])
   cube([t,h,w], center = true);
   
//create right side
translate([-wt,0,0])
   cube([t,h,w], center = true);   
   
//create top
translate([0,ht-0.5,0])
   cube([l,t,w], center = true);
   
   
//create mounting pegs
translate([0,45,-wt])
    cylinder(ch,cr);
translate([0,-28.7,-wt])
    cylinder(ch,cr);


//create slots for support ties
difference()  {    
translate([bxt,byt,bzt])
   cube([bh,b1l,b1w], center = true);
translate ([bxt,byt,bzt]) 
   cube([bh,b2l,b2w], center = true);   
    }
difference()  {    
translate([bxt,-byt,bzt])
   cube([bh,b1l,b1w], center = true);
translate ([bxt,-byt,bzt]) 
   cube([bh,b2l,b2w], center = true);   
    }