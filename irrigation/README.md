# AmaFi Irrigation System

More than being an automated irrigation system, the goal of the AmaFi project is to conserve water using both conventional and novel approaches. There is far more research behind water conservation and irrigation techniques than can be covered here, so this section only covers the AmaFi irrigation system in greater detail.

Some of the main topics this sections covers are:

*
*
* [Water Conservation Methods]()
* [Installing the Irrigation System]()
* [Irrigation System Schedules]()

 Of course each garden and irrigation system has unique variables that accumulate to create a set of requirements.

## Water Conservation Methods

The AmaFi integrates these well known water conservation methods in addition to having some novel approaches:

**1. One simple way to improve soil moisture retention is by soil amendment**

  * **mulching** - adds organic matter to the top layer of soil, reduces the waste of water through evaporation in the top soil layer, untreated and undyed Redwood mulch is used here

  ![Redwood mulch helps reduce the soil alkalinity in this system]()

  * **composting** - mixing organic matter into the soil is one of the best ways to improve soil moisture holding capacity and water retention while giving your plants a little bit of love in the form of fertilizer, compost was added to this system to improve the texture of the native heavy clay soil

**2. Deep watering**

Deep watering is a technique where the soil is saturated with water down at least 6 to 8" below the soil surface. The system in return is not irrigated again until the soil is dry 6 to 8" below the soil surface. By withholding water just long enough that plants enter the very initial stages of water stress, but not long enough to for irreversible damage to incur, roots are encouraged to grow deeper into the soil to seek moisture. The science behind this is simple - the production of a hormone called Abscisic Acid (ABA) is triggered in the initial stage of water stress and as ABA production increases it triggers roots to grow deeper into the soil. Increased root surface area in deeper parts of the soil
ultimately makes plants more resilient to drought.

Many if not most conventional watering methods only saturate the soil to as deep as 6". Watering shallowly in this way means that roots are only encouraged to grow in the top soil layer. Compared to deep layers of the soil that do

Irradiation from the sun heats the top layer of soil, increasing the evaporation of water



When drought hits the top soil layer quickly dries creating a problem as this is where the plant roots are located.



of growing drought-resilient plants in systems that use water more efficiently.

What's the science behind deep watering?

  When plants receive water more frequently in lower volumes, the water does not penetrate deeply into the soil, but the top layer of soil will be more moist more often. . When drought hits, these plants are not resilient and may suffer severe damage.

 How does watering deeply conserve water?

 Watering deeply reduces

 What are the limitations of watering deeply?

 Heavy loam or clay soils can hold large volumes of water, but some soil types, namely sandy, drain too quickly and will require more frequent watering regardless. Adding organic mater to soil types like this can substantially increase the water holding capacity of the soil. Watering deeply is also not recommended when seeds or seedlings have yet to establish, as they won't be able to access water in the deeper soil layers.


 The 5V rail on the RasPi is used to power each relay on the Permaboard through three wires - VIN, GND, and a digital pin. A unique digital pin was used for each relay in order to allow the solenoid valves that correspond to the 3 different irrigation zones to operate independently.




**3. Drip irrigation**

With deep watering as the theory behind the AmaFi irrigation system, drip irrigation is the technique that brings the theory functionality. When it comes to conventional irrigation techniques, drip irrigation is perhaps most well-known for its water conservation potential when applied in the appropriate context.

Other irrigation techniques can and usually do involve both overhead watering and saturating the entire soil surface with water. Both of these are problematic for different reasons. In overhead watering irrigation systems, water is lost in the form of evaporation, both off the surfaces of the soil and foliage. Overhead watering can also stress plants when the application timing is inappropriate and even increase the risk of disease by encouraging the growth of pathogenic fungi and bacteria. In contrast, when water is applied across the soil surface at rates higher than the soil can absorb, water is lost in the form of runoff waste. This means that not as much water is being absorbed into the system and the water that is stays in the top layer of soil, which we already know is susceptible to water loss through evapotranspiration.

Drip irrigation does not water the top layer of soil in the same way. The trickling of water in this micro-irrigation system allows water to be applied slowly enough that it is absorbed down into the root zone where we want it to encourage the growth of drough-resiliant plants instead of pooling at the surface.



![](https://github.com/kamamautanu/AmaFi/blob/main/images/goodies.jpg)


## Installing the Irrigation System

The AmaFi irrigation system design is not particularly complicated, but following the assembly steps in the correct order during the installation process is important. I would recommend measuring and cutting the PVC pipe as you go and covering any exposed ends or terminals, saran wrap and painter's tape are used here. The following is the recommended order of assembling the irrigation system:

  1. Install the capped polyethylene mainlines and attach these to the tee solenoid valve adapters.

  ![](https://github.com/kamamautanu/AmaFi/blob/main/images/assemblingirrigation.jpg)

  2. Dig or rotor till an 18" deep trench from the main valve to the garden bed.

  3. Using threaded sealant tape, wrap all the threaded components making sure to go in the direction of the threads several times, and connect the threaded irrigation components.

  ![](https://github.com/kamamautanu/AmaFi/blob/main/images/solenoidsetup.jpg)

  4. Thread the solenoids to the PVC tee and elbow adapters.

  ![](https://github.com/kamamautanu/AmaFi/blob/main/images/solenoids_assembled.jpg)

  5. Thread the solenoid and PVC pipe adapters to the mainline adapters

  6. Working downstream, lock PVC pipe between solenoid adapters

  ![](https://github.com/kamamautanu/AmaFi/blob/main/images/assembledirrigation.jpg)

  7. To seal the regular Schedule 40 PVC components upstream, thoroughly prime the joints and apply cement

  8. Assemble primed and cemented PVC components and allow to dry and cure

  9. Start to backfill the trench with small rocks, gravel, or soil chunks to help keep the pipe in place.

  10. Finish backfilling the trench and smooth over the surface, periodically checking to make sure the aboveground PVC components are still in place and adjusting accordingly.

  ![](https://github.com/kamamautanu/AmaFi/blob/main/images/panoramairrigation.jpg)

  11. Walk over the area to slightly compact the soil

  **Note:** .


## Irrigation Schedule Programs

The AmaFi uses irrigation schedule programs developed in CircuitPython. If you possess the time and skills, you can program your own irrigation schedule for your device. Otherwise the following executable programs can be downloaded onto your AmaFi:

* [seedlings.py]() - applies less water more often, intended for seeds and seedlings
* []() -
*
*

**Note:** Engineering irrigation systems can be more involved than one might first assume. The components and design of the AmaFi irrigation system can work in a diversity of gardens, but no guarantees or liability can be assumed if users deviate from this design.
