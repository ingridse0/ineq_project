# -----------------------------------------------------------------------------
#
# TABLES ANHANG
# Group DNK
# 2004 - 2017
#
# -----------------------------------------------------------------------------

#a für anhang

# 80/20 quantile share ratio

frame_8020a <- data.frame(i11_8020[2], i12_8020[2], i13_8020[2],
                         i21_8020[2], i22_8020[2], i23_8020[2],
                         statbank_8020
)
frame_8020a <- round(frame_8020a, digits = 2)


# At risk of poverty rate

frame_arpra <- data.frame(i11_arpr[2], i12_arpr[2], i13_arpr[2],
                         i21_arpr[2], i22_arpr[2], i23_arpr[2],
                         statbank_arpr
)
frame_arpra <- round(frame_arpra, digits = 2)


# Gini

frame_ginia <- data.frame(i11_gini[2], i12_gini[2], i13_gini[2],
                         i21_gini[2], i22_gini[2], i23_gini[2],
                         statbank_gini/100
)
frame_ginia <- round(frame_ginia, digits = 2)


# Mean

frame_meana <- data.frame(i11_mean[2], i12_mean[2], i13_mean[2],
                         i21_mean[2], i22_mean[2], i23_mean[2],
                         statbank_mean_pre_tax_a,
                         statbank_mean_pre_tax_b,
                         statbank_mean_prim_a,
                         statbank_mean_prim_b,
                         statbank_mean_disp_a,
                         statbank_mean_disp_b
                         )
frame_meana <- round(frame_meana, digits = 2)


# Median

frame_mediana <- data.frame(i11_median[2], i12_median[2], i13_median[2],
                         i21_median[2], i22_median[2], i23_median[2],
                         statbank_median
)
frame_mediana <- round(frame_mediana, digits = 2)


# Top ten share

frame_t10sa <- data.frame(i11_t10s[2], i12_t10s[2], i13_t10s[2],
                           i21_t10s[2], i22_t10s[2], i23_t10s[2]
)
frame_t10sa <- round(frame_t10sa, digits = 2)
