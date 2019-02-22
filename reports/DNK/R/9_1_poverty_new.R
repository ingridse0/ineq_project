# This script creates tables with poverty data and a barplot


library(reshape2) # needed for melt function

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

# Plot

Altersgruppe <- c("Gesamt", "Gesamt",
                "Unter 18", "Unter 18",
                "18-24", "18-24",
                "25-49", "25-49",
                "50-64", "50-64",
                "Über 64", "Über 64")

Geschlecht <- c("Männlich", "Weiblich",
                "Männlich", "Weiblich",
                "Männlich", "Weiblich",
                "Männlich", "Weiblich",
                "Männlich", "Weiblich",
                "Männlich", "Weiblich"
)


Armutsgefaehrdungsquote = c(share_male.p1, share_female.p1,
                           share_male_under18.p1, share_female_under18.p1,
                           share_male_1924.p1, share_female_1924.p1,
                           share_male_2549.p1, share_female_2549.p1,
                           share_male_5064.p1, share_female_5064.p1,
                           share_male_over64.p1, share_female_over64.p1)
Armutsgefaehrdungsquote = round(Armutsgefaehrdungsquote * 100, digits = 1)

id = c(1:12)

new_pov_frame = data.frame(id, Armutsgefaehrdungsquote, Geschlecht, Altersgruppe)

arpr_sex_age <- new_pov_frame[2:4]
save(arpr_sex_age, file = "reports/DNK/tables/arpr_sex_age.Rda")


new_pov_frame_m = melt(new_pov_frame, id.vars = c("id", "Geschlecht", "Altersgruppe"))

ggplot(new_pov_frame) +
  geom_bar(
    aes(x=reorder(Altersgruppe, id),
        y=Armutsgefaehrdungsquote, fill = Geschlecht), position = "dodge", stat = "identity") +
  labs(title="Armutsgefährdnungsquote Dänemark (2015), Quelle: Eigene Berechnung", x=("Altersgruppe"), y = ("Armutsgefährdungsquote")) + scale_fill_discrete(labels=c("Männlich", "Weiblich")) + scale_x_discrete(c("Gesamt", "Unter 18", "18-24", "25-49", "50-64", "Über 64"))


ggsave("reports/DNK/img/arpr_barplot.png")



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

##### Eurostat

mtot <- 12.5
m18 <- 10.1
m1824 <- 36.3
m2549 <- 13.5
m5064 <- 6.3
m65 <- 8.0

ftot <- 11.9
f18 <- 10.6
f1824 <- 38.7
f2549 <- 11.2
f5064 <- 4.4
f65 <- 10

arpr_sex_age_es <- c(mtot, ftot, m18, f18, m1824, f1824, m2549, f2549, m5064,
                     f5064, m65, f65)

arpr_tab_appendix <- data.frame(Armutsgefaehrdungsquote,
                                arpr_sex_age_es, Geschlecht,
                                Altersgruppe)

names(arpr_tab_appendix)[1:2] <- c("Eigene Berechnung",
                                   "Eurostat")

save(arpr_tab_appendix, file = "reports/DNK/tables/arpr_tab_appendix.Rda")
