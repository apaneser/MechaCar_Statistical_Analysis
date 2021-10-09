# MechaCar Statistical Analysis

## Overview

### Purpose
AutoRUs' new prototype, the MechaCar are suffering from production troubles and are blocking the manufacturing team's progess. The upper management has called the data analytics team to review the production data for insights that may help the manufacturing team.
 
## Linear Regression to Predict
![MechaCar mpg lm](/Resources/MechaCar_lm_summary.PNG)
* The Vehicle length, weight, ground clearance, and intercept  provided a non-random amount of variance to mpg which means they have a significant affect on the mpg.
* The P value of 5.35 x 10^-11 is much smaller than the assumed significance level of 0.05%, so there is sufficient evidence to reject our null hypothesis, so the slope of our linear model is not 0.
* From our linear regression model, our R-squared value is about 0.71, so 71% of the variability of our dependent variable is explained using this linear model. Due  to the missing 29% of data that can affect mpg, this model may not be enough to predict mpg values to a very accurate degree.

## Summary Statistics on Suspension

Total Summary  
![Suspension Coil Total Summary](/Resources/Suspension_Coil_Tot_Summary.PNG)

Lot Summary  
![Suspension Coil Lot Summary](/Resources/Suspension_Coil_Lot_Summary.PNG)

* design specifications for MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. While the current data meets the design specification for all lots in total, they do not meet for each lot individually due to lot 3 having a variance of 170.

## T-Tests on Suspension Coils
T-Test Total  
![T-Test Total](/Resources/t_test_total.PNG)

T-Test Lot1  
![T-Test Lot1](/Resources/t_test_lot1.PNG)

T-Test Lot2  
![T-Test Lot2](/Resources/t_test_lot2.PNG)

T-Test Lot3  
![T-Test Lot3](/Resources/t_test_lot3.PNG)