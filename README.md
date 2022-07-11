# MechaCar Statistical Analysis

# Overview and Purpose #

AutoRU's newest prototype, the MechaCar, recently encountered troubles in production. To isolate the problems, various items are tested below to assist the manufacturing team. 

# Linear Regression to Predict MGP #

Linear regression models are used to test vehicle length, weight, spoiler angle, ground clearance, and all wheel drive capability (awd) to determine the impact on miles per gallon (mpg). Two of these variables, length and ground clearance, demonstrate non-random variance in the dataset. The image below shows the summary statistics for each variable. 

<p align="center"><img src="https://github.com/teachjanderson/MechaCar_Statistical_Analysis/blob/main/Images/D1Variables.png" width="600" />

Vehicle length and ground clearance display non-random amounts of variance in the modeling. This means they likely make an impact on the prototype's mile per gallon ratio. The other variables display a random amount of variance which is not as likely to be a contributing factor. The slope of the vehicle length and ground clearance are displayed in the graphs below. 

<p align="center"><img src="https://github.com/teachjanderson/MechaCar_Statistical_Analysis/blob/main/Images/Vehicle_Length.png" width="600" />

<p align="center"><img src="https://github.com/teachjanderson/MechaCar_Statistical_Analysis/blob/main/Images/Ground_Clearance.png" width="600" />

The slope of this linear model is not zero, as the p-value of 5.35x10-11 (shown in the image below) is below the significance level of 0.05%. This provides evidence to reject the null hypothesis and suggests there may be other factors impacting the mpg which are not included in the dataset.

<p align="center"><img src="https://github.com/teachjanderson/MechaCar_Statistical_Analysis/blob/main/Images/Values.jpg" width="600" />

The linear model has an r-squared value of 0.7149 as seen in the image above. This accounts for a model of 71% accuracy in predicting the mpg and accounting for various factors. This should provide the manufacturing team with confidence in isolating modifications to the prototype and narrowing in on factors which create the maximum mpg goals.  

# Summary Statistics on Suspension Coils #

In analyzing the suspension coils, data from multiple production lots was included. The weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 

Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

<p align="center"><img src="https://github.com/teachjanderson/MechaCar_Statistical_Analysis/blob/main/Images/Rplot%20copy.png" width="600" />

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?