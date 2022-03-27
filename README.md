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

