# This script reads the eurostat data

eurostat_mean <- read.csv("reports/DNK/tables/avg_inc_eurostat.csv")[2]

eurostat_median <- read.csv("reports/DNK/tables/med_inc_eurostat.csv")[2]

eurostat_gini_pretax <- read.csv("reports/DNK/tables/gini_pretax_eurostat.csv")[2]

eurostat_gini <- read.csv("reports/DNK/tables/gini_eurostat.csv")[2]
eurostat_gini <- round(eurostat_gini / 100, digits = 2)

eurostat_qsr <- read.csv("reports/DNK/tables/qsr_eurostat.csv")[2]

eurostat_t10s <- read.csv("reports/DNK/tables/t10s_eurostat.csv")[2]

eurostat_arpr <- read.csv("reports/DNK/tables/arpr_eurostat.csv")[2]

