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