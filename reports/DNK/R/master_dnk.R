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

# eduroam/vpn
source("R/_connection.R")

# settings
country <- "DK"

if(!exists(c("country"))) {
  stop("please specify country and year")
}

#startyear <- 2004
#endyear <- 2013
#year <- c(startyear:endyear)

# data collection - transformation
source("reports/DNK/R/setup_dnk.R")

# income concepts
source("reports/DNK/income_concepts.R")

# indicators
source("reports/DNK/indicators_dnk")")

# Fin -------------------------------------------------------------------------