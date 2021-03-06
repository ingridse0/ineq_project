# -----------------------------------------------------------------------------
#
# TABLES FOR VISUALISING
# Group DNK
# 2004 - 2017
#
# -----------------------------------------------------------------------------

# 80/20 quantile share ratio

frame_8020a <- data.frame(i11_8020[2], i12_8020[2], i13_8020[2],
                         i21_8020[2], i22_8020[2], i23_8020[2],
                         eurostat_qsr
)
frame_8020a <- round(frame_8020a, digits = 2)

write.csv(frame_8020a, "reports/DNK/tables/frame_8020a.csv")


# At risk of poverty rate

frame_arpra <- data.frame(i11_arpr[2], i12_arpr[2], i13_arpr[2],
                         i21_arpr[2], i22_arpr[2], i23_arpr[2],
                         eurostat_arpr
)
frame_arpra <- round(frame_arpra, digits = 2)

write.csv(frame_arpra, "reports/DNK/tables/frame_arpra.csv")


# Gini

frame_ginia <- data.frame(i11_gini[2], i12_gini[2], i13_gini[2],
                         i21_gini[2], i22_gini[2], i23_gini[2],
                         eurostat_gini_pretax, eurostat_gini
)
frame_ginia <- round(frame_ginia, digits = 2)

write.csv(frame_ginia, "reports/DNK/tables/frame_ginia.csv")


# Mean

frame_meana <- data.frame(i11_mean[2], i12_mean[2], i13_mean[2],
                         i21_mean[2], i22_mean[2], i23_mean[2],
                         eurostat_mean
)
frame_meana <- round(frame_meana, digits = 2)

write.csv(frame_meana, "reports/DNK/tables/frame_meana.csv")

# Median

frame_mediana <- data.frame(i11_median[2], i12_median[2], i13_median[2],
                           i21_median[2], i22_median[2], i23_median[2],
                           eurostat_median
)
frame_mediana <- round(frame_mediana, digits = 2)

write.csv(frame_mediana, "reports/DNK/tables/frame_mediana.csv")

# Top ten share

frame_t10sa <- data.frame(i11_t10s[1], i12_t10s[1], i13_t10s[1],
                         i21_t10s[1], i22_t10s[1], i23_t10s[1],
                         eurostat_t10s
)
frame_t10sa <- round(frame_t10sa, digits = 2)

write.csv(frame_t10sa, "reports/DNK/tables/frame_t10sa.csv")


