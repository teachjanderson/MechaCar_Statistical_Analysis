# Use the library() function to load the dplyr package.
library(dplyr)

# Import and read CSV of car data
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Check class of imported Data as DataFrame
class(MechaCar)

#Create linear regression of all DataFrame variables
MechaLin <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar) 

# Create a summary to determine p-value and r-squared for linear model
MechaSum <- summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar))

# Suspension Coil Analysis

# Import and read CSV of suspension coil data

# Import and read CSV of car data
SuspensionCoil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Create a total summary data frame using summarize function of suspension data
Suspension_Total <- SuspensionCoil %>% summarize(Mean_Suspension=mean(PSI), Median_Supsension=median(PSI), Variance_Supsension=var(PSI), SD_Supsension=sd(PSI), SusCoils=n(), .groups = 'keep')

# Create a summary DataFrame grouping by lot using group_by and summarize for each lot
Manufacture_Total <- SuspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_Suspension=mean(PSI), Median_Supsension=median(PSI), Variance_Supsension=var(PSI), SD_Supsension=sd(PSI), SusCoils=n(), .groups = 'keep')
