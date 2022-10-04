library(dplyr)
library(jsonlite)
library(tidyverse)

#D1
MechaMPG <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(MechaMPG)

MechaMPG_matrix <- as.matrix(MechaMPG)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaMPG)
MechaMPG_sum <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaMPG)

summary(MechaMPG)
summary(MechaMPG_matrix)
summary(MechaMPG_sum)


#D2
MechaCoil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- summarise(MechaCoil, Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

lots <- group_by(MechaCoil, Manufacturing_Lot)
lot_summary <- summarize(lots, Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))


#D3
t.test(MechaCoil$PSI, mu=1500)

?subset

lot1 <- subset(MechaCoil, Manufacturing_Lot=='Lot1')
t.test(lot1$PSI, mu=1500)

lot2 <- subset(MechaCoil, Manufacturing_Lot=='Lot2')
t.test(lot2$PSI, mu=1500)

lot3 <- subset(MechaCoil, Manufacturing_Lot=='Lot3')
t.test(lot3$PSI, mu=1500)

