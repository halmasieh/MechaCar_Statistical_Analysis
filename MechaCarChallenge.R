# Deliverable 1
library(dplyr)
MechaCar_mpg <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) #import MechaCar_mpg dataset
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg)) #generate summary statistics

# Deliverable 2
Suspension_Coil <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F) #import Suspension_Coil dataset

