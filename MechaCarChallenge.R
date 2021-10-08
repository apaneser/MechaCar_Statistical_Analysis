# import libraries
library(dplyr)

# Linear model for the MechaCar mpg data
MechaCar <- read.csv('MechaCar_mpg.csv')
Car_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar)
summary(Car_lm)

# a summary for the Suspension coil PSI data
Sus_Coil <- read.csv('Suspension_Coil.csv')
# summary of all lots together
Sus_Tot_Sum <- Sus_Coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups='keep')
# Summary for the individual lots
Sus_Lot_Sum <- Sus_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups='keep')
