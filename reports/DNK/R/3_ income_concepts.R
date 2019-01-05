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
  mutate(i12 = (i11 + (sum_pi12 / hx050)))


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
table(silc.prh$hy020/silc.prh$hx050 == silc.prh$i13) 

# output: FALSE 196577 TRUE 45730 
# summary((silc.prh$hy020/silc.prh$hx050 - silc.prh$i13)/(silc.prh$hy020/silc.prh$hx050))
# all.equal(silc.prh$hy020, silc.prh$i13) 
# only small differences: "Mean relative difference: 0.4621546"

# remove unnecessary columns
silc.prh <- silc.prh %>% 
  select(-c(pi11, sum_pi11, pi12, sum_pi12, pi13, sum_pi13))


# FINISH P1 -------------------------------------------------------------------

# include only positive incomes

silc.p1 <- silc.prh %>% filter(i11 > 0, i12 > 0, i13 > 0)


# P2 --------------------------------------------------------------------------
# WID.WORLD
# Nur Personen >= 20 Jahre & partial sharing of resources 

# ATTENTION: filter household member >= 20 years 
# n number of household member that remain
# new dataframe silc.prh20

silc.prh20 <- silc.prh %>% 
  filter(age >= 20) %>% add_count(id_h)

# i21 - (1) Pre-tax factor income ---------------------------------------------
silc.prh20 <- silc.prh20 %>%
  mutate(i21 = py010g + py021g + py050g + py080g + 
           (hy110g + hy040g + hy090g)/n)

# i22 - (2) Pre-tax national income -------------------------------------------
silc.prh20 <- silc.prh20 %>%
  mutate(i22 = i21 + py090g + py100g)

# i23 - (3) Post-tax disposable income ----------------------------------------
silc.prh20 <- silc.prh20 %>%
  mutate(i23 = i22 + py110g + py120g + py130g + py140g + 
           (hy050g + hy060g + hy070g + hy080g - hy120g - hy130g - hy140g)/n)


# FINISH P2 -------------------------------------------------------------------
silc.p2 <- silc.prh20 %>% filter(i21 > 0, i22 > 0, i23 > 0)



# PREPARE INFLATION -----------------------------------------------------------

inflation <- get_eurostat("prc_hicp_aind", time_format = "raw")

inflation <- inflation %>% filter(unit == "INX_A_AVG", coicop == "CP00", 
                                  geo == "DK", time %in% 2004:2017) %>% 
  select(time, values) %>% arrange(time)

#inflation <- inflation %>% rename('pb010' = 'time')
#inflation <- inflation %>% rename('infl' = 'values')


###########################

# Load inflation data
inflation <- read.csv("reports/DNK/R/inflation.csv")

# Transform data
inflation <- data.frame(pb010 = inflation$pb010, infl = inflation$infl/100)

# Join with p1
silc.p1 <- left_join(silc.p1, inflation, by = "pb010")

# Adjust income data
silc.p1$i11 <- silc.p1$i11/silc.p1$infl
silc.p1$i12 <- silc.p1$i12/silc.p1$infl
silc.p1$i13 <- silc.p1$i13/silc.p1$infl

# Join with p2
silc.p2 <- left_join(silc.p2, inflation, by = "pb010")

# Adjust data
silc.p2$i21 <- silc.p2$i21/silc.p2$infl
silc.p2$i22 <- silc.p2$i22/silc.p2$infl
silc.p2$i23 <- silc.p2$i23/silc.p2$infl

##############################

# Fin -------------------------------------------------------------------------
