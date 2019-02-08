# -----------------------------------------------------------------------------
#
# TABLES FOR VISUALISING
# Group DNK
# 2004 - 2017
#
# -----------------------------------------------------------------------------

# 80/20 quantile share ratio

frame_8020 <- data.frame(year, i11_8020[2], i12_8020[2], i13_8020[2],
                         i21_8020[2], i22_8020[2], i23_8020[2],
                         eurostat_qsr
)
frame_8020 <- round(frame_8020, digits = 2)

write.csv(frame_8020, "reports/DNK/tables/frame_8020.csv")


# At risk of poverty rate

frame_arpr <- data.frame(year, i11_arpr[2], i12_arpr[2], i13_arpr[2],
                         i21_arpr[2], i22_arpr[2], i23_arpr[2],
                         eurostat_arpr
)
frame_arpr <- round(frame_arpr, digits = 2)

write.csv(frame_arpr, "reports/DNK/tables/frame_arpr.csv")


# Gini

frame_gini <- data.frame(year, i11_gini[2], i12_gini[2], i13_gini[2],
                         i21_gini[2], i22_gini[2], i23_gini[2],
                         eurostat_gini_pretax, eurostat_gini
)
frame_gini <- round(frame_gini, digits = 2)

write.csv(frame_gini, "reports/DNK/tables/frame_gini.csv")


# Mean

frame_mean <- data.frame(year, i11_mean[2], i12_mean[2], i13_mean[2],
                         i21_mean[2], i22_mean[2], i23_mean[2],
                         eurostat_mean
                         )
frame_mean <- round(frame_mean, digits = 2)

write.csv(frame_mean, "reports/DNK/tables/frame_mean.csv")

# Median

frame_median <- data.frame(i11_median[2], i12_median[2], i13_median[2],
                         i21_median[2], i22_median[2], i23_median[2],
                         eurostat_median
)
frame_median <- round(frame_median, digits = 2)

write.csv(frame_median, "reports/DNK/tables/frame_median.csv")

# Top ten share

frame_t10s <- data.frame(year, i11_t10s[1], i12_t10s[1], i13_t10s[1],
                           i21_t10s[1], i22_t10s[1], i23_t10s[1],
                         eurostat_t10s
)
frame_t10s <- round(frame_t10s, digits = 2)

write.csv(frame_t10s, "reports/DNK/tables/frame_t10s.csv")


