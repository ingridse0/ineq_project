# P1 #######################################################


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



# Share female
share_female.p1 <- sum(subset(silc.p1.15,
                            gender == "Female" & silc.p1.15$arp == 1)$rb050) /
        sum(subset(silc.p1.15, gender == "Female")$rb050)

# Share male
share_male.p1 <- sum(subset(silc.p1.15,
                            gender == "Male" & silc.p1.15$arp == 1)$rb050) /
      sum(subset(silc.p1.15, gender == "Male")$rb050)


# Share female under 18
share_female_under18.p1 <- sum(subset(silc.p1.15,
                         gender == "Female" & silc.p1.15$arp == 1 & age < 18)$rb050) /
  sum(subset(silc.p1.15, gender == "Female" & age <= 18)$rb050)

# Share male under 18
share_male_under18.p1 <- sum(subset(silc.p1.15,
                                 gender == "Male" & silc.p1.15$arp == 1 & age < 18)$rb050) /
  sum(subset(silc.p1.15, gender == "Male" & age <= 18)$rb050)

# Share female 19-24
share_female_1924.p1 <- sum(subset(silc.p1.15,
                                   gender == "Female" & silc.p1.15$arp == 1
                                   & age >= 18 & age <= 24)$rb050) /
  sum(subset(silc.p1.15, gender == "Female" & age >= 18 & age <=24)$rb050)

# Share male 19-24
share_male_1924.p1 <- sum(subset(silc.p1.15,
                                 gender == "Male" & silc.p1.15$arp == 1
                                 & age >= 18 & age <= 24)$rb050) /
  sum(subset(silc.p1.15, gender == "Male" & age >= 18 & age <=24)$rb050)

# Share female  25-49
share_female_2549.p1 <- sum(subset(silc.p1.15,
                                gender == "Female" & silc.p1.15$arp == 1
                                & age >= 25 & age <= 49)$rb050) /
  sum(subset(silc.p1.15, gender == "Female" & age >= 25 & age <=49)$rb050)

# Share male 25-49
share_male_2549.p1 <- sum(subset(silc.p1.15,
                              gender == "Male" & silc.p1.15$arp == 1
                              & age >= 25 & age <= 49)$rb050) /
  sum(subset(silc.p1.15, gender == "Male" & age >= 25 & age <=49)$rb050)

# Share female  50-64
share_female_5064.p1 <- sum(subset(silc.p1.15,
                                gender == "Female" & silc.p1.15$arp == 1
                                & age >= 50 & age <= 64)$rb050) /
  sum(subset(silc.p1.15, gender == "Female" & age >= 50 & age <=64)$rb050)

# Share male 50-64
share_male_5064.p1 <- sum(subset(silc.p1.15,
                              gender == "Male" & silc.p1.15$arp == 1
                              & age >= 50 & age <= 64)$rb050) /
  sum(subset(silc.p1.15, gender == "Male" & age >= 50 & age <=64)$rb050)

# Share female over 64
share_female_over64.p1 <- sum(subset(silc.p1.15,
                                gender == "Female" & silc.p1.15$arp == 1
                                & age > 64)$rb050) /
  sum(subset(silc.p1.15, gender == "Female" & age > 64)$rb050)

# Share male over 64
share_male_over64.p1 <- sum(subset(silc.p1.15,
                              gender == "Male" & silc.p1.15$arp == 1
                              & age > 64)$rb050) /
  sum(subset(silc.p1.15, gender == "Male" & age > 64)$rb050)

# P2 #######################################################


# Create new dataset
silc.p2.15 <- subset(silc.p2, pb010 == 2015)

# Sum up the weights
weightsum.p2 <- sum(silc.p2.15$rb050)

# Save arp threshold
threshold.p2 <- arpr(inc = silc.p2.15$i23,
                     weights = silc.p2.15$rb050)[["threshold"]]

# Save arp value
p2.15.arpr <- arpr(inc = silc.p2.15$i23, weights = silc.p2.15$rb050)[["value"]]

# Create Dummy for arp
silc.p2.15$arp <- ifelse(silc.p2.15$i23 < threshold.p2, 1, 0)



# Share female
share_female.p2 <- sum(subset(silc.p2.15,
                           gender == "Female" & silc.p2.15$arp == 1)$rb050) /
  sum(subset(silc.p2.15, gender == "Female")$rb050)

# Share male
share_male.p2 <- sum(subset(silc.p2.15,
                         gender == "Male" & silc.p2.15$arp == 1)$rb050) /
  sum(subset(silc.p2.15, gender == "Male")$rb050)


# Share female under 18
share_female_under18.p2 <- sum(subset(silc.p2.15,
                                   gender == "Female" & silc.p2.15$arp == 1 & age < 18)$rb050) /
  sum(subset(silc.p2.15, gender == "Female" & age <= 18)$rb050)

# Share male under 18
share_male_under18.p2 <- sum(subset(silc.p2.15,
                                 gender == "Male" & silc.p2.15$arp == 1 & age < 18)$rb050) /
  sum(subset(silc.p2.15, gender == "Male" & age <= 18)$rb050)

# Share female 19-24
share_female_1924.p2 <- sum(subset(silc.p2.15,
                                gender == "Female" & silc.p2.15$arp == 1
                                & age >= 18 & age <= 24)$rb050) /
  sum(subset(silc.p2.15, gender == "Female" & age >= 18 & age <=24)$rb050)

# Share male 19-24
share_male_1924.p2 <- sum(subset(silc.p2.15,
                              gender == "Male" & silc.p2.15$arp == 1
                              & age >= 18 & age <= 24)$rb050) /
  sum(subset(silc.p2.15, gender == "Male" & age >= 18 & age <=24)$rb050)

# Share female  25-49
share_female_2549.p2 <- sum(subset(silc.p2.15,
                                gender == "Female" & silc.p2.15$arp == 1
                                & age >= 25 & age <= 49)$rb050) /
  sum(subset(silc.p2.15, gender == "Female" & age >= 25 & age <=49)$rb050)

# Share male 25-49
share_male_2549.p2 <- sum(subset(silc.p2.15,
                              gender == "Male" & silc.p2.15$arp == 1
                              & age >= 25 & age <= 49)$rb050) /
  sum(subset(silc.p2.15, gender == "Male" & age >= 25 & age <=49)$rb050)

# Share female  50-64
share_female_5064.p2 <- sum(subset(silc.p2.15,
                                gender == "Female" & silc.p2.15$arp == 1
                                & age >= 50 & age <= 64)$rb050) /
  sum(subset(silc.p2.15, gender == "Female" & age >= 50 & age <=64)$rb050)

# Share male 50-64
share_male_5064.p2 <- sum(subset(silc.p2.15,
                              gender == "Male" & silc.p2.15$arp == 1
                              & age >= 50 & age <= 64)$rb050) /
  sum(subset(silc.p2.15, gender == "Male" & age >= 50 & age <=64)$rb050)

# Share female over 64
share_female_over64.p2 <- sum(subset(silc.p2.15,
                                  gender == "Female" & silc.p2.15$arp == 1
                                  & age > 64)$rb050) /
  sum(subset(silc.p2.15, gender == "Female" & age > 64)$rb050)

# Share male over 64
share_male_over64.p2 <- sum(subset(silc.p2.15,
                                gender == "Male" & silc.p2.15$arp == 1
                                & age > 64)$rb050) /
  sum(subset(silc.p2.15, gender == "Male" & age > 64)$rb050)
