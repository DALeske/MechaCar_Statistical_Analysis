# MODULE 15 CHALLENGE: MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG (Deliverable 1)
R-Output
![Deliverable 1 Output](/Resources/Deliverable1.png)

1- Variables / coefficients providing non-random amounts of variability to MPG: 
    - vehicle_length
    - ground clearance
    - the intercept is significant, but does not actually contribute to the variability

2- Is the slope non-zero? why or why not? 
    Yes, the slope is non-zero. The p-value for the overall model is 5.35e-11, which is much smaller than 0.05

3- Does the linear model predict mpg of MechaCar prototypes effectively? Why or why not?
    Yes, the model effectively predicts the MPG of the MechaCar prototype. With an r-square of 0.7149, the model accounts for 71% of the variability, which indicative of a fairly robust model.

## Summary Statistics on Suspension Coils: Deliverable 2
1- Does the current manufacturing data meet the design specs overall and for each lot? Why or why not?
No, the specs of a variance less than 100 PSI is not met. Overall, the variance is less than 100 PSI, 
![Total_Summary](/Resources/D2-Total_summary.png)
but when looking at individual lots, lot 3 has a variance of 170 PSI.
![Lot_summary](/Resources/D2-Lot_summary.png)