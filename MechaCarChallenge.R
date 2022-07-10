# Use the library() function to load the dplyr package.
library(dplyr)
library(ggplot2)

#Deliverable One
# Import and read CSV of car data
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Check class of imported Data as DataFrame
class(MechaCar)

#Create linear regression of all DataFrame variables
MechaLin <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar) 

# Create a summary to determine p-value and r-squared for linear model
MechaSum <- summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar))
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar))

#Create a line plot of variables - Ground Clearance
ground_clearance <- lm(mpg ~ ground_clearance,MechaCar)
yvals <- model$coefficients['mpg']*MechaCar$mpg + model$coefficients['(Intercept)'] 
pltgc <- ggplot(MechaCar,aes(x=mpg,y=ground_clearance))
pltgc + geom_point() + geom_line(aes(y=yvals)) + geom_smooth(method =lm) + xlab("Miles Per Gallon") + ylab("Ground Clearance")

#Create a line plot of variables - Vehicle Length
vehicle_length <- lm(mpg ~ vehicle_length,MechaCar)
yvals <- model$coefficients['mpg']*MechaCar$mpg + model$coefficients['(Intercept)'] 
pltvl <- ggplot(MechaCar,aes(x=mpg,y=vehicle_length))
pltvl + geom_point() + geom_line(aes(y=yvals)) + geom_smooth(method =lm) + xlab("Miles Per Gallon") + ylab("Vehicle Length")

#Create a line plot of variables - Spoiler Angle
spoiler_angle <- lm(mpg ~ spoiler_angle,MechaCar)
yvals <- model$coefficients['mpg']*MechaCar$mpg + model$coefficients['(Intercept)'] 
pltsa <- ggplot(MechaCar,aes(x=mpg,y=spoiler_angle))
pltsa + geom_point() + geom_line(aes(y=yvals)) + geom_smooth(method =lm) + xlab("Miles Per Gallon") + ylab("Spoiler Angle")

#Create a line plot of variables - Vehicle Weight
vehicle_weight <- lm(mpg ~ vehicle_weight,MechaCar)
yvals <- model$coefficients['mpg']*MechaCar$mpg + model$coefficients['(Intercept)'] 
pltvw <- ggplot(MechaCar,aes(x=mpg,y=vehicle_weight))
pltvw + geom_point() + geom_line(aes(y=yvals)) + geom_smooth(method =lm) + xlab("Miles Per Gallon") + ylab("Vehicle Weight")

#Deliverable Two
# Suspension Coil Analysis

# Import and read CSV of suspension coil data

# Import and read CSV of car data
SuspensionCoil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Create a total summary data frame using summarize function of suspension data
Suspension_Total <- SuspensionCoil %>% summarize(Mean_Suspension=mean(PSI), Median_Suspension=median(PSI), Variance_Suspension=var(PSI), SD_Suspension=sd(PSI), SusCoils=n(), .groups = 'keep')

# Create a summary DataFrame grouping by lot using group_by and summarize for each lot
Manufacture_Total <- SuspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_Suspension=mean(PSI), Median_Suspension=median(PSI), Variance_Suspension=var(PSI), SD_Suspension=sd(PSI), SusCoils=n(), .groups = 'keep')

#Create a boxplot of the suspension totals
Suspension_plt <- ggplot(SuspensionCoil,aes(y=PSI)) 
Suspension_plt + geom_boxplot() 

#Create a boxplot of individual lots
Lot_plt <- ggplot(SuspensionCoil,aes(Manufacturing_Lot,y=PSI))
Lot_plt + geom_boxplot()

#Deliverable Three
# T.Test to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch. 
t.test(SuspensionCoil$PSI,mu=1500)

# Separate T.Tests to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
MFLot1 <- t.test(subset(SuspensionCoil, Manufacturing_Lot=="Lot1")$PSI,mu=1500)
MFLot2 <- t.test(subset(SuspensionCoil, Manufacturing_Lot=="Lot2")$PSI,mu=1500)
MFLot3 <- t.test(subset(SuspensionCoil, Manufacturing_Lot=="Lot3")$PSI,mu=1500)
