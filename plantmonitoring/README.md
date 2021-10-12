# AmaFi Plant Monitoring System

Currently, the AmaFi plant monitoring system has these features:
  * Capacitive soil moisture and ambient temperature sensors for 5 garden beds in 3 irrigation zones
  * Custom length 4-pin JST connectors for I2C sensors
  * Multiplexer to connect multiple I2C sensors with the same address
  * Lower power consumption than the irrigation system through the 3.3V power rail on the RasPi
  * Automated data management using SQL Alchemy to interface with an SQLite database in Python
  * Weatherproofing with heat shrink, conduit, and conformal coating

# database

There are a number of open-source database engines available for managing data, but for the Raspberry Pi something lightweight is preferred.

SQLite features"
* Preinstalled with Python3 so no additional configuration
* Lightweight
*
*


 is used here because it is lightweight and comes with Python 3. Another appealing feature of SQLite is that it can store data in-memory, meaning a database server does not have to be used. Rather than using SQL to communicate with the database, an Object Relational Model (ORM) is implemented with SQLAlchemy in Python. This allows for communication with the database by treating the SQL queries on the database as Python objects. Since the database is in-memory, an ORM is a good fit as a server isn't involved to slow down data management process. There are several ways to create an ORM

First, install SQLAlchemy:

  `sudo pip3 install sqlalchemy`

Next, set-






By strategically placing soil moisture sensors
