# -----------------------------------------------------------------------------
#
# INDICATORS
# Group DNK
# 2004 - 2017
#
# -----------------------------------------------------------------------------

# P1 --------------------------------------------------------------------------

# create survey design
silc.p1.svy <- svydesign(ids =  ~ id_h,
                         weights = ~rb050,
                         data = silc.p1) %>% convey_prep()



blaframe <- data.frame(svyby(~i13, ~pb010, silc.p1.svy, svymean))




# P1
# We are not sure if we are using the right weights
# We do not have any regions for strata
silc.p1.svy <- svydesign(ids =  ~ id_h,
                            weights = ~pb040,
                            data = silc.p1) %>% convey_prep()

silc.p2.svy <- svydesign(ids =  ~ id_h,
                         weights = ~pb040,
                         data = silc.p2) %>% convey_prep()  

svyby(~i11, ~pb010, silc.p1.svy, svymean)

svyby(~i11, ~pb010, silc.p1.svy, svygini)

blaframe <- data.frame(svyby(~i23, ~pb010, silc.p2.svy, svymean))

table(is.na(silc.p2$pb040))



# P1 --------------------------------------------------------------------------

# create survey design

# Fin -------------------------------------------------------------------------

