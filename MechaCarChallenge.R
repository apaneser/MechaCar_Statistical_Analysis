library(dplyr)

MechaCar <- read.csv('MechaCar_mpg.csv')
Car_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar)
summary(Car_lm)

Sus_Coil <- read.csv('Suspension_Coil.csv')
Sus_Sum <- Sus_Coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups='keep')
Sus_Sum <- Sus_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups='keep')
