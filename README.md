# BipedalWalking_Simulink_ModelnData

#### Contains a model of bipedal walking on Treadmill in Sagittal plane and a script used to generate the data needed to actuate the model

1. Run '**Script_Data.m**' to generate the joint angle trajectories and other kinematic or temporal variables and parameters into the workspace

*Note*: Read the description in '**Script_Data.m**' for importing and using your time (`Time`) and joint angle trajectories (`Traj`) data in an appropriate format.


2. Then open and run '**Biped_Model.slx**' for both seeing the resulting animation of simulation and obtaining the outputs.

*Note*: Running the simulation directly would generate the simulation output into the workspace. Alternatively, you can look into '**Script_Data.m**' and uncomment the code chunk where you can use `sim('Biped_Model.slx')` to save the simulation output into a single structure.



*Below is shown the animation of the simulation with my exemplary data* 
https://user-images.githubusercontent.com/40179311/154436775-4b139ce4-90de-4787-b2ef-77feedeb5220.mp4

