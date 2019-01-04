# This script reads the statbank data

# 80/20 quantile share ratio for equalized disposable income

statbank_8020 <- read.csv(
  "reports/DNK/R/statbank/eq_disp_inc_8020_statbank.csv",
  header = FALSE)

statbank_8020 <- data.frame(statbank_8020$V2[1:14]) 
names(statbank_8020) <- ('Statbank')

# At risk of poverty rate

statbank_arpr <- read.csv("reports/DNK/R/statbank/arpr_statbank.csv", header = FALSE)

statbank_arpr <- data.frame(statbank_arpr$V2[1:14]) 
names(statbank_arpr) <- ('Statbank')


# Gini

statbank_gini <- read.csv("reports/DNK/R/statbank/eq_disp_inc_gini_statbank.csv", header = FALSE)

statbank_gini <- data.frame(statbank_gini$V2[1:14]) 
names(statbank_gini) <- ('Statbank')


# Mean

statbank_mean_disp_a <- read.csv(
  "reports/DNK/R/statbank/mean_disp_inc_statbank_a.csv", header = FALSE)
statbank_mean_disp_a <- data.frame(statbank_mean_disp_a$V2[1:14]) 
names(statbank_mean_disp_a) <- ('Statbank_disp_a')

statbank_mean_disp_b <- read.csv(
  "reports/DNK/R/statbank/mean_disp_inc_statbank_b.csv", header = FALSE)
statbank_mean_disp_b <- data.frame(statbank_mean_disp_b$V2[1:14]) 
names(statbank_mean_disp_b) <- ('Statbank_disp_b')

statbank_mean_pre_tax_a <- read.csv(
  "reports/DNK/R/statbank/mean_pre_tax_inc_statbank_a.csv", header = FALSE)
statbank_mean_pre_tax_a <- data.frame(statbank_mean_pre_tax_a$V2[1:14]) 
names(statbank_mean_pre_tax_a) <- ('Statbank_pre_tax_a')

statbank_mean_pre_tax_b <- read.csv(
  "reports/DNK/R/statbank/mean_pre_tax_inc_statbank_b.csv", header = FALSE)
statbank_mean_pre_tax_b <- data.frame(statbank_mean_pre_tax_b$V2[1:14]) 
names(statbank_mean_pre_tax_b) <- ('Statbank_pre_tax_b')

statbank_mean_prim_a <- read.csv(
  "reports/DNK/R/statbank/mean_prim_inc_statbank_a.csv", header = FALSE)
statbank_mean_prim_a <- data.frame(statbank_mean_prim_a$V2[1:14]) 
names(statbank_mean_prim_a) <- ('Statbank_prim_a')

statbank_mean_prim_b <- read.csv(
  "reports/DNK/R/statbank/mean_prim_inc_statbank_b.csv", header = FALSE)
statbank_mean_prim_b <- data.frame(statbank_mean_prim_b$V2[1:14]) 
names(statbank_mean_prim_b) <- ('Statbank_prim_b')


# Median

statbank_median <- read.csv("reports/DNK/R/statbank/d5_statbank.csv",
                            header = FALSE)
statbank_median <- data.frame(statbank_median$V2[1:14]) 
names(statbank_median) <- ('Statbank')



