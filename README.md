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

<p align="center"><img src="https://github.com/teachjanderson/MechaCar_Statistical_Analysis/blob/main/Images/Rplot%20copy.png" width="600" />

As seen in the data above, the variance of the coils is 62.29 PSI, which is under the 100 PSI limits in the design certifications. The standard deviation is 7.89 which still places the overall variance well under the 100 PSI limit. 

<p align="center"><img src="https://github.com/teachjanderson/MechaCar_Statistical_Analysis/blob/main/Images/plot_zoom_png.png" width="600" />

In testing the lots individually, the data above shows their separate outputs. Lot 1 and Lot 2 display coil variance under the 100 PSI threshold. Lot 3 displays a variance of 170, putting it considerably over the required PSI levels. Similarly, Lot 3 has a standard deviation of 13.04 compared to a much lower standard deviation for the other two lots. The graph below shows the variance of the three lots in comparison.

<p align="center"><img src="https://github.com/teachjanderson/MechaCar_Statistical_Analysis/blob/main/Images/MLotsBox.png" width="600" />

# T-Tests on Suspension Coils #

T-tests were conducted to determine if all manufacturing lots and each lot individually were statistically different from the population mean of 1,500 pounds per square inch.

<p align="center"><img src="https://github.com/teachjanderson/MechaCar_Statistical_Analysis/blob/main/Images/SuspensionCoilsTTest.png" width="600" />


In the single suspension coil t-test, the sample mean is 1498.78. The p-value is 0.06, higher than the significance level of 0.05. Therefore, there is not enough evidence to reject the null hypothesis. This means the lots are statistically similar to the population mean of 1,500 pounds per square inch. 