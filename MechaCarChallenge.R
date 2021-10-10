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

t.test(Sus_Coil$PSI, mu=mean(Sus_Coil$PSI))

lot1 <- subset(Sus_Coil, Manufacturing_Lot == 'Lot1')
t.test(lot1$PSI, mu=mean(Sus_Coil$PSI))

lot2 <- subset(Sus_Coil, Manufacturing_Lot =='Lot2')
t.test(lot2$PSI, mu=mean(Sus_Coil$PSI))

lot3 <- subset(Sus_Coil, Manufacturing_Lot == 'Lot3')
t.test(lot3$PSI, mu=mean(Sus_Coil$PSI))
