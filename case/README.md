# AmaFi Enclosure

![Assembled Case](https://github.com/kamamautanu/AmaFi/blob/main/images/wiredcase.jpg)

The AmaFi enclosure is designed using parametric 3D modeling techniques in [OpenSCAD](https://openscad.org/downloads.html) and converted to g-code using [Cura](https://ultimaker.com/software/ultimaker-cura).

The OpenSCAD files for the [case](https://github.com/kamamautanu/AmaFi/blob/main/case/case.scad) and [bottom cover](https://github.com/kamamautanu/AmaFi/blob/main/case/bottom.scad) can be downloaded and modified directly. The step files for the 3D models can also be downloaded directly and printed with a 3D printer:

  * [case.stl](https://github.com/kamamautanu/AmaFi/blob/main/case/case.stl) - this is the main compartment that features pegs for mounting Permaboards and supports with 2 zip tie slots

  ![Internal view of the AmaFi case](https://github.com/kamamautanu/AmaFi/blob/main/images/case.png)

  * [bottom.stl](https://github.com/kamamautanu/AmaFi/blob/main/case/bottom.stl) - this is a cover that slides into the bottom of the case that features 6 - 1/2" circle cutouts to feed the sensor, solenoid, and power wiring through. A few different designs were tried before settling on this one

  ![Evolution of the bottom cover design for the AmaFi case](https://github.com/kamamautanu/AmaFi/blob/main/images/bottomevolution.jpg)



Here are a few pointers to successfully print these 3D models:

  * In 3D software, use a raft to increase adhesion of the PLA filament to the printing platform on the 3D printer

      ![Example raft on bottom cover](https://github.com/kamamautanu/AmaFi/blob/main/images/raft.jpg)

  * Also configure the case to be printed with supports everywhere to provide stability to the final product

      ![Example case printed with supports everywhere](https://github.com/kamamautanu/AmaFi/blob/main/images/support.jpg)

  * Depending on the 3D printer, the case will probably need to be rotated around in the 3D software to fit inside the printing area
  * Print the walls of the case and the bottom cover at least 2 mm thick, preferably more if you can manage
  * Sand the exterior walls of the product and apply a UV proofing solvent if using PLA filament as it is not UV resistant

   **Note:** Increasing the thickness of the AmaFi enclosure and adding adapters for conduit on the bottom cover will be the main objective of future revisions.
