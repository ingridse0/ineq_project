# -----------------------------------------------------------------------------
#
# VISUALISATION
# Group DNK
# 2004 - 2017
#
# -----------------------------------------------------------------------------

# MEAN ------------------------------------------------------------------------


# MEDIAN ----------------------------------------------------------------------



# GINI ------------------------------------------------------------------------
# nach P1

plot_gini <- ggplot() +
  geom_line(mapping = aes(y = frame_gini$i11,x = frame_gini$year,
                          color = "Faktoreinkommen vor Steuern"), size = 1 ) +
  geom_line(mapping = aes(y = frame_gini$i12,x = frame_gini$year,
                          color = "Nationaleinkommen vor Steuern"), size = 1) +
  geom_line(mapping = aes(y = frame_gini$i13,x = frame_gini$year,
                          color = "Verfügbares Einkommen nach Steuern"), size = 1) +
  scale_color_manual(values = c('Faktoreinkommen vor Steuern' = 'darkred', 
                                'Nationaleinkommen vor Steuern' = 'darkblue',
                                'Verfügbares Einkommen nach Steuern' = 'darkgreen'))+
  labs(color = '', x = "Jahr", y = "Gini", 
       title = "Gini Koeffizient nach Einkommenskonzepten",
       subtitle = "P1 Eurostat")
plot_gini


# P80/P20 ---------------------------------------------------------------------


# TOP 10 ----------------------------------------------------------------------



# AT RISK OF POVERTY ----------------------------------------------------------

