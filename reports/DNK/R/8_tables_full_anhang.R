# -----------------------------------------------------------------------------
#
# TABLES ANHANG
# Group DNK
# 2004 - 2017
#
# -----------------------------------------------------------------------------

# name_vector <- c("Jahr",
#                  "P1 Faktoreinkommen vor Steuern",
#                  "P1 Nationaleinkommen vor Steuern",
#                  "P1 Verfügbares Einkommen nach Steuern",
#                  "P2 Faktoreinkommen vor Steuern",
#                  "P2 Nationaleinkommen vor Steuern",
#                  "P2 Verfügbares Einkommen nach Steuern",
#                  "Eurostat Verfügbares Einkommen")

name_vector <- c("Jahr",
                 "i11",
                 "i12",
                 "i13",
                 "i21",
                 "i22",
                 "i23",
                 "E")



#a für anhang

# 80/20 quantile share ratio

frame_8020a <- data.frame(year, i11_8020[2], i12_8020[2], i13_8020[2],
                          i21_8020[2], i22_8020[2], i23_8020[2],
                          eurostat_qsr, row.names = NULL
)
frame_8020a <- round(frame_8020a, digits = 2)
names(frame_8020a) <- name_vector
save(frame_8020a, file="reports/DNK/tables/frame_8020a.Rda")


# At risk of poverty rate

frame_arpra <- data.frame(year, i11_arpr[2], i12_arpr[2], i13_arpr[2],
                          i21_arpr[2], i22_arpr[2], i23_arpr[2],
                          eurostat_arpr, row.names = NULL
)
frame_arpra <- round(frame_arpra, digits = 2)
names(frame_arpra) <- name_vector
save(frame_arpra, file="reports/DNK/tables/frame_arpra.Rda")


# Gini

frame_ginia <- data.frame(year, i11_gini[2], i12_gini[2], i13_gini[2],
                          i21_gini[2], i22_gini[2], i23_gini[2],
                          eurostat_gini_pretax, eurostat_gini, row.names = NULL
)
frame_ginia <- round(frame_ginia, digits = 2)
new_name_vector <- c(name_vector[1:7], "E1", "E2")
names(frame_ginia) <- new_name_vector
save(frame_ginia, file="reports/DNK/tables/frame_ginia.Rda")


# Mean

frame_meana <- data.frame(year, i11_mean[2], i12_mean[2], i13_mean[2],
                          i21_mean[2], i22_mean[2], i23_mean[2],
                          eurostat_mean, row.names = NULL
)

frame_meana <- round(frame_meana, digits = 2)
names(frame_meana) <- name_vector
save(frame_meana, file="reports/DNK/tables/frame_meana.Rda")


# Median

frame_mediana <- data.frame(year, i11_median[2], i12_median[2], i13_median[2],
                            i21_median[2], i22_median[2], i23_median[2],
                            eurostat_median, row.names = NULL
)
frame_mediana <- round(frame_mediana, digits = 2)
names(frame_mediana) <- name_vector
save(frame_mediana, file="reports/DNK/tables/frame_mediana.Rda")


# Top ten share

frame_t10sa <- data.frame(year, i11_t10s[1], i12_t10s[1], i13_t10s[1],
                          i21_t10s[1], i22_t10s[1], i23_t10s[1], 
                          round(eurostat_t10s/100, digits = 2), row.names = NULL
)
frame_t10sa <- round(frame_t10sa, digits = 2)
names(frame_t10sa) <- name_vector
save(frame_t10sa, file="reports/DNK/tables/frame_t10sa.Rda")
