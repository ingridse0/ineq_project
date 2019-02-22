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
library(kableExtra)

# settings
country <- "DK"
startyear <- 2004
endyear <- 2017
year <- c(startyear:endyear)

# eduroam/vpn
source("R/_connection.R")

# data collection - transformation
source("reports/DNK/R/2_setup_dnk_new.R")

# income concepts
source("reports/DNK/R/3_income_concepts.R")

# indicators
source("reports/DNK/R/4_indicators_dnk.R")

# Read the eurostat data
source("reports/DNK/R/5_1_eurostat_data.R")

# Create tables with indicators
source("reports/DNK/R/6_tables.R")

# Create plots
source("reports/DNK/R/7_visualisation_dnk.R")

# Create tables for appendix
source("reports/DNK/R/8_tables_full_anhang.R")

# Calculate addidtional poverty indicators
source("reports/DNK/R/9_1_poverty_new.R")

# Wiki stuff
source("reports/DNK/R/10_wiki_graphics.R")

# Fin -------------------------------------------------------------------------