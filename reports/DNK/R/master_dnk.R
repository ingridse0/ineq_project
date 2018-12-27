# -----------------------------------------------------------------------------
#
# MASTER FILE
# DNK
#
# -----------------------------------------------------------------------------

library(eurostat)
library(dplyr)
library(survey)
library(convey)

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
source("reports/DNK/setup_dnk.R")

# income concepts
source("reports/DNK/income_concepts.R")

# indicators
#source("reports/DNK/indicators_base.R")
#source("reports/DNK/indicators_laeken.R")

# Fin -------------------------------------------------------------------------