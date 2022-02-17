# BipedalWalking_Simulink_ModelnData

### Contains a model of bipedal walking on Treadmill in Sagittal plane and a script used to generate the data needed to actuate the model

Run '**Script_Data.m**' to generate the joint angle trajectories and other kinematic or temporal variables and parameters into the workspace

*Note*: Read the description in '**Script_Data.m**' for importing and using your time and joint angle trajectories data in an appropriate format


Then open and run '**Biped_Model.slx**' for both seeing the resulting animation of simulation and obtaining the outputs.

*Note*: Running the simulation directly would generate the simulation output into the workspace. Alternatively, you can look into '**Script_Data.m**' and uncomment the code chunk where you can use `sim('Biped_Model.slx')` to save the simulation output into a single structure.
