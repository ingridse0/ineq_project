# -----------------------------------------------------------------------------
#
# TABLES ANHANG
# Group DNK
# 2004 - 2017
#
# -----------------------------------------------------------------------------

name_vector <- c("P1 Faktoreinkommen vor Steuern",
                 "P1 Nationaleinkommen vor Steuern",
                 "P1 Verfügbares Einkommen nach Steuern",
                 "P2 Faktoreinkommen vor Steuern",
                 "P2 Nationaleinkommen vor Steuern",
                 "P2 Verfügbares Einkommen nach Steuern",
                 "Eurostat Verfügbares Einkommen")

#a für anhang

# 80/20 quantile share ratio

frame_8020a <- data.frame(i11_8020[2], i12_8020[2], i13_8020[2],
                         i21_8020[2], i22_8020[2], i23_8020[2],
                         statbank_8020
)
frame_8020a <- round(frame_8020a, digits = 2)
names(frame_8020a) <- name_vector
write.csv(frame_8020a, file="reports/DNK/tables/frame_8020a.csv")


# At risk of poverty rate

frame_arpra <- data.frame(i11_arpr[2], i12_arpr[2], i13_arpr[2],
                         i21_arpr[2], i22_arpr[2], i23_arpr[2],
                         statbank_arpr
)
frame_arpra <- round(frame_arpra, digits = 2)
names(frame_arpra) <- name_vector
write.csv(frame_arpra, file="reports/DNK/tables/frame_arpra.csv")


# Gini

frame_ginia <- data.frame(i11_gini[2], i12_gini[2], i13_gini[2],
                         i21_gini[2], i22_gini[2], i23_gini[2],
                         statbank_gini/100
)
frame_ginia <- round(frame_ginia, digits = 2)
names(frame_ginia) <- name_vector
write.csv(frame_ginia, file="reports/DNK/tables/frame_ginia.csv")


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
names(frame_meana) <- name_vector
write.csv(frame_meana, file="reports/DNK/tables/frame_meana.csv")


# Median

frame_mediana <- data.frame(i11_median[2], i12_median[2], i13_median[2],
                         i21_median[2], i22_median[2], i23_median[2],
                         statbank_median
)
frame_mediana <- round(frame_mediana, digits = 2)
names(frame_mediana) <- name_vector
write.csv(frame_mediana, file="reports/DNK/tables/frame_mediana.csv")


# Top ten share

frame_t10sa <- data.frame(i11_t10s[1], i12_t10s[1], i13_t10s[1],
                           i21_t10s[1], i22_t10s[1], i23_t10s[1]
)
frame_t10sa <- round(frame_t10sa, digits = 2)
names(frame_t10sa) <- name_vector[1:6]
write.csv(frame_t10sa, file="reports/DNK/tables/frame_t10sa.csv")
