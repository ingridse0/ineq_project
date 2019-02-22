# -----------------------------------------------------------------------------
#
# VISUALISATION
# Group DNK
# 2004 - 2017
#
# -----------------------------------------------------------------------------

##ggsave("a.png")

# MEAN ------------------------------------------------------------------------
#P1
plot_mean1 <- ggplot() +
  geom_line(mapping = aes(y = frame_mean$i11,x = frame_mean$year,
                          color = "Faktoreinkommen vor Steuern"), size = 1 ) +
  geom_line(mapping = aes(y = frame_mean$i12,x = frame_mean$year,
                          color = "Nationaleinkommen vor Steuern"), size = 1) +
  geom_line(mapping = aes(y = frame_mean$i13,x = frame_mean$year,
                          color = "Verfügbares Einkommen nach Steuern"), size = 1) +
  scale_color_manual(values = c('Faktoreinkommen vor Steuern' = 'darkred', 
                                'Nationaleinkommen vor Steuern' = 'darkblue',
                                'Verfügbares Einkommen nach Steuern' = 'darkgreen'))+
  labs(color = '', x = "Jahr", y = "Mittleres Einkommen", 
       title = "Mittelwert der Einkommen nach Einkommenskonzepten",
       subtitle = "P1 Eurostat (eigene Berechnung)")
plot_mean1
ggsave("reports/DNK/img/mean1.png")


#P2
plot_mean2 <- ggplot() +
  geom_line(mapping = aes(y = frame_mean$i21,x = frame_mean$year,
                          color = "Faktoreinkommen vor Steuern"), size = 1 ) +
  geom_line(mapping = aes(y = frame_mean$i22,x = frame_mean$year,
                          color = "Nationaleinkommen vor Steuern"), size = 1) +
  geom_line(mapping = aes(y = frame_mean$i23,x = frame_mean$year,
                          color = "Verfügbares Einkommen nach Steuern"), size = 1) +
  scale_color_manual(values = c('Faktoreinkommen vor Steuern' = 'darkred', 
                                'Nationaleinkommen vor Steuern' = 'darkblue',
                                'Verfügbares Einkommen nach Steuern' = 'darkgreen'))+
  labs(color = '', x = "Jahr", y = "Mittleres Einkommen", 
       title = "Mittelwert der Einkommen nach Einkommenskonzepten",
       subtitle = "P2 widworld (eigene Berechnung)")
plot_mean2
ggsave("reports/DNK/img/mean2.png")

# MEDIAN ----------------------------------------------------------------------
#P1
plot_median1 <- ggplot() +
  geom_line(mapping = aes(y = frame_median$statistic,x = frame_median$year,
                          color = "Faktoreinkommen vor Steuern"), size = 1 ) +
  geom_line(mapping = aes(y = frame_median$statistic.1,x = frame_median$year,
                          color = "Nationaleinkommen vor Steuern"), size = 1) +
  geom_line(mapping = aes(y = frame_median$statistic.2,x = frame_median$year,
                          color = "Verfügbares Einkommen nach Steuern"), size = 1) +
  scale_color_manual(values = c('Faktoreinkommen vor Steuern' = 'darkred', 
                                'Nationaleinkommen vor Steuern' = 'darkblue',
                                'Verfügbares Einkommen nach Steuern' = 'darkgreen'))+
  labs(color = '', x = "Jahr", y = "Median Einkommen", 
       title = "Medianeinkommen nach Einkommenskonzepten",
       subtitle = "P1 Eurostat (eigene Berechnung)")
plot_median1
ggsave("reports/DNK/img/median1.png")

#P2
plot_median2 <- ggplot() +
  geom_line(mapping = aes(y = frame_median$statistic.3,x = frame_median$year,
                          color = "Faktoreinkommen vor Steuern"), size = 1 ) +
  geom_line(mapping = aes(y = frame_median$statistic.4,x = frame_median$year,
                          color = "Nationaleinkommen vor Steuern"), size = 1) +
  geom_line(mapping = aes(y = frame_median$statistic.5,x = frame_median$year,
                          color = "Verfügbares Einkommen nach Steuern"), size = 1) +
  scale_color_manual(values = c('Faktoreinkommen vor Steuern' = 'darkred', 
                                'Nationaleinkommen vor Steuern' = 'darkblue',
                                'Verfügbares Einkommen nach Steuern' = 'darkgreen'))+
  labs(color = '', x = "Jahr", y = "Median Einkommen", 
       title = "Medianeinkommen nach Einkommenskonzepten",
       subtitle = "P2 wirdworld (eigene Berechnung)")
plot_median2
ggsave("reports/DNK/img/median2.png")


# MEAN und MEDIAN -------------------------------------------------------------

#P1
plot_medmit <- ggplot() +
  geom_line(mapping = aes(y = frame_median$statistic.2,x = frame_median$year,
                          color = "Median"), size = 1 ) +
  geom_line(mapping = aes(y = frame_mean$i13,x = frame_median$year,
                          color = "Mittelwert"), size = 1) +
   scale_color_manual(values = c('Median' = 'darkred', 
                                'Mittelwert' = 'darkblue'))+
  labs(color = '', x = "Jahr", y = "Einkommen", 
       title = "Median und Mittelwert des Verfügbaren Einkommens nach Steuern",
       subtitle = "P1 Eurostat (eigene Berechnung)")
plot_medmit
ggsave("reports/DNK/img/medmit.png")


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
       subtitle = "P1 Eurostat (eigene Berechnung)")
plot_gini
ggsave("reports/DNK/img/gini.png")



# P80/P20 ---------------------------------------------------------------------
# nach P1

plot_8020 <- ggplot() +
  geom_line(mapping = aes(y = frame_8020$i11,x = frame_8020$year,
                          color = "Faktoreinkommen vor Steuern"), size = 1 ) +
  geom_line(mapping = aes(y = frame_8020$i12,x = frame_8020$year,
                          color = "Nationaleinkommen vor Steuern"), size = 1) +
  geom_line(mapping = aes(y = frame_8020$i13,x = frame_8020$year,
                          color = "Verfügbares Einkommen nach Steuern"), size = 1) +
  scale_color_manual(values = c('Faktoreinkommen vor Steuern' = 'darkred', 
                                'Nationaleinkommen vor Steuern' = 'darkblue',
                                'Verfügbares Einkommen nach Steuern' = 'darkgreen'))+
  labs(color = '', x = "Jahr", y = "P80/P20", 
       title = "P80/P20 Verhältnis nach Einkommenskonzepten",
       subtitle = "P1 Eurostat (eigene Berechnung)")
plot_8020
ggsave("reports/DNK/img/8020.png")

# TOP 10 ----------------------------------------------------------------------

#P1
plot_101 <- ggplot() +
  geom_line(mapping = aes(y = frame_t10s$t10s,x = frame_t10s$year,
                          color = "Faktoreinkommen vor Steuern"), size = 1 ) +
  geom_line(mapping = aes(y = frame_t10s$t10s.1,x = frame_t10s$year,
                          color = "Nationaleinkommen vor Steuern"), size = 1) +
  geom_line(mapping = aes(y = frame_t10s$t10s.2,x = frame_t10s$year,
                          color = "Verfügbares Einkommen nach Steuern"), size = 1) +
  scale_color_manual(values = c('Faktoreinkommen vor Steuern' = 'darkred', 
                                'Nationaleinkommen vor Steuern' = 'darkblue',
                                'Verfügbares Einkommen nach Steuern' = 'darkgreen'))+
  labs(color = '', x = "Jahr", y = "Top 10% Anteil", 
       title = "Top 10% Anteil nach Einkommenskonzepten",
       subtitle = "P1 Eurostat (eigene Berechnung)")
plot_101
ggsave("reports/DNK/img/topten1.png")

#P2
plot_102 <- ggplot() +
  geom_line(mapping = aes(y = frame_t10s$t10s.3,x = frame_t10s$year,
                           color = "Faktoreinkommen vor Steuern"), size = 1 ) +
  geom_line(mapping = aes(y = frame_t10s$t10s.4,x = frame_t10s$year,
                           color = "Nationaleinkommen vor Steuern"), size = 1) +
  geom_line(mapping = aes(y = frame_t10s$t10s.5,x = frame_t10s$year,
                           color = "Verfügbares Einkommen nach Steuern"), size = 1) +
  scale_color_manual(values = c('Faktoreinkommen vor Steuern' = 'darkred', 
                                'Nationaleinkommen vor Steuern' = 'darkblue',
                                'Verfügbares Einkommen nach Steuern' = 'darkgreen'))+
  labs(color = '', x = "Jahr", y = "Top 10% Anteil", 
       title = "Top 10% Anteil nach Einkommenskonzepten",
       subtitle = "P2 wid.world (eigene Berechnung)")
plot_102
ggsave("reports/DNK/img/topten2.png")

# AT RISK OF POVERTY ----------------------------------------------------------

# P1

plot_arpr <- ggplot() +
  geom_line(mapping = aes(y = frame_arpr$i11,x = frame_arpr$year,
                          color = "Faktoreinkommen vor Steuern"), size = 1 ) +
  geom_line(mapping = aes(y = frame_arpr$i12,x = frame_arpr$year,
                          color = "Nationaleinkommen vor Steuern"), size = 1) +
  geom_line(mapping = aes(y = frame_arpr$i13,x = frame_arpr$year,
                          color = "Verfügbares Einkommen nach Steuern"), size = 1) +
  scale_color_manual(values = c('Faktoreinkommen vor Steuern' = 'darkred', 
                                'Nationaleinkommen vor Steuern' = 'darkblue',
                                'Verfügbares Einkommen nach Steuern' = 'darkgreen'))+
  labs(color = '', x = "Jahr", y = "Armutsgefährdungsquote", 
       title = "Armutsgefährdungsquote nach Einkommenskonzepten",
       subtitle = "P1 Eurostat (eigene Berechnung)")
plot_arpr
ggsave("reports/DNK/img/arpr.png")



# Fin -------------------------------------------------------------------------
