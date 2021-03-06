# This script creates the poverty data
# Zerlegung At risk of poverty rate -------------------------------------------
# P1 --------------------------------------------------------------------------

# Gender

# Create new dataset
silc.p1.15 <- subset(silc.p1, pb010 == 2015)

# Sum up the weights
weightsum.p1 <- sum(silc.p1.15$rb050)

# Save arp threshold
threshold.p1 <- arpr(inc = silc.p1.15$i13,
                     weights = silc.p1.15$rb050)[["threshold"]]

# Save arp value
p1.15.arpr <- arpr(inc = silc.p1.15$i13, weights = silc.p1.15$rb050)[["value"]]

# Create Dummy for arp
silc.p1.15$arp <- ifelse(silc.p1.15$i13 < threshold.p1, 1, 0)

# Multiply dummy with weight
silc.p1.15$wxarp.p1 <- silc.p1.15$arp * silc.p1.15$rb050

# Sum up weights
sum_wxarp.p1 <- sum(silc.p1.15$wxarp.p1)

# Create gender Table
gender_tab_p1 <- data.frame(
  sum(subset(silc.p1.15, gender == "Female")$wxarp.p1) / sum_wxarp.p1,
  sum(subset(silc.p1.15, gender == "Male")$wxarp.p1) / sum_wxarp.p1
)

names(gender_tab_p1) <- c("Weiblich", "Männlich")
rownames(gender_tab_p1) <- "i13"

# Create age Table
age_tab_p1 <- data.frame(
  sum(subset(silc.p1.15, age < 30)$wxarp.p1) / sum_wxarp.p1,
  sum(subset(silc.p1.15, age >= 30)$wxarp.p1) / sum_wxarp.p1
)

names(age_tab_p1) <- c("Unter 30", "Älter")
rownames(age_tab_p1) <- "i13"



# P2---------------------------------------------------------------------------


# Gender

# Create new dataset
silc.p2.15 <- subset(silc.p2, pb010 == 2015)

# Sum up the weights
weightsum.p2 <- sum(silc.p2.15$rb050)

# Save arp threshold
threshold.p2 <- arpr(inc = silc.p2.15$i23,
                     weights = silc.p2.15$rb050)[["threshold"]]

# Save arp value
p2.15.arpr <- arpr(inc = silc.p2.15$i23,
                   weights = silc.p2.15$rb050)[["value"]]

# Create Dummy for arp
silc.p2.15$arp <- ifelse(silc.p2.15$i23 < threshold.p2, 1, 0)

# Multiply dummy with weight
silc.p2.15$wxarp.p2 <- silc.p2.15$arp * silc.p2.15$rb050

# Sum up weights
sum_wxarp.p2 <- sum(silc.p2.15$wxarp.p2)

# Create gender Table
gender_tab_p2 <- data.frame(
  sum(subset(silc.p2.15, gender == "Female")$wxarp.p2) / sum_wxarp.p2,
  sum(subset(silc.p2.15, gender == "Male")$wxarp.p2) / sum_wxarp.p2
)
names(gender_tab_p2) <- c("Weiblich", "Männlich")
rownames(gender_tab_p2) <- "i23"

# Create age Table
age_tab_p2 <- data.frame(
  sum(subset(silc.p2.15, age < 30)$wxarp.p2) / sum_wxarp.p2,
  sum(subset(silc.p2.15, age >= 30)$wxarp.p2) / sum_wxarp.p2
)

names(age_tab_p2) <- c("Unter 30", "Älter")
rownames(age_tab_p2) <- "i23"



# Combine Tables---------------------------------------------------------------

# Gender
gender_tab <- rbind(gender_tab_p1, gender_tab_p2)

write.csv(gender_tab, file="reports/DNK/tables/gender_tab.csv")


# Age
age_tab <- rbind(age_tab_p1, age_tab_p2)

write.csv(age_tab, file="reports/DNK/tables/age_tab.csv")


# Severely materially deprived people ------------------------------------------

#Severe material deprivation rate - pay for at least 4 -------------------------
#hs011 pay their rent, mortgage or utility bills;
#hh050 keep their home adequately warm;
#hs060 unexpected expenses;
#hs050 eat meat or proteins regularly
#hs040 holiday
#hs080 television set
#hs100 washing machine
#hs110 car
#hs070 telephone




#Persistent material deprivation rate -----------------------------------------
#pay for at 3 three (material deprivation) 
#or 4 (severe material deprivation) in 2015
#and at least 2 out of the preceding three years


