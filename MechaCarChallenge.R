# Linear Regression to Predict MPG
library(dplyr)
MechaCar_mpg <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) # Import MechaCar_mpg dataset
Lin_Model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg) # Generate multiple linear regression model
summary(Lin_Model) # Generate summary statistics of Linear Model


# Create Visualizations for the Trip Analysis
Suspension_Coil <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F) # Import Suspension_Coil dataset
total_summary <- summarize(Suspension_Coil, Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI)) # Create summary table using PSI column

# Create lot_summary table using group_by and summarize
sus_groupby <- group_by(Suspension_Coil, Manufacturing_Lot)  
lot_summary <- summarize(sus_groupby, Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI))
lot_summary

# T-Tests on Suspension Coils
t.test(Suspension_Coil$PSI, mu=1500)

# Check PSI for manufacturing-lot1 using subset()
population1 = subset(Suspension_Coil, Manufacturing_Lot =='Lot1')
t.test(population1$PSI, mu=1500)

# Check PSI for manufacturing-lot2 using subset()
population2 = subset(Suspension_Coil, Manufacturing_Lot =='Lot2')
t.test(population2$PSI, mu=1500)

# Check PSI for manufacturing-lot3 using subset()
population3 = subset(Suspension_Coil, Manufacturing_Lot =='Lot3')
t.test(population3$PSI, mu=1500)


