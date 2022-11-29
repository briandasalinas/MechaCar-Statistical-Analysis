library(dplyr)
library(tidyverse)
mechaCar <- read.csv("MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

lm(mpg ~ vehicle_length, data =mechaCar)
lm(mpg ~ vehicle_weight, data =mechaCar)
lm(mpg ~ spoiler_angle, data =mechaCar)
lm(mpg ~ ground_clearance, data =mechaCar)
lm(mpg ~ AWD, data =mechaCar)

model <- lm(mpg ~ AWD data =mechaCar)
yvals <- model$coefficients['AWD']*mechaCar$AWD + model$coefficients['(Intercept']
plt <- ggplot(mechaCar, aes(x=ground_clearance, y=mpg))
plt+geom_point()+geom_line(aes(y=yvals),color='red')

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data =mechaCar))

suspCoil <- read.csv("Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

total_summary <- suspCoil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance= var(PSI), SD=sd(PSI))

lot_summary <- suspCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance= var(PSI), SD=sd(PSI), .groups = 'keep')


lot1 <- suspCoil %>% filter(Manufacturing_Lot=="Lot1")
lot2 <- suspCoil %>% filter(Manufacturing_Lot=="Lot2")
lot3 <- suspCoil %>% filter(Manufacturing_Lot=="Lot3")

t.test(lot1$PSI, mu=1500)
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)
