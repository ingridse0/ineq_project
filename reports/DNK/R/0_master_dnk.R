# -----------------------------------------------------------------------------
#
# MASTER FILE
# DNK
#
# -----------------------------------------------------------------------------

# Load packages
library(eurostat)
library(dplyr)
library(survey)
library(convey)
library(laeken) # needed for at risk of poverty rate
library(ggplot2)
library(xtable)

# settings
country <- "DK"
startyear <- 2004
endyear <- 2017
year <- c(startyear:endyear)

# eduroam/vpn
source("R/_connection.R")

# data collection - transformation
source("reports/DNK/R/2_setup_dnk.R")

# income concepts
source("reports/DNK/R/3_income_concepts.R")

# indicators
source("reports/DNK/R/4_indicators_dnk.R")

# Read the statbank data
source("reports/DNK/R/5_read_statbank.R")

# Create tables with indicators
source("reports/DNK/R/6_tables.R")

# Create plots
source("reports/DNK/R/7_visualisation_dnk.R")

# Create tables for appendix
source("reports/DNK/R/8_tables_full_anhang.R")

# Calculate addidtional poverty indicators
source("reports/DNK/R/9_poverty.R")

# Create report
source("reports/DNK/dnk_report.Rmd")

# Fin -------------------------------------------------------------------------