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
                         statbank_8020
)
frame_8020 <- round(frame_8020, digits = 2)


# At risk of poverty rate

frame_arpr <- data.frame(year, i11_arpr[2], i12_arpr[2], i13_arpr[2],
                         i21_arpr[2], i22_arpr[2], i23_arpr[2],
                         statbank_arpr
)
frame_arpr <- round(frame_arpr, digits = 2)


# Gini

frame_gini <- data.frame(year, i11_gini[2], i12_gini[2], i13_gini[2],
                         i21_gini[2], i22_gini[2], i23_gini[2],
                         statbank_gini/100
)
frame_gini <- round(frame_gini, digits = 2)


# Mean

frame_mean <- data.frame(year, i11_mean[2], i12_mean[2], i13_mean[2],
                         i21_mean[2], i22_mean[2], i23_mean[2],
                         statbank_mean_pre_tax_a,
                         statbank_mean_pre_tax_b,
                         statbank_mean_prim_a,
                         statbank_mean_prim_b,
                         statbank_mean_disp_a,
                         statbank_mean_disp_b
                         )
frame_mean <- round(frame_mean, digits = 2)


# Median

frame_median <- data.frame(year, i11_median[2], i12_median[2], i13_median[2],
                         i21_median[2], i22_median[2], i23_median[2],
                         statbank_median
)
frame_median <- round(frame_median, digits = 2)


# Top ten share

frame_t10s <- data.frame(year, i11_t10s[2], i12_t10s[2], i13_t10s[2],
                           i21_t10s[2], i22_t10s[2], i23_t10s[2]
)
frame_t10s <- round(frame_t10s, digits = 2)
