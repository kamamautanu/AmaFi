# AmaFi
Automated water-wise irrigation system

As someone new to the world of engineering, a friend encouraged me to create something that would make life easier for me. Something like automating watering in my garden so I don't spend 6 or more hours a week doing it by hand during the heat of summer. Initially I resisted the idea of integrating technology into my gardening space, but as spring turned into summer and the hot California sun blasted my garden full force, what had once been a labor of love quickly turned into feelings of frustration at both the amount of time I spent watering and the amount of water I was using during a "mega-drought".

Water scarcity isn't an issue of the future, it's happening right here and now. Enter the AmaFi. The AmaFi only applies water where plants need it and when. No more worrying about over or under watering, the AmaFi takes out the guess work in growing drought resiliant gardens while conserving water compared to conventional methods. The AmaFi does this by integrating a number of gardening theories and features:
  * [deep watering](What's the science behind deep watering?) - water less often for longer for deeper moisture penetration
  * [drip irrigation]() - reduces evapotranspiration, plant disease, and efficiently waters deeply
  * [irrigation zones] - three watering zones for crops based on rooting depth categories - low, medium, high
  * insights into




The efficiency of drip irrigation systems has been known for some time. In some systems, water usage can be reduced by 20 to 30%. In a world where water rations are no longer


# Table of Contents
AmaFi Waterwise Irrigation System

  [What is AmaFi?](https://github.com/kamamautanu/AmaFi/blob/main/README.md#what-is-amafi)

  [What is next for AmaFi?](https://github.com/kamamautanu/AmaFi/blob/main/README.md#what-is-next-for-amafi)

Components Details
  1.  [Microprocessor](https://github.com/kamamautanu/AmaFi/blob/main/README.md#1-microprocessor)
  2.  [Case](https://github.com/kamamautanu/AmaFi/blob/main/README.md#2-case)
  3.  [Soil Moisture Sensor](https://github.com/kamamautanu/AmaFi/blob/main/README.md#3-soil-moisture-sensor)
  4.  [Relay](https://github.com/kamamautanu/AmaFi/blob/main/README.md#4-relay)
  5.  [Solenoid Valve](https://github.com/kamamautanu/AmaFi/blob/main/README.md#5-solenoid-valve)
  6.  [I2C Multiplexer](https://github.com/kamamautanu/AmaFi/blob/main/README.md#6-i2c-multiplexer)
  7.  [Other electrical components](https://github.com/kamamautanu/AmaFi/blob/main/README.md#7-other-electrical-components)
  8.  [Backflow Preventer](https://github.com/kamamautanu/AmaFi/blob/main/README.md#8-backflow-preventer)
  9.  [Water Pressure Regulator](https://github.com/kamamautanu/AmaFi/blob/main/README.md#9-water-pressure-regulator)
  10. [Water Filter](https://github.com/kamamautanu/AmaFi/blob/main/README.md#10-water-filter)
  11. [PVC Components](https://github.com/kamamautanu/AmaFi/blob/main/README.md#11-pvc-components)
  12. [Valves](https://github.com/kamamautanu/AmaFi/blob/main/README.md#12-valves)
  13. [Mainline](https://github.com/kamamautanu/AmaFi/blob/main/README.md#13-mainline)
  14. [Connecctors](https://github.com/kamamautanu/AmaFi/blob/main/README.md#14-Connectors)
  15. [Dripline](https://github.com/kamamautanu/AmaFi/blob/main/README.md#15-dripline)
  16. [Plugs and Caps](https://github.com/kamamautanu/AmaFi/blob/main/README.md#16-plugs-and-caps)
  17. [Other irrigation components](https://github.com/kamamautanu/AmaFi/blob/main/README.md#17-other-irrigation-components)  

[Bill of Materials (BOM)](https://github.com/kamamautanu/AmaFi/blob/main/README.md#bill-of-materials-BOM)

[Firmware](https://github.com/kamamautanu/AmaFi/blob/main/README.md#firmware)

[Schematic](https://github.com/kamamautanu/AmaFi/blob/main/README.md#schematic)

[User Manual](https://github.com/kamamautanu/AmaFi/blob/main/README.md#user-manual)

[FAQs](https://github.com/kamamautanu/AmaFi/blob/main/README.md#faqs)

[Tech Details](https://github.com/kamamautanu/AmaFi/blob/main/README.md#tech-details)

[Bugs](https://github.com/kamamautanu/AmaFi/blob/main/README.md#bugs)

[License](https://github.com/kamamautanu/AmaFi/blob/main/README.md#license)

# What is AmaFi?

I was inspired to create AmaFi to reduce the amount of time and water required by my garden.

# What is next for AmaFi?

Four words - going solar and wireless. That's right, now that I have a functioning system up and running I can focus on making improvements.

# Component Details

## 1. Microprocessor

The AmaFi uses the common microprocessor Raspberry Pi Zero W. It's compact, inexpensive, and has more than enough capacity and power for the AmaFi system.

Any Raspberry Pi requires a formatted microSD card and with hundreds of them on the market, the decision paralysis can set in quickly. The AmaFi uses a plant monitoring system that stores soil moisture and ambient temperature measurements in an in-memory SQLite database for later crop stress index calculations. While SQLite itself is lightweight, a microSD card with enough memory to store sensor readings long-term is critical. The AmaFi is also housed outdoors and while several weatherproofing techniques are used, the long-term performance of a microSD card is another critical factor in choosing one. With this in mind, I did some research to find a card with plenty of memory that was best for long-term performance and would perform *well enough* on the RasPi Zero W. My research led my to choose a 32GB Samsung Pro Endurance. It doesn't seem that anyone actually knows whether this microSD card lives up to the claims yet, but I figured it was worth a shot for starters. For more information about choosing a microSD for the RasPi, I found [this post](https://www.tomshardware.com/best-picks/raspberry-pi-microsd-cards) to be a good resource.

The microUSB port on the RasPi Zero W powers the system through a DC adapter plugged into a power outlet. Some of the other RasPi Zero W features utilized in this project are built in WiFi configured using headless setup, the I2C Interface, both the 3.3V and 5V power rails, digital pins that can be pulled high, among others.

## 2. Case

Since the electronic components of this system are located outdoors, thorough weatherproofing is especially imperative to the longevity of the device. With this in mind, a 3D enclosure was designed in OpenSCAD and Cura was used to convert the model into 3D printable g-code. The enclosure features 2 supports with zip tie slots, 2 internal pegs to mount 2 [half-sized Adafruit Permaboards](https://www.adafruit.com/product/571?gclid=CjwKCAjw7--KBhAMEiwAxfpkWNDp2fVAYD2DaYGyx_mDr8xRZU1jsX9PKZduE_mgTrSk0uKAj7SYvhoCk74QAvD_BwE), and a removable bottom that has 6 - 1/2 inch cylindrical cutouts for wires and a polygoon cutout for power adapters. The details for the AmaFi enclosure can be found [here](https://github.com/kamamautanu/AmaFi/tree/main/case). 

## 3. Soil Moisture Sensor

Soil moisture sensors use either resistive or capacitive sensing. Resistive sensors impute the volumentric content of water by measuring the current that passes through the soil between the two sensor prongs to get a resistance value. By design resistive sensors corrode quickly as current runs through the exposed soil probes causing electrolysis. On the other hand, capacitive sensing measures the dielectic formed by the soil and is actually a more accurate measure of soil moisture content compared to resistive sensing. Something like applying fertilizer would decrease the resistance sensor reading, but the most important factor influencing dielectic measurements taken by capacitance sensors is water. Capacitive sensors themselves are made out of a more corrossion resistive material, meaning they last longer than metal resistive sensors. I chose to go with the [Adafruit Capacitive Soil Moisture Sensor](https://www.adafruit.com/product/4026?gclid=CjwKCAjw7--KBhAMEiwAxfpkWMQuIcPafbgoi9CuEed3x9IhuxPp1O-SNFmeNOMi5Y8YBAmQ2-u-ShoCTOsQAvD_BwE). It runs on the I2C Bus, uses the MIT license, and comes with the added bonus of a temperature sensor that is accurate to +/- 2 degrees Celcius.     

## 4. I2C Multiplexer

The Inter-Integrated Circuit (I2C) Interface on the Raspberry Pi allows multiple I2C devices to be connected to one I2C Bus as long as each device has a unique I2C address, multiple instances of the same address are not allowed. An I2C Multiplexer allows multiple I2C sensors with the same I2C address to be connected to different channels on the multiplexer, thus allowing multiple sensors with the same I2C address to connect to one I2C Bus. One multiplexer was plenty for the 6 soil moisture sensors I needed to connect, but multiple Multiplexers could be implemented. [TCA9548A I2C Multiplexer](https://www.adafruit.com/product/2717?gclid=CjwKCAjw7--KBhAMEiwAxfpkWJfjOfjJrfvSvOHVA4LUwrq7fYuRUEg9kGJ12MZfuS3dDWTGXzFlyBoCTxQQAvD_BwE)

## 5. Relay

In order to create three irrigation zones that operated and could be water idependently of one another, I had to utilize three relays. These relays run on digital GPIO pins that can be pulled high on the Raspberry Pi

[Adafruit STEMMA Non-Latching Mini Relay](https://www.adafruit.com/product/4409)

## 6. Solenoid Valve

![Assembled solenoid valves](https://drive.google.com/file/d/1Zhye0jMJMZUY3EdAaPlFWvIvaAXun6sR/view?usp=sharing)

Solenoid valves come in a variety of forms and sizes, but generally have two outlets for liquid and two terminals. I decided to go with the [Adafruit Plastic Solenoid Valve](https://www.adafruit.com/product/997?gclid=CjwKCAjw7--KBhAMEiwAxfpkWGRKpMUIVVWlzhXs_OLp8XZ043Juw9BMAwIWtjTDGVPNoWJCnroIphoCh2AQAvD_BwE) as an inexpensive solution. It is a unidirectional liquid solenoid valve with two threaded 1/2" outlets and is powered by 12V DC. The solenoid valve is normally closed and opens when 12V DC current are applied to the valve terminals. Since my solenoid valves are installed downstream of the water pressure regulator I do not have concerns regarding their longevity. The gasket arrangement inside this particular solenoid valve requires a minimum pressure of 3 PSI for the solenoid valve to open. With a water pressure regulator of 25 PSI upstream, I'm not concerned about meeting the minimum pressure requirements. If the specifications in your system are different, make sure you meet the minimum pressure. If a hardier valve is needed, comparable metal ones to this can be implemented. These solenoid valves also come with a mesh filter built in, which is another bonus safeguard against damage to the drip system.

## 7. Other electrical components

In addition to the electrical components already covered, a number of other supplies are required to create an AmaFi:

* A soldering iron with a fine tip and solder are required. I'm not going to claim to be a soldering expert nor am I going to cover the topic in much detail here. There are plenty of great resources for learning online

* Along with Multimeter, electrical tape, lots and lots of wires,
Let's talk more weatherproofing. The system has some built in weatherproofing of electical components with the 3D enclosure

## 8. Backflow Preventer

Backflow preventers do exactly that - they prevent water from flowing backwards and back into the main water supply, thus preventing potential contamination. There are metal and plastic backflow preventers to use depending on a system's unique requirements. Here, I decided to go for a [brass backflow preventer](https://www.dripdepot.com/product/aqualine-brass-three-quarter-inch-hose-end-vacuum-breaker) since I connected mine directly to the main valve.

## 9.  Water Pressure Regulator

In drip irrigation systems, water pressure regulators are essential for reducing water pressure to a level that the system can handle. Utilizing the correct water pressure for a drip system is important to assure that accurate volumes of water are applied and for the long-term longevity of the system. For most vegetable gardens and some other low-flow systems, a water pressure regulator that reduces water pressure to 25 PSI is adequate. I went with this [25 PSI Senninger 3/4" Hose Thread Pressure Regulator](https://www.dripdepot.com/item/senninger-three-quarter-inch-hose-thread-pressure-regulator-psi-25-psi)

## 10. Water Filter

The water filter in an irrigation system such as this acts as a safe guard against damage that the driplines could incur in a worst case scenario where particulate matter contaminated the main water supply. Since the dripline used in this systen have built in emitters, a 150 micron mesh filter will do the job.
[](https://www.dripdepot.com/product/three-quarter-inch-hose-thread-filter)

## 11. PVC Components

There are a number of ways to connect the main valve to the drip irrigation system. I wanted my system to be as sleek and sturdy as possible, so I decided to run PVC pipe to as close to my solenoids as I could. This involved digging an 18" deep, 12' long trench through hard clay soil from my main valve to my garden bed. I could have used a rotor tiller to do the hard labor for me, but I also wasn't sure where other pipes were, so I took the more cautious and laborious route. I happened to have more than enough 3/4" PVC pipe laying around from a previous irrigation project and the main valve that was already installed happened to be 3/4", so I stuck with this size for all of my PVC Components.

![]()

I found these cool [elbow](https://www.dripdepot.com/item/hydro-rain-pvc-lock-elbow-size-three-quarter-inch) and [tee](https://www.dripdepot.com/item/hydro-rain-pvc-lock-combination-tee-size-three-quarter-inch-pvcl-x-half-inch-fpt) PVC locks in the 3/4" size I needed for my PVC components that had a 1/2" female outlet to connect the solenoid valves, I also grabbed one of these [couplers](https://www.dripdepot.com/item/hydro-rain-pvc-lock-coupler-size-three-quarter-inch). These PVC components are great because you can just slide your PVC pipe in, give it a little tug, and you're good to go - no harsh solvents or waiting for things to dry and cure. Unfortunately, there were PVC components I needed that aren't available with Hydo-rain locks, so I also grabbed a [45 degree elbow](https://www.dripdepot.com/item/schedule-40-pvc-45-degree-slip-elbow-size-three-quarter-inch) and an [FPT PVC adapter](https://www.dripdepot.com/item/schedule-40-pvc-adapter-fpt-by-slip-slip-size-three-quarter-inch-fpt-size-three-quarter-inch), which are required in this set-up. PVC primer and cement are needed to secure the connections.

## 12. Valves



## 13. Mainline

The mainline is also known as the supply line because it feeds water from upstream to the driplines that are connected downstream making it a pillar in any drip irrigation system. Mainline can be made out of a number of materials, but I chose to go with polyethylene tubing because it is sturdy and cheap. Mainline also comes in a number of sizes from as small as 1/8" in diameter to over 1". The solenoid valves that I am using in my system are 1/2", so I went with a 1/2" diameter for my mainline as well. Before buying the mainline, I made sure that my system did not exceed the maximum run length or maximum gallons per hour supplied for the 1/2" polyethylene mainline tubing I intended to use - in this case 200' and 200 GPH, respectively. With around 25' of mainline, I can . Typically you would first calculate your run length and the GPH supplied to determine the size mainline your system required, but with the limiting factor in this scenario being the diameter of my solenoid valves

[1/2" Polyethylene Mainline](https://www.dripdepot.com/item/polyethylene-tubing-size-half-inch-600-inch-inside-diameter-by-700-inch-od-length-50-feet)

## 14. Connectors

[1/2" Threaded Perma-loc Tee Adapter](https://www.dripdepot.com/item/irritec-perma-loc-tubing-by-fpt-tee-adapter-perma-loc-size-half-inch-thread-size-half-inch-fpt)

[1/4" Barbed Tubing Couplers](https://www.dripdepot.com/item/barb-tubing-coupling-size-quarter-inch)

## 15. Dripline

Similar to mainline, dripline can be made from a number of materials in a range of sizes.

[1/4" Polyethylene Dripline](https://www.dripdepot.com/item/quarter-inch-polyethylene-dripline-emitter-spacing-6-inch-flow-rate-half-gph-roll-length-50-feet-color-black)

## 16. Plugs and Caps

[1/2" Perma-loc Cap](https://www.dripdepot.com/item/irritec-perma-loc-tubing-end-cap-perma-loc-size-half-inch)
[Goof Plugs](https://www.dripdepot.com/item/goof-plug-size-quarter-inch)

## 17. Other irrigation components

Additional materials that are required to build this drip irrigation system include: PVC primer and cement, plumber's tape, painter's tape

# Bill of Materials (BOM)

| Ref | Item                           | pcs   | Comment                      |
| --- | ------------------------------ | ----- | ---------------------------- |
| 1   | Raspberry Pi Zero W            |   1   |                              |
| 2   | Samsung Pro 32 GB microSD card |   1   |                              |
| 3   | MicroUSB Power Supply          |   1   |                              |
| 4   | Non-latching Mini Relay        |   3   |                              |
| 5   | 1/2" 12V Plastic Solenoid Valve|   3   |                              |
| 6   | TCA9548A I2C Multiplexer       |   1   |                              |
| 7   | Half-sized Permaboard          |   2   |                              |
| 8   | Backflow Preventer             |   1   |                              |
| 9   | Water Pressure Regulator       |   1   |                              |
| 10  | 150 Micron Water Filter        |   1   |                              |
| 11  | Capacitive Soil Moisture Sensor|   6   |                              |
| 12  | Samsung Pro 32 GB microSD card |       |                              |
| 13  | Samsung Pro 32 GB microSD card |       |                              |
| 14  | Raspberry Pi Zero W            |   1   |                              |
| 15  | Samsung Pro 32 GB microSD card |       |                              |
| 16  | Raspberry Pi Zero W            |   1   |                              |
| 17  | Samsung Pro 32 GB microSD card |       |                              |
| 18  | Raspberry Pi Zero W            |   1   |                              |
| 19  | Samsung Pro 32 GB microSD card |       |                              |

# User Manual

## Getting started

  1. Download the appropriate version of [Raspberry Pi Imager](https://www.raspberrypi.com/software/) for your Operating System.

  2. Open Raspberry Pi Imager and insert the microSD card into the machine. Select the most current version of Raspberry Pi OS (Buster at the time of this writing), the microSD to burn the disk image to, and write the file - this could take a little bit of time.

  3. Configure headless setup on the RasPi and enable ssh. The documentation is [here](https://www.raspberrypi.com/documentation/computers/configuration.html#setting-up-a-headless-raspberry-pi).

  4. Plug the RasPi into the power supply and allow it to boot, this can take up to 5 minutes. If the previous steps were done correctly, the RasPi will automatically connect to the specified WiFi network at boot.

  5. To remotely connect to the RasPi using SSH, the IP address its using will need to be enumerated. There are a number of ways to do this, here the network scanning tool [nmap](https://nmap.org/download.html) is used. The following code can be used on the command line version of nmap or in the graphical user interface (GUI) of nmap, Zenmap:

  `nmap -sn YOURROUTERIP/24`

  6. SSH into the RasPi using the default credentials user:pi and password:raspberry and this line of code:

  `ssh -X pi@IPADDRESS`

  The -X option allows a program's GUI to be forwarded using ssh, it is required here to manually configure features on the RasPi.

  7. At login instructions to reset the password are given - change it to something secure and at the least write it down somewhere you'll remember.

  8. Since the AmaFi system is programmed in CircuitPython, some initial setup is required for the RasPi. update and install all the dependencies for CircuitPython, Seesaw, and other Python modules. For an in depth guide to configuring CircuitPython on your RasPi, you can view the Adafruit documentation. Otherwise, here's the code I ran to configure my setup:

  ***Turn this into py file that i reference***

  `sudo apt-get update`

  `sudo apt-get upgrade`

  `sudo apt-get install python3-pip`

  `sudo pip3 install --upgrade setuptools`

  `cd ~`

  `sudo pip3 install --upgrade adafruit-python-shell`

  `wget https://raw.githubusercontent.com/adafruit/Raspberry-Pi-Installer-Scripts/master/raspi-blinka.py`

  `sudo python3 raspi-blinka.py`

  `sudo pip3 install adafruit-circuitpython-seesaw`

  `sudo pip3 install time`

  `sudo pip3 install `





To start with the AmaFi, you will need an

# FAQs

What's the science behind deep watering?

  When plants receive water more frequently in lower volumes, the water does not penetrate deeply into the soil, but the top layer of soil will be more moist more often. When this happens, plant roots are not encouraged to grow deeply into the soil and instead stay in the most shallow upper layer. When drought hits, these plants are not resilient and may suffer severe damage.

How do you encourage roots to grow deeply?

  By withholding water just long enough that crops enter the very initial stages of water stress, but not long enough to for irreversible damage to incur. This triggers the production of a hormone called Abscisic Acid (ABA). As ABA production increases it triggers roots to grow deeper into the soil to seek moisture. Increased root surface area in deeper parts of the soil ultimately makes plants more resilient to drought.

 How does watering deeply conserve water?

 Watering deeply reduces

 What are the limitations of watering deeply?

 Heavy loam or clay soils can hold large volumes of water, but some soil types, namely sandy, drain too quickly and will require more frequent watering regardless. Adding organic mater to soil types like this can substantially increase the water holding capacity of the soil. Watering deeply is also not recommended when seeds or seedlings have yet to establish, as they won't be able to access water in the deeper soil layers.

 What type of irrigation system is best for watering deeply?

 If you ask me, drip irrigation all the way! Of course each type of system has unique requirements, but generally other types of irrigation systems, especially those involving overhead watering, apply water to the top soil level, usually at higher rates than the soil is able to absorb. This produces water waste in the form of runoff. In overhead irrigation systems, water is also lost in the form of evaporation, both off the surfaces of the soil and foliage. Overhead watering is also associated with an increase risk of disease in some plants as applying water to foliage often encourages bacterial and fungal growth. Drip irrigation does not water the top layer of soil in the same way. The trickling of water in this micro-irrigation system means that, when done correctly, water does not pool on the soil surface and instead is slowly absorbed into deeper layers of the soil over longer periods of time.   

# Known Bugs

* Occasionally when the watering program is ran, the following error is returned:

`Seesaw hardware ID returned (0xd5) is not correct! Expected 0x55. Please check wiring.`

  When this happens, CircuitPython is using the default Seesaw I2C address 0x55 instead of the address, 0x36, that has been specified in the program for soil moisture sensors. I'm not sure why this happens, but thankfully the error is mostly just an annoyance as it occurs infrequently and the watering program can simply be ran again.

# License

The AmaFi device is licensed under Open-source hardware, licensed b. Other y ???:
* Hardware is licensed under ?
* Software is licensed under ?
* Documentation is licensed under ?
