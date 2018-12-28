# -----------------------------------------------------------------------------
#
# INCOME CONCEPTS
# Group DNK
#
# -----------------------------------------------------------------------------

# P1 --------------------------------------------------------------------------
# EUROSTAT
# Gesamte Bevölkerung & equal sharing of resources within household.


# i11 - (1) Pre-tax factor income (Canberra: primary income) ------------------

# sum of personal variables
silc.prh <- silc.prh %>% mutate(pi11 = py010g + py050g + py080g + py021g)

# sum per household
silc.prh <- silc.prh %>% group_by(id_h) %>% mutate(sum_pi11 = sum(pi11))

# equivalised income per person
silc.prh <- silc.prh %>% 
  mutate(i11 = ((sum_pi11 + hy110g + hy040g + hy090g) / hx050))


# i12 (2) Pre-tax national income ---------------------------------------------

# sum of personal variables
silc.prh <- silc.prh %>% mutate(pi12 = py090g + py100g)

# sum per household
silc.prh <- silc.prh %>% group_by(id_h) %>% mutate(sum_pi12 = sum(pi12))

# equivalised income per person
silc.prh <- silc.prh %>%
  mutate(i12 = (i12 + (sum_pi12 / hx050)))


# i13 - (3) Post-tax national income ------------------------------------------

# sum of personal variables
silc.prh <- silc.prh %>% mutate(pi13 = py110g + py120g + py130g + py140g)

# sum per household
silc.prh <- silc.prh %>% group_by(id_h) %>%
  mutate(sum_pi13 = sum(pi13))

# equivalised income per person
silc.prh <- silc.prh %>%
  mutate(i13 = (i12 + 
                          (sum_pi13 + hy050g + hy060g + hy070g + hy080g 
                           - hy120g - hy130g - hy140g) / hx050))

# CHECK -----------------------------------------------------------------------
silc.prh$hy020/silc.prh$hx050 



# Fin -------------------------------------------------------------------------
