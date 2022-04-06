# MODULE 15 CHALLENGE: MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG: Deliverable 1

![Deliverable 1 Output](/Resources/Deliverable1.png)

<b>1- Which variables / coefficients provided a non-random amount of variability to MPG?</b>

- vehicle_length
- ground clearance
- the intercept is significant, but does not actually contribute to the variability

<b>2- Is the slope non-zero? Why or why not?</b> 

Yes, the slope is non-zero. The p-value for the overall model is 5.35e-11, which is much smaller than 0.05

<b>3- Does the linear model predict mpg of MechaCar prototypes effectively? Why or why not?</b>
    
Yes, the model effectively predicts the MPG of the MechaCar prototype. With an r-square of 0.7149, the model accounts for 71% of the variability, which indicative of a fairly robust model.


## Summary Statistics on Suspension Coils: Deliverable 2
<b>1- Does the current manufacturing data meet the design specs overall and for each lot? Why or why not?</b>

No, the specs of a variance less than 100 PSI is not met. Overall, the variance is less than 100 PSI, 

![Total_Summary](/Resources/D2-Total_summary.png)

but when looking at individual lots, lot 3 has a variance of 170 PSI.

![Lot_summary](/Resources/D2-Lot_summary.png)

## T-Tests on Suspension Coils: Deliverable 3

<b>Is the PSI across all manufacturing lots statistically different from the standard of 1500 PSI?</b>

Based on the data, there is no evidence that the mean PSI is statistically difference from the standard of 1500 PSI when looking across all manufacturing lots.

![Overall PSI Comparison](/Resources/D3overall.png)


<b>Is the PSI within each manufacturing lot statistically different from the standard of 1500 PSI?</b>

There is no evidence of a statistical difference from the industry standard of 1500 PSI in lots 1 and 2, however, it appears that that mean PSI in lot 3 is statistically lower than the industry standard.

LOT 1

![lot 1](/Resources/D3Lot1.png)

LOT 2

![Lot 2](/Resources/D3Lot2.png)

LOT 3

![Lot 3](/Resources/D3Lot3.png)


## Study Design: MechaCar vs Competition : Deliverable 4

### Introduction
In the north country, all-wheel drive (AWD) cars are not just a luxury, they are at times a necessity. Deep winter snows on the back roads make travel difficult to impossible at times. It's at times like that when AWD is king. But AWD doesn't help much if there isn't ground clearance, after all, many of Porsche's supercars have AWD but wouldn't stand a chance in a blizzard. The ability of an AWD car to go through snow is a function of ground clearance and weight. The heavier the vehicle and higher the ground clearance, the more snow it can go through. Of course, who wants an underpowered car? Therefore, the power to weight ratio must be considered when evaluating vehicles. Fuel consumption must also be considered. Not everyone wants to drive a vehicle where fuel consumption is measured in gallons per mile.

This study will compare MechaCar vs the Competition to determine which company produces AWD cars with the most favorable attributes that shoppers in the north country look for.

### Methods
AWD models from both MechaCar and the competition will be included in the study. The following metrics will be assessed and compared:
- Ground clearance
- Weight (lbs)
- Power (hp)
- Fuel consumption (MPG)
- Power: weight ratio (hp/lbs)

### Statistical Analysis
Tests for normality will be conducted on each of 5 metrics listed above using the Shapiro-Wilks test. P values <0.05 will be considered non-normal. For data meeting assumptions of normality, two-sided, 2-sample t-tests will be performed (NOTE: two sided tests are being used because I would be interested in either a superior or non-superior value). Non-normal data will be compared using two-sided Wilcoxon rank sum tests. Alpha for each comparison will be 0.05. 

For ground clearance, the hypothesis is that MechaCar has more ground clearance than the competition. The null hypothesis is that ground clearance is the same. 

For Weight, the hypothesis is that MechaCar is heavier than the competition. The null hypothesis is that weight is the same. 

For Power, the hypothesis is that MechaCar has more power than the competition. The null hypothesis is that power is the same. 

For Fuel consumption, the hypothesis is that MechaCar has better fuel economy than the competition. The null hypothesis is that fuel economy is the same. 

For power:weight ratio, the hypothesis is that MechaCar has a higher power:weight ratio than the competition. The null hypothesis is that power:weight ratio is the same. 

### Outcomes
Each of the comparisons will be interpreted essentially the same. If the p-value is 0.05 or greater, we will fail to reject the null hypothesis and conclude that there is no evidence to suggest that the metric for MechaCar is different from the metric for the Competition. A p-value <0.05 will result in rejecting the null hypothesis and concluding that there is a difference in the mean metric between MechaCar and the competition. Since a 2-sided test is being conducted, the direction of the difference must be interpreted. 
