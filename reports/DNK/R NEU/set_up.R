# -----------------------------------------------------------------------------
#
# SET UP
# Group DNK
# 2004 - 2017
#
# -----------------------------------------------------------------------------

# Prepare Data ----------------------------------------------------------------

# Data 2004 - 2013
silc.p <- tbl(pg, "pp") %>%
  filter(pb020 %in% country) %>%
  dplyr::select(pb010, pb030, py010g, py020g, py050g, py080g, py090g, py100g, py110g, 
         py120g, py130g, py140g) %>%
  collect(n = Inf)
# ATTENTION: use py020g only 2004-2006

silc.h <- tbl(pg, "hh") %>%
  filter(hb020 %in% country) %>%
  dplyr::select(hb010, hb020, hb030, hy020, hy030g, hy040g, hy050g, hy060g, hy070g, 
         hy080g, hy090g, hy110g, hy120g, hy130g, hy140g, hx040, hx050) %>%
  collect(n = Inf)

silc.d <- tbl(pg, "dd") %>%
  filter(db020 %in% country) %>%
  dplyr::select(db010, db020, db030, db040, db090) %>%
  collect(n = Inf)

silc.r <- tbl(pg, "rr") %>% 
  filter( rb020 %in% country) %>%
  dplyr::select(rb010, rb020, rb030, rb050, rb080, rb090, rx030) %>%
  collect(n = Inf)

# P file
# car variable 2007 - 2017  
c07p <- tbl(pg, "c07p") %>% filter(pb020 %in% country) %>% 
  dplyr::select(pb010, pb030, py021g) %>% collect(n = Inf)

c08p <- tbl(pg, "c08p") %>% filter(pb020 %in% country) %>% 
  dplyr::select(pb010, pb030, py021g) %>% collect(n = Inf)

c09p <- tbl(pg, "c09p") %>% filter(pb020 %in% country) %>% 
  dplyr::select(pb010, pb030, py021g) %>% collect(n = Inf)

c10p <- tbl(pg, "c10p") %>% filter(pb020 %in% country) %>% 
  dplyr::select(pb010, pb030, py021g) %>% collect(n = Inf)

c11p <- tbl(pg, "c11p") %>% filter(pb020 %in% country) %>% 
  dplyr::select(pb010, pb030, py021g) %>% collect(n = Inf)

c12p <- tbl(pg, "c12p") %>% filter(pb020 %in% country) %>% 
  dplyr::select(pb010, pb030,py021g) %>% collect(n = Inf)

c13p <- tbl(pg, "c13p") %>% filter(pb020 %in% country) %>% 
  dplyr::select(pb010, pb030, py021g) %>% collect(n = Inf)

c14p <- tbl(pg, "c14p") %>% filter(pb020 %in% country) %>% 
  dplyr::select(pb010, pb030, py010g, py050g, py080g, py090g, py100g, py110g, 
                py120g, py130g, py140g, py021g) %>% collect(n = Inf)

c15p <- tbl(pg, "c15p") %>% filter(pb020 %in% country) %>% 
  dplyr::select(pb010, pb030, py010g, py050g, py080g, py090g, py100g, py110g, 
                py120g, py130g, py140g, py021g) %>% collect(n = Inf)

c16p <- tbl(pg, "c16p") %>% filter(pb020 %in% country) %>% 
  dplyr::select(pb010, pb030, py010g, py050g, py080g, py090g, py100g, py110g, 
                py120g, py130g, py140g, py021g) %>% collect(n = Inf)

c17p <- tbl(pg, "c17p") %>% filter(pb020 %in% country) %>% 
  dplyr::select(pb010, pb030, py010g, py050g, py080g, py090g, py100g, py110g, 
                py120g, py130g, py140g, py021g) %>% collect(n = Inf)

# Binding dataframes to one & merge to silc.p
cyearp <- bind_rows(c07p, c08p, c09p, c10p, c11p, c12p, c13p, c14p, c15p, c16p, 
                    c17p)

silc.p <- full_join(silc.p, cyearp) 

# Replace NAs by 0 in py021g
silc.p$py021g [is.na(silc.p$py021g)] <- 0


# H file

c14h <- tbl(pg, "c14h") %>% filter(hb020 %in% country) %>% 
  dplyr::select(hb010, hb020, hb030, hy020, hy030g, hy040g, hy050g, hy060g, hy070g, 
                hy080g, hy090g, hy110g, hy120g, hy130g, hy140g, hx040, 
                hx050) %>% collect(n = Inf)

c15h <- tbl(pg, "c15h") %>% filter(hb020 %in% country) %>% 
  dplyr::select(hb010, hb020, hb030, hy020, hy030g, hy040g, hy050g, hy060g, hy070g, 
                hy080g, hy090g, hy110g, hy120g, hy130g, hy140g, hx040, 
                hx050) %>% collect(n = Inf)

c16h <- tbl(pg, "c16h") %>% filter(hb020 %in% country) %>% 
  dplyr::select(hb010, hb020, hb030, hy020, hy030g, hy040g, hy050g, hy060g, hy070g, 
                hy080g, hy090g, hy110g, hy120g, hy130g, hy140g, hx040, 
                hx050) %>% collect(n = Inf)

c17h <- tbl(pg, "c17h") %>% filter(hb020 %in% country) %>% 
  dplyr::select(hb010, hb020, hb030, hy020, hy030g, hy040g, hy050g, hy060g, hy070g, 
                hy080g, hy090g, hy110g, hy120g, hy130g, hy140g, hx040, 
                hx050) %>% collect(n = Inf)

cyearh <- bind_rows(c14h, c15h, c16h, c17h)
silc.h <- full_join(silc.h, cyearh)


# R Data

c14r <- tbl(pg, "c14r") %>% filter(rb020 %in% country) %>% 
  dplyr::select(rb010, rb020, rb030, rb050, rb080, rb090, rx030) %>% collect(n = Inf)

c15r <- tbl(pg, "c15r") %>% filter(rb020 %in% country) %>% 
  dplyr::select(rb010, rb020, rb030, rb050, rb080, rb090, rx030) %>% collect(n = Inf)

c16r <- tbl(pg, "c16r") %>% filter(rb020 %in% country) %>% 
  dplyr::select(rb010, rb020, rb030, rb050, rb080, rb090, rx030) %>% collect(n = Inf)

c17r <- tbl(pg, "c17r") %>% filter(rb020 %in% country) %>% 
  dplyr::select(rb010, rb020, rb030, rb050, rb080, rb090, rx030) %>% collect(n = Inf)

# Binding dataframes to one & merge to silc.r
cyearr <- bind_rows(c14r, c15r, c16r, c17r)
silc.r <- full_join(silc.r, cyearr)

# Merge Data Sets -------------------------------------------------------------

# generate car variable 
silc.p$car <- silc.p$py020g
silc.p$car <- ifelse(silc.p$pb010 > 2006, silc.p$py021g, silc.p$car)

# Rename rb030, pb030 to personal_id
silc.r <- silc.r %>% mutate(personal_id = paste0(rb030, rb010))
silc.p <- silc.p %>% mutate(personal_id = paste0(pb030, pb010))

# merge silc.r and silc.p
silc.rp <- left_join(silc.r, silc.p, by = c("personal_id", "rb010" = "pb010", 
                                            "rb030" = "pb030"))

# Create age, household ID, gender variables
silc.rp <- silc.rp %>% 
  mutate(age = rb010 - rb080,
         id_h = paste0(rx030, rb010)) 

# Create unique IDs for merging, merge country and household ID h,d
silc.h <- silc.h %>% mutate(id_h = paste0(hb030, hb010))
silc.d <- silc.d %>% mutate(id_h = paste0(db030, db010))

# Merge silc.rp and silc.h
silc.prh <- left_join(silc.rp, silc.h, by = c("id_h", "rb010" = "hb010", 
                                              "rb020" = "hb020", 
                                              "rx030" = "hb030"))

# Replace NA's in silc.rph by 0
silc.prh[is.na(silc.prh)] <- 0


# Fin -------------------------------------------------------------------------

saveRDS(silc.prh,file="setupdata.RData")
# In order to read the data use
# readRDS("setupdata.RData")