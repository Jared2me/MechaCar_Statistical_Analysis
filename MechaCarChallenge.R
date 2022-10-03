library(dplyr)
library(jsonlite)
library(tidyverse)

MechaMPG <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(MechaMPG)

MechaMPG_matrix <- as.matrix(MechaMPG)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaMPG)
MechaMPG_sum <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaMPG)
summary(MechaMPG_sum)

summary(MechaMPG)
summary(MechaMPG_matrix)


