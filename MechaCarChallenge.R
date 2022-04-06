# CHALLENGE 15
# DELIVERABLE 1
library(dplyr)
library(tidyverse)

#import Data
MechaCar <- read.csv("MechaCar_mpg.csv")
head(MechaCar)
# Multiple Linear Regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle +
     ground_clearance + AWD, data=MechaCar))


# DELIVERABLE 2

Springs = read.csv("Suspension_Coil.csv")
total_summary <- Springs %>% summarize( Mean = mean(PSI),
                                        Median = median(PSI),
                                        Variance = var(PSI),
                                        SD = sd(PSI))

lot_summary <- Springs %>% 
  group_by(Manufacturing_Lot) %>% 
  summarize( Mean = mean(PSI),
             Median = median(PSI),
             Variance = var(PSI),
             SD = sd(PSI))

# DELIVERABLE 3
# Overall Difference from standard of 1500 PSI: 1-sample t-test
t.test(Springs$PSI, mu=1500)

# 1-sample t-test for each lot
# Lot 1
lot1 <- subset(Springs, Manufacturing_Lot=='Lot1')
t.test(lot1$PSI, mu=1500)

# Lot 2
lot2 <- subset(Springs, Manufacturing_Lot=='Lot2')
t.test(lot2$PSI, mu=1500)

# Lot 3
lot3 <- subset(Springs, Manufacturing_Lot=='Lot3')
t.test(lot3$PSI, mu=1500)

