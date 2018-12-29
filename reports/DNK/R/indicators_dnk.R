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

i11_mean <- data.frame(svyby(~i11, ~pb010, silc.p1.svy, svymean))

i11_median <- data.frame(svyby(~i11, by=~pb010, silc.p1.svy, 
                               svyquantile, quantiles=0.5, keep.var = FALSE))

i11_gini <- data.frame(svyby(~i11, ~pb010, silc.p1.svy, svygini))

i11_8020 <- data.frame(svyby(~i11, ~pb010, silc.p1.svy, svyqsr))

#MISSING
i11_10 <- 11


# i12 (2) Pre-tax national income ---------------------------------------------

i12_mean <- data.frame(svyby(~i12, ~pb010, silc.p1.svy, svymean))

i12_median <- data.frame(svyby(~i12, by=~pb010, silc.p1.svy, 
                               svyquantile, quantiles=0.5, keep.var = FALSE))

i12_gini <- data.frame(svyby(~i12, ~pb010, silc.p1.svy, svygini))

i12_8020 <- data.frame(svyby(~i12, ~pb010, silc.p1.svy, svyqsr))

#MISSING
i12_10 <- 12 

# i13 - (3) Post-tax national income ------------------------------------------
i13_mean <- data.frame(svyby(~i13, ~pb010, silc.p1.svy, svymean))

i13_median <- data.frame(svyby(~i13, by=~pb010, silc.p1.svy, 
                               svyquantile, quantiles=0.5, keep.var = FALSE))

i13_gini <- data.frame(svyby(~i13, ~pb010, silc.p1.svy, svygini))

i13_8020 <- data.frame(svyby(~i13, ~pb010, silc.p1.svy, svyqsr))

#MISSING
i13_10 <-13 

# P2 --------------------------------------------------------------------------

# create survey design p2
silc.p2.svy <- svydesign(ids =  ~ id_h, 
                         strata = ~rb020,
                         weights = ~rb050,
                         data = silc.p2) %>% convey_prep()

# i21 - (1) Pre-tax factor income (Canberra: primary income) ------------------

i21_mean <- data.frame(svyby(~i21, ~pb010, silc.p2.svy, svymean))

i21_median <- data.frame(svyby(~i21, by=~pb010, silc.p2.svy, 
                               svyquantile, quantiles=0.5, keep.var = FALSE))

i21_gini <- data.frame(svyby(~i21, ~pb010, silc.p2.svy, svygini))

i21_8020 <- data.frame(svyby(~i21, ~pb010, silc.p2.svy, svyqsr))

#MISSING
i21_10 <- 21

# i22 (2) Pre-tax national income ---------------------------------------------

i22_mean <- data.frame(svyby(~i22, ~pb010, silc.p2.svy, svymean))

i22_median <- data.frame(svyby(~i22, by=~pb010, silc.p2.svy, 
                               svyquantile, quantiles=0.5, keep.var = FALSE))

i22_gini <- data.frame(svyby(~i22, ~pb010, silc.p2.svy, svygini))

i22_8020 <- data.frame(svyby(~i22, ~pb010, silc.p2.svy, svyqsr))

#MISSING
i12_10 <- 22 

# i23 - (3) Post-tax national income ------------------------------------------
i23_mean <- data.frame(svyby(~i23, ~pb010, silc.p2.svy, svymean))

i23_median <- data.frame(svyby(~i23, by=~pb010, silc.p2.svy, 
                               svyquantile, quantiles=0.5, keep.var = FALSE))

i23_gini <- data.frame(svyby(~i23, ~pb010, silc.p2.svy, svygini))

i23_8020 <- data.frame(svyby(~i23, ~pb010, silc.p2.svy, svyqsr))

#MISSING
i23_10 <- 23 


# Fin -------------------------------------------------------------------------

