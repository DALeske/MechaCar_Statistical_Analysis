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
