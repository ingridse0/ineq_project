# -----------------------------------------------------------------------------
#
# INDICATORS
# Group DNK
# 2004 - 2017
#
# -----------------------------------------------------------------------------

# P1 --------------------------------------------------------------------------

# create survey design p1
silc.p1.svy <- svydesign(ids =  ~ id_h,
                         strata = ~rb020,
                         weights = ~rb050,
                         data = silc.p1) %>% convey_prep()


# i11 - (1) Pre-tax factor income (Canberra: primary income) ------------------

# Mean

i11_mean <- data.frame(svyby(~i11, ~pb010, silc.p1.svy, svymean))

# Median

i11_median <- data.frame(svyby(~i11, by=~pb010, silc.p1.svy, 
                               svyquantile, quantiles=0.5, keep.var = FALSE))

# Gini

i11_gini <- data.frame(svyby(~i11, ~pb010, silc.p1.svy, svygini))

# 80/20 quantile share ration

i11_8020 <- data.frame(svyby(~i11, ~pb010, silc.p1.svy, svyqsr))


# Top ten percent income share


share <- vector("numeric", length(2004:2017))
j <- 1

for(year in 2004:2017) {
  svy_subset <- subset(silc.p1.svy, pb010 == year)
  svy_top_10 <- subset(svy_subset, i11 >= as.numeric(
    svyquantile(~i11, svy_subset, quantile=c(0.9))))
  share[j] <- svytotal(~i11, svy_top_10) / svytotal(~i11, svy_subset)
  j <- j + 1
}


i11_t10s <- data.frame(t10s = share)


# At risk of poverty rate, requires laeken

i11_arpr <- vector()

for (t in year){
  i11_arpr[t-2003] <- arpr(inc = silc.p1$i11[silc.p1$pb010 == t], weights = silc.p1$rb050[silc.p1$pb010 == t])[[1]]
}

i11_arpr <- data.frame(as.character(year), i11_arpr)

arpr(inc = silc.p1$i11[silc.p1$pb010 == 2010], weights = silc.p1$rb050[silc.p1$pb010 == 2010])[[1]][1]



# i12 (2) Pre-tax national income ---------------------------------------------

# Mean

i12_mean <- data.frame(svyby(~i12, ~pb010, silc.p1.svy, svymean))


# Median

i12_median <- data.frame(svyby(~i12, by=~pb010, silc.p1.svy, 
                               svyquantile, quantiles=0.5, keep.var = FALSE))

# Gini

i12_gini <- data.frame(svyby(~i12, ~pb010, silc.p1.svy, svygini))


# 80/20 quantile share ratio

i12_8020 <- data.frame(svyby(~i12, ~pb010, silc.p1.svy, svyqsr))


# Top ten percent income share


share <- vector("numeric", length(2004:2017))
j <- 1

for(year in 2004:2017) {
  svy_subset <- subset(silc.p1.svy, pb010 == year)
  svy_top_10 <- subset(svy_subset, i12 >= as.numeric(
    svyquantile(~i12, svy_subset, quantile=c(0.9))))
  share[j] <- svytotal(~i12, svy_top_10) / svytotal(~i12, svy_subset)
  j <- j + 1
}

i12_t10s <- data.frame(t10s = share)


# At risk of poverty rate, requires laeken

i12_arpr <- vector()

for (t in year){
  i12_arpr[t-2003] <- arpr(inc = silc.p1$i12[silc.p1$pb010 == t], weights = silc.p1$rb050[silc.p1$pb010 == t])[[1]]
}

i12_arpr <- data.frame(as.character(year), i12_arpr)



# i13 - (3) Post-tax national income ------------------------------------------

# Mean

i13_mean <- data.frame(svyby(~i13, ~pb010, silc.p1.svy, svymean))


# Median

i13_median <- data.frame(svyby(~i13, by=~pb010, silc.p1.svy, 
                               svyquantile, quantiles=0.5, keep.var = FALSE))

# Gini

i13_gini <- data.frame(svyby(~i13, ~pb010, silc.p1.svy, svygini))

# 80/20 quantile share ration

i13_8020 <- data.frame(svyby(~i13, ~pb010, silc.p1.svy, svyqsr))

# Top ten percent income share

share <- vector("numeric", length(2004:2017))
j <- 1

for(year in 2004:2017) {
  svy_subset <- subset(silc.p1.svy, pb010 == year)
  svy_top_10 <- subset(svy_subset, i13 >= as.numeric(
    svyquantile(~i13, svy_subset, quantile=c(0.9))))
  share[j] <- svytotal(~i13, svy_top_10) / svytotal(~i13, svy_subset)
  j <- j + 1
}


i13_t10s <- data.frame(t10s = share)


# At risk of poverty rate, requires laeken

i13_arpr <- vector()

for (t in year){
  i13_arpr[t-2003] <- arpr(inc = silc.p1$i13[silc.p1$pb010 == t], weights = silc.p1$rb050[silc.p1$pb010 == t])[[1]]
}

i13_arpr <- data.frame(as.character(year), i13_arpr)



# P2 --------------------------------------------------------------------------

# create survey design p2
silc.p2.svy <- svydesign(ids =  ~ id_h, 
                         strata = ~rb020,
                         weights = ~rb050,
                         data = silc.p2) %>% convey_prep()

# i21 - (1) Pre-tax factor income (Canberra: primary income) ------------------

# Mean

i21_mean <- data.frame(svyby(~i21, ~pb010, silc.p2.svy, svymean))


# Median

i21_median <- data.frame(svyby(~i21, by=~pb010, silc.p2.svy, 
                               svyquantile, quantiles=0.5, keep.var = FALSE))


# Gini

i21_gini <- data.frame(svyby(~i21, ~pb010, silc.p2.svy, svygini))


# 80/20 quantile share ratio

i21_8020 <- data.frame(svyby(~i21, ~pb010, silc.p2.svy, svyqsr))


# Top ten percent income share


share <- vector("numeric", length(2004:2017))
j <- 1

for(year in 2004:2017) {
  svy_subset <- subset(silc.p2.svy, pb010 == year)
  svy_top_10 <- subset(svy_subset, i21 >= as.numeric(
    svyquantile(~i21, svy_subset, quantile=c(0.9))))
  share[j] <- svytotal(~i21, svy_top_10) / svytotal(~i21, svy_subset)
  j <- j + 1
}


i21_t10s <- data.frame(t10s = share)



# At risk of poverty rate, requires laeken

i21_arpr <- vector()

for (t in year){
  i21_arpr[t-2003] <- arpr(inc = silc.p2$i21[silc.p2$pb010 == t], weights = silc.p2$rb050[silc.p2$pb010 == t])[[1]]
}

i21_arpr <- data.frame(as.character(year), i21_arpr)



# i22 (2) Pre-tax national income ---------------------------------------------

# Mean

i22_mean <- data.frame(svyby(~i22, ~pb010, silc.p2.svy, svymean))


# Median

i22_median <- data.frame(svyby(~i22, by=~pb010, silc.p2.svy, 
                               svyquantile, quantiles=0.5, keep.var = FALSE))


# Gini

i22_gini <- data.frame(svyby(~i22, ~pb010, silc.p2.svy, svygini))



# 80/20 quantile share ratio

i22_8020 <- data.frame(svyby(~i22, ~pb010, silc.p2.svy, svyqsr))

# Top ten percent income share


share <- vector("numeric", length(2004:2017))
j <- 1

for(year in 2004:2017) {
  svy_subset <- subset(silc.p2.svy, pb010 == year)
  svy_top_10 <- subset(svy_subset, i22 >= as.numeric(
    svyquantile(~i22, svy_subset, quantile=c(0.9))))
  share[j] <- svytotal(~i22, svy_top_10) / svytotal(~i22, svy_subset)
  j <- j + 1
}


i22_t10s <- data.frame(t10s = share)



# At risk of poverty rate, requires laeken

i22_arpr <- vector()

for (t in year){
  i22_arpr[t-2003] <- arpr(inc = silc.p2$i22[silc.p2$pb010 == t], weights = silc.p2$rb050[silc.p2$pb010 == t])[[1]]
}

i22_arpr <- data.frame(as.character(year), i22_arpr)



# i23 - (3) Post-tax national income ------------------------------------------

# Mean

i23_mean <- data.frame(svyby(~i23, ~pb010, silc.p2.svy, svymean))


# Median

i23_median <- data.frame(svyby(~i23, by=~pb010, silc.p2.svy, 
                               svyquantile, quantiles=0.5, keep.var = FALSE))


#Gini 

i23_gini <- data.frame(svyby(~i23, ~pb010, silc.p2.svy, svygini))


# 80/20 quantile share ratio

i23_8020 <- data.frame(svyby(~i23, ~pb010, silc.p2.svy, svyqsr))


# Top tne percent income share


share <- vector("numeric", length(2004:2017))
j <- 1

for(year in 2004:2017) {
  svy_subset <- subset(silc.p2.svy, pb010 == year)
  svy_top_10 <- subset(svy_subset, i23 >= as.numeric(
    svyquantile(~i23, svy_subset, quantile=c(0.9))))
  share[j] <- svytotal(~i23, svy_top_10) / svytotal(~i23, svy_subset)
  j <- j + 1
}


i23_t10s <- data.frame(t10s = share)



# At risk of poverty rate, requires laeken

i23_arpr <- vector()

for (t in year){
  i23_arpr[t-2003] <- arpr(inc = silc.p2$i23[silc.p2$pb010 == t], weights = silc.p2$rb050[silc.p2$pb010 == t])[[1]]
}

i23_arpr <- data.frame(as.character(year), i23_arpr)


# Fin -------------------------------------------------------------------------

