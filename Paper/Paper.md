# Wagon4.0 – the smart wagon for improved integration into Industry 4.0 plants

R. Pfaff & B.D. Schmidt & D. Wilbring & M. Enning

Aachen University of applied sciences, Aachen, Germany

J. Franzen

RuhrUniversität Bochum, Bochum, Germany

Classification: Vehicle Track Systems; Automation in HH systems

ABSTRACT In many instances, freight vehicles exchange load or
information with plants that are or will soon be Industry4.0 plants. The
Wagon4.0 concept, as developed in close cooperation with e.g. port or
mine operations, offers a maximum in railway operational efficiency
while providing strong business cases already in the respective plant
interaction.

The Wagon4.0 consists of main components, a power supply, data network,
sensors, actuators and an operating system, the so called WagonOS. The
Wagon OS is implemented in a granular, self-sufficient manner, to allow
basic features such as WiFi-Mesh and train christening in remote areas
without network connection. Furthermore, the granularity of the
operating system allows to extend the familiar app concept to freight
rail rolling stock, making it possible to use specialised actuators for
certain applications, e.g. an electrical parking brake or an auxiliary
drive. In order to facilitate migration to the Wagon4.0 for existing
fleets, a migration concept featuring five levels of technical
adaptation was developed.

The present paper investigates the benefits of Wagon4.0-implementations
for the particular challenges of heavy haul operations by focusing on
train christening, ep-assisted braking, autonomous last mile and
traction boost operation as well as improved maintenance schedules.

## Introduction (Raphael, Daniela)

### Industry 4.0 Concepts
By exchanging information between cargo, wagons and equipment, it is possible to optimise the process of distributing and loading goods. __Already known industry 4.0 concepts are for example XXX__. However, such a connection is not possible in freight transport, since there are no far-reaching concepts for connecting goods to be loaded, the vehicle and the receiving plant. This is to be changed by the Wagon 4.0. The Wagon 4.0 is intended to become a more effizent means of operation through possibilities such as automatic adjustment of the brake during train preparation, preparation of coupling points, automatic train christening, but also communication with load and equipment.

### Wagon 4.0 Architecture
At first view, the Wagon 4.0 is a conventional freight wagon. It has conventional bogies and couplings. It consists of a power supply with buffer battery, sensors, actuators, a computer with operating system, communication units and a shunting drive.

The Wagon 4.0 is autarcic, knows itself and recognizes other Wagon 4.0 in its neigbourhood. Thanks to a battery that is charged during the run, it is also 'intelligent' when stationary. Due to the operating system and other interfaces to the power supply, it can be optimized for various applications. 

### Key Components
In order for a freight wagon to be able to support operation in the future, it needs a power supply. This is, for example, 24 V and therefore in the range of safety extra-low voltage. A buffer battery, which is charged by an axle cover generator while the vehicle is in motion, fed by an automatic coupling or by solar panels, enables continuous access to the car's operating system. Short-term, larger current take-offs are also possible, for example when adjusting actuators, as is continuous reading of various sensors.

Sensors are needed to monitor the condition of the wagon. Depending on the equipment of the wagon, different sensors are possible. Sensors for performance monitoring as well as GPS, bearing conditions and loading are useful as standard equipment. Monitoring of shocks, fasteners and load securing is also possible. 

Actuators are required for the brake and its components. Actuators for opening and closing the main air line can be used to simplify train separation or coupling. A brake test can also be carried out more easily by opening the last main air line valve and passing the train without further gears. Further actuators are conceivable, for example, for the parking brake. An automatable parking brake would eliminate the need to put on brake shoes. Automation of the brake reverser allows the brake position to be easily changed. Again, there is no need to walk past the train to set the appropriate type of brake. The last point of the brake is the ep-brake. The ep-brake has many advantages, especially for freight trains. For example, the penetration time of air in the main air pipe is limited to the speed of sound, but that of data is not. Due to this limitation, the front wagons of the wagon train are braked earlier than the rear wagons, which leads to an opening of the wagons and corresponding wear on the front wagons. This can be reduced by an ep-brake. However, this is also relevant to safety and cannot yet be used nationwide when freight wagons are introduced. The ep-assisted brake can be used as an intermediate. (Function see below)

The operating system of the freight car, WagonOS, knows various things about the freight car. These include the mileage and location, but also data from various sensors position of brakes as well as for condition-based maintenance. By storing this data, it is also possible to avoid double handling of cars and either save time or use it on cars that need it. In addition, the computer is needed for the brake calculation after the composition of the train and the train christening.

By means of WLAN antennas, the Wagon 4.0 is able to make similarly communicating systems and loads understandable. Above all, however, it finds other Wagons 4.0 in its environment and can exchange them as soon as it is in a wagon group with them. This also enables an ep-brake to be applied to freight wagons.

Also imaginable for a better equipment for freight wagon 4.0 is a shunting drive that supports on the last mile and in the plant and reduces single runs with shunting locomotives.

## Use Cases (Raphael, Daniela)

### Harbour interaction
Cooperation with cranes and other facilities in the port area makes it possible to optimise the port. 

Through better cooperation, faster turnarounds in the port are possible, which lead to faster overall turnarounds and thus to a more efficient vehicle.

In addition to the options listed above, for example, adjustable support pins for container wagons are an option. Depending on the load, a 40-foot container is placed in the middle of a container wagon, two 40-foot containers on the sides or a 40-foot container and a 20-foot container on the sides. Depending on this, the support pins with which the wagons are equipped must be lifted.  This is currently still manual work, but can change with a freight wagon 4.0 and corresponding actuators.

### Industry 4.0 Plant
In industrial plants, the freight wagon 4.0 can log on and off independently at loading points. This leads to better plant integration.

### Shunting
The freight wagon 4.0 can be helpful when shunting and, in addition to the possible shunting drive, can also assist in train composition. Information from previous journeys simplifies technical wagon handling, load changes, brake settings and brake calculations. This saves time and staff.

The automatic parking brake eliminates the need for shoes or other rugs. This reduces sources of failure, but above all ensures smoother operation because they no longer have to be collected. 

The power supply also makes it possible to equip the last car with a camera and other sensors. This makes it possible to drive with the tip monitored, even without shunting assistants, and at the same time provides a more ergonomic and pleasant workplace for the locomotive driver.

The preparation of coupling and separation points enables faster train dispatch with coupling field operations.

## Potential Benefits for Heavy Haul

### Condition Monitoring and Maintenance (Julian)

### Remote Train Christening and Brake Calculation (Daniela, Raphael)
Since each wagon carries a lot of information about itself and knows its neighbours, train christening and the calculation of the brake percentage and thus the required brake position and maximum speed is simplified.

### Autonomous Last Mile Operation (Raphael, Bernd)

### Traction Boost Operation (Bernd, Raphael)

### ep-Assisted Braking (Raphael, Daniela)
For the concept of the ep-assisted brake, individual wagons in the train must be equipped with it. An electro-pneumatic transmission of the brake command allows it to be executed faster and the wagons wear out more slowly due to fewer drives onto the previous wagons. In addition, a test introduction is good for shortening braking distances.

## Conclusion

## References

