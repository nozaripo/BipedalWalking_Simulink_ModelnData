# BipedalWalking_Simulink_ModelnData
This repository contains: 
- a model of bipedal walking on a Treadmill, the belts of which could be set to roll at different speeds ('**Biped_Model.slx**')
- a script used to generate the data needed to actuate the model ('**Script_Data.m**')



## Instructions to implement a simulation using motion data as input

Follow these steps to be able to run a simulation for any arbitrary joint angle data.

1. Run '**Script_Data.m**' to generate the joint angle trajectories and other kinematic or temporal variables and parameters into the workspace

*Note*: Read the description in '**Script_Data.m**' for importing and using your time (`Time`) and joint angle trajectories (`Traj`) data in a proper format. You may need to follow the angle conventions noted in the script.


2. Then open and run '**Biped_Model.slx**' for both seeing the resulting animation of simulation and obtaining the outputs, which will be accessible through Matlab workspace once the simulation is complete.

*Note*: Running the simulation directly would generate the simulation output into the workspace. Alternatively, you can look into '**Script_Data.m**' and uncomment the relevant line of code where you may use `sim('Biped_Model.slx')` to save the simulation output into a single structure and have access to the outputs in the script for potential visualization purposes.



*Below is shown the animation of the simulation with my exemplary data*

https://user-images.githubusercontent.com/40179311/154436775-4b139ce4-90de-4787-b2ef-77feedeb5220.mp4

## Model Annotations

Below is shown an overview of the model

![image](https://user-images.githubusercontent.com/40179311/160371271-54f17624-af57-48bc-86ff-af7e9f446085.png)

The leftmost blocks, also shown below, are the physical and mathematical solving foundations for the model. "World Coordinate System" is located at the middle and center of treadmill belts deep by half the belts thickness. The two transforms represent the translations from the "World CS" to the "Torso Coordinate System"

![image](https://user-images.githubusercontent.com/40179311/160372676-ded87b78-e363-4e3d-bcc6-f37de6aeca00.png)

The brownish area, also shown below, represents the unactuated degrees of freedom that the robot has w.r.t. the world in its torso.

![image](https://user-images.githubusercontent.com/40179311/160374018-2c138ef9-213b-4283-9eb7-c1d0929282a5.png)

Below is shown the main block of the model, within which all the robot segments and joints plus their actuators as well as all the blocks relevant to contact between the model's feet and the treadmill are defined. This will be reviewed in depth in Section [Robot Block](###Robot-Block).

![image](https://user-images.githubusercontent.com/40179311/160374602-9704a87d-e228-493a-aeb4-300dd6702423.png)

Next in the overview is the set of blocks responsible for sensing, visualizing and storing states and trajectories of joints and body segments such as torso heels etc.

![image](https://user-images.githubusercontent.com/40179311/160377164-8f7b66bb-c907-4bbd-99d6-c9429cd0cdb4.png)


### Robot Block
