# Setup -------------------------------------------------------------------

library(dplyr)
library(eurostat)
library(lubridate)

if(!exists(c("country", "year"))) {
  stop("Please specify country and year.")
}


# Prepare Data ------------------------------------------------------------

# Download data
silc.p <- tbl(pg, "pp") %>%
  filter(pb020 %in% country & pb010 %in% year) %>%
  select(pb010, pb020, pb030, pb040, pb150, pl060, pl100, py010g, py050g, py050n, py080g, py090g, py100g, py110g, py120g, py130g, py140g, px010, px030) %>%
  collect(n = Inf)
#correct for py021g - mail humer?

silc.h <- tbl(pg, "hh") %>%
  filter(hb020 %in% country & hb010 %in% year) %>%
  select(hb010, hb020, hb030, hy010, hy040g, hy050g, hy060g, hy070g, hy080g, hy090g, hy110g, hy120g, hy130g, hy140g, hx010, hx040, hx050, hy020) %>%
  collect(n = Inf)
#check hx040 <-> hx050

silc.d <- tbl(pg, "dd") %>%
  filter(db020 %in% country & db010 %in% year) %>%
  select(db010, db020, db030, db040, db090) %>%
  collect(n = Inf)

silc.r <- tbl(pg, "rr") %>% 
  filter(rb020 %in% country & rb010 %in% year) %>%
  select(rb010, rb020, rb030, rb050, rx030) %>%
  collect(n = Inf)

# Create unique IDs for merging
silc.p <- silc.p %>% mutate(id_h = paste0(pb020, px030))

silc.h <- silc.h %>% mutate(id_h = paste0(hb020, hb030))

silc.d <- silc.d %>% mutate(id_h = paste0(db020, db030))

# Merge the datasets
silc.pd <- left_join(silc.p, silc.d %>% select(id_h, db020, db090))

silc.hd <- left_join(silc.h, silc.d)

silc.hp <- left_join(silc.pd, silc.hd)

# # Create total personal income --------------------------------------------

# only include all individuals aged >=20 years

##################MISSING

# replace NAs with 0

income <- c("py010g", "py021g", "py050g", "hy110g", "hy040g", "hy090g", "py080g", "py090g", "py100g", "py110g", "py120g", "py130g", "py140g", "hy050g", "hy060g", "hy070g", "hy080g", "hy120g", "hy130g", ""
            "py050n", "py080g", "py090g", "py100g", "py110g", "py120g", "py130g", "py140g", "px010", "px030")

for (x in income){
  silc.hp <- silc.hp %>% mutate(x = ifelse(is.na(x), 0, x))
}

# create variables for different income concepts

# Pre-tax factor income
silc.hp <- silc.hp %>% mutate(ptfi = py010g + py050g + hy090g, hy110g, hy040g, hy090g, py080g)
names(silc.hp$ptfi) <- "Pre-tax factor income"

# Pre-tax net income
silc.hp <- silc.hp %>% mutate(ptni = ptfi + py090g + py100g)
names(silc.hp$ptni) <- "Pre-tax net income"

# Post-tax disposable income
silc.hp <- silc.hp %>% mutate(ptdi = ptfi + ptni + py110g + py120g + py130g + py140g + hy050g + hy060g + hy070g + hy080g - hy120g - hy130g - hy140g)
names(silc.hp$ptdi) <- "Post-tax disposable income"

# PPP adjustment ----------------------------------------------------------------
# Eurostat ----------------------------------------------------------------------

ppp <- get_eurostat(id = "prc_ppp_ind")

# Filter relevant values

ppp <- ppp %>% filter(aggreg == "A01" &
                        na_item == "PPP_EU28")

ppp <- ppp %>% filter(geo == "DK")

ppp <- ppp %>%
  mutate(time= year(time))


#Große datensatz mergen, bereinigen alle einkommensvariablen,
#Grundgesamtheit


# Fin ---------------------------------------------------------------------

message("Prepared data for ", country, " from ", startyear, " to ", endyear, ".")
