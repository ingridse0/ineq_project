# -----------------------------------------------------------------------------
#
# MASTER FILE
# DNK
#
# -----------------------------------------------------------------------------

library(eurostat) # I think we don't need this. Delete?
library(dplyr)
library(survey)
library(convey)
library(laeken) # needed for at risk of poverty rate
library(ggplot2)
library(xtable)

# eduroam/vpn
source("R/_connection.R")

# settings
country <- "DK"

if(!exists(c("country"))) {
  stop("please specify country and year")
}

startyear <- 2004
endyear <- 2017
year <- c(startyear:endyear)

# data collection - transformation
source("reports/DNK/R/2_setup_dnk.R")

# income concepts
source("reports/DNK/3_income_concepts.R")

# indicators
source("reports/DNK/4_indicators_dnk")")

# Fin -------------------------------------------------------------------------