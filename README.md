# AmaFi
Automated waterwise irrigation system

One day as I was doing my morning round in the garden watering, two thoughts came to mind, well three really:

1. I love my garden, but I spend so muc  


The effeciency of drip irrigation systems has been known for some time. In some systems, water usage can be reduced by 20 to 30%. In a world where water rations are no longer 


# Table of Contents
AmaFi Waterwise Irrigation System
  
  What is AmaFi?

  What is next for AmaFi?

Components Details
  1.  Microprocessor 
  2.  Case
  3.  Soil Moisture Sensor
  4.  Relay
  5.  Solenoid Valve 
  6.  I2C Multiplexer
  7.  Other electrical components
  8.  Backflow Preventer
  9.  Water Pressure Regulator
  10. Water Filter
  11. PVC Components
  12. Valves
  13. Mainline
  14. Connecctors
  15. Dripline
  16. Plugs and Caps
  17. Other irrigation components  
  
Bill of Materials (BOM)
Firmware
Schematic
User Manual
FAQ
Tech Details
Bugs
License

# What is AmaFi?

I was inspired to create AmaFi to reduce the amount of time and water required by my garden.

# What is next for AmaFi?

Four words - going solar and wireless. That's right, now that I have a functioning system up and running I can focus on making improvements to my system. 

# Component Details

## 1.  Microprocessor 

For this project I chose the common microprocessor Raspberry Pi Zero W. It's compact, inexpensive, and has more than enough capacity and power for the tasks we'll be performing. According to ?, the ? microSD card has the best long-term performance with RasPi Zero W, so I purchased a 32 GB one and formatted it with the latest version of Rasperry Pi OS at the time of this writing (Buster). The microUSB port on the RasPi Zero W is used to power the system through a DC adapter plugged into a power outlet. Some of the other RasPi Zero W features utilized in this project are built in WiFi configured using headless setup, the I2C Interface, both the 3.3V and 5V power rails, digital pins that can be pulled high, among others. Once I had my RasPi booted, I did a simple nmap network scan to determine what IP address the RaspPi was using on my local network:

nmap -sn YOURROUTERIP/24

With this information you simply ssh into the RasPi using these default credentials user:pi and password:raspberry and immediately change your password to something secure. If you haven't already, you'll have to update and install all the dependencies for CircuitPython, Seesaw, and other Python modules. For an in depth guide to configuring CircuitPython on your RasPi, you can view the Adafruit documentation. Otherwise, here's the code I ran to configure my setup:

INSERT CODE


## 2.  Case

Since the electronic components of this system are housed outdoors, thorough weatherproofing was especially imperative to the longevity of the device. With this in consideration, I decided to design a 3D enclosure in OpenSCAD and then used Cura to convert the model into 3D printable g-code. The enclosure has slots on the back for zip ties for easy securing, two pegs inside spaced to hold two half-sized Adafruit Permaboards, and a removable bottom with six 1/2 inch circle cutouts for wires and a small spot to use a screwdriver to pop the bottom out. For more information, the complete details can be found HERE. Since PLA is not UV resistant, I simply used some sand paper to abrade the exterior of the case and applied a coating of UV resistant ??? on the outside. 

## 3.  Soil Moisture Sensor

Soil moisture sensors use either resistive or capacitive sensing. Resistive sensors impute the volumentric content of water by measuring the current that passes through the soil between the two sensor prongs to get a resistance value. By design resistive sensors corrode quickly as current runs through the exposed soil probes causing electrolysis. On the other hand, capacitive sensing measures the dielectic formed by the soil and is actually a more accurate measure of soil moisture content compared to resistive sensing. Something like applying fertilizer would decrease the resistance sensor reading, but the most important factor influencing dielectic measurements taken by capacitance sensors is water. Capacitive sensors themselves are made out of a more corrossion resistive material, meaning they last longer than metal resistive sensors. I chose to go with the Adafruit Capacitive Soil Moisture Sensor. It runs on the I2C Bus, uses the MIT license, and comes with the added bonus of a temperature sensor that is accurate to +/- 2 degrees Celcius.     

## 4.  I2C Multiplexer

The Inter-Integrated Circuit (I2C) Interface on the Raspberry Pi allows multiple I2C devices to be connected to one I2C Bus as long as each device has a unique I2C address, multiple instances of the same address are not allowed. An I2C Multiplexer allows multiple I2C sensors with the same I2C address to be connected to different channels on the multiplexer, thus allowing multiple sensors with the same I2C address to connect to one I2C Bus. One multiplexer was plenty for the 6 soil moisture sensors I needed to connect, but multiple Multiplexers could be implemented.  

## 5.  Relay

In order to create three irrigation zones that operated and could be water idependently of one another, I had to utilize three relays. These relays run on digital GPIO pins that can be pulled high on the Raspberry Pi

## 6.  Solenoid Valve

Solenoid valves come in a variety of forms and sizes, but generally have two outlets for liquid and two terminals. I decided to go with the [Adafruit Plastic Solenoid Valve](https://www.adafruit.com/product/997?gclid=CjwKCAjw7--KBhAMEiwAxfpkWGRKpMUIVVWlzhXs_OLp8XZ043Juw9BMAwIWtjTDGVPNoWJCnroIphoCh2AQAvD_BwE) as an inexpensive solution. It is a unidirectional liquid solenoid valve with two threaded 1/2" outlets and is powered by 12V DC. The solenoid valve is normally closed and opens when 12V DC current are applied to the valve terminals. Since my solenoid valves are installed downstream of the water pressure regulator I do not have concerns regarding their longevity. The gasket arrangement inside this particular solenoid valve requires a minimum pressure of 3 PSI for the solenoid valve to open. With a water pressure regulator of 25 PSI upstream, I'm not concerned about meeting the minimum pressure requirements. If the specifications in your system are different, make sure you meet the minimum presure. If a hardier valve is needed, comparable metal ones to this can be implemented. These solenoid valves also come with a mesh filter built in, which is another bonus safeguard against damage to the drip system.

## 7.  Other electical components

Multimeter, eletrical tape, lots and lots of wires,
Let's talk more weatherproofing. The system has some built in weatherproofing of electical components with the 3D enclosure 

## 8.  Backflow Preventer

Backflow preventers do exactly that - they prevent water from flowing backwards and back into the main water supply, thus preventing potential contamination.

## 9.  Water Pressure Regulator

In drip irrigation systems, water pressure regulators are essential for reducing water pressure to a level that the system can handle. Utilizing the correct water pressure for a drip system is important to assure that accurate volumes of water are applied and for the long-term longevity of the system. For most vegetable gardens and some other low-flow systems, a water pressure regulator that reduces water pressure to 25 PSI is adequate. 

## 10. Water Filter 

The water filter in an irrigation system such as this acts as a safe guard against damage that the driplines could incur in a worst case scenario where particulate matter contaminated the main water supply. Since the dripline used in this systen have built in emitters, a 150 micron mesh filter will do the job. 

## 11. PVC Components

There are a number of ways to connect the main valve to the drip irrigation system. I wanted my system to be as sturdy and look as sleek as possible, so I decided to run PVC pipe to as close to my solenoids as I could. This involved digging an 18" deep, 8' long trench through hard clay soil from my main valve to my garden bed. I could have used a roter tiller to do the hard labor for me, but I also wasn't sure where other pipes may have been located, so I took the more cautious and laborous route. I happened to have more than enough 3/4" PVC pipe laying around from a previous irrigation project and fortuitously enou


## 12. Valves



## 13. Mainline

The mainline is also known as the supply line because it feeds water from upstream to the driplines that are connected downstream making it a pillar in any drip irrigation system. Mainline can be made out of a number of materials, but I chose to go with polyethylene tubing because it is sturdy and cheap. Mainline also comes in a number of sizes from as small as 1/8" in diameter to over 1". The solenoid valves that I am using in my system are 1/2", so I went with a 1/2" diameter for my mainline as well. Before buying the mainline, I made sure that my system did not exceed the maximum run length or maximum gallons per hour supplied for the 1/2" polyethylene mainline tubing I intended to use - in this case 200' and 200 GPH, respectively. With around 25' of mainline, I can . Typically you would first calculate your run length and the GPH supplied to determine the size mainline your system required, but with the limiting factor in this scenario being the diameter of my solenoid valves

## 14. Connectors



## 15. Dripline

Similar to mainline, dripline can be made from a number of materials in a range of sizes. 

## 16. Plugs and Caps



## 17. Other irrigation components 

Additional materials that are required to build this drip irrigation system include: PVC primer and cement, plumber's tape, painter's tape

# User Manual 



# FAQs

# Known Bugs

* Sometimes the Seesaw package in Python uses the default I2C address rather than the specified 0x3

# License 

The AmaFi device is licensed under Open-source hardware, licensed by ???:
* Hardware is licensed under ?
* Software is licensed under ?
* Documentation is licensed under ?


