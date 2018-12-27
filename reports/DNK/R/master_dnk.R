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

source("R/_connection.R")

country <- "DK"

if(!exists(c("country"))) {
  stop("please specify country and year")
}

#startyear <- 2004
#endyear <- 2013
#year <- c(startyear:endyear)

source("reports/DNK/setup_dnk.R")

