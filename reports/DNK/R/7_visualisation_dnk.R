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
       title = "Mittleres Einkommen nach Einkommenskonzepten",
       subtitle = "P1 Eurostat")
plot_mean1

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
       title = "Mittleres Einkommen nach Einkommenskonzepten",
       subtitle = "P2 widworld")
plot_mean2

# MEDIAN ----------------------------------------------------------------------
#P1
plot_median1 <- ggplot() +
  geom_line(mapping = aes(y = frame_median$statistic,x = frame_median$year,
                          color = "Faktoreinkommen vor Steuern"), size = 1 ) +
  geom_line(mapping = aes(y = frame_median$statistic.1,x = frame_median$year,
                          color = "Nationaleinkommen vor Steuern"), size = 1) +
  geom_line(mapping = aes(y = frame_median$statistic.3,x = frame_median$year,
                          color = "Verfügbares Einkommen nach Steuern"), size = 1) +
  scale_color_manual(values = c('Faktoreinkommen vor Steuern' = 'darkred', 
                                'Nationaleinkommen vor Steuern' = 'darkblue',
                                'Verfügbares Einkommen nach Steuern' = 'darkgreen'))+
  labs(color = '', x = "Jahr", y = "Median Einkommen", 
       title = "Median Einkommen nach Einkommenskonzepten",
       subtitle = "P1 Eurostat")
plot_median1

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
       title = "Median Einkommen nach Einkommenskonzepten",
       subtitle = "P2 wirdworld")
plot_median2


# MEAN und MEDIAN -------------------------------------------------------------

#P1
plot_medmit <- ggplot() +
  geom_line(mapping = aes(y = frame_median$statistic.3,x = frame_median$year,
                          color = "Median"), size = 1 ) +
  geom_line(mapping = aes(y = frame_mean$i13,x = frame_median$year,
                          color = "Mittelwert"), size = 1) +
   scale_color_manual(values = c('Median' = 'darkred', 
                                'Mittelwert' = 'darkblue'))+
  labs(color = '', x = "Jahr", y = "Einkommen", 
       title = "Median und Mittelwert des Verfügbaren Einkommens nach Steuern",
       subtitle = "P1 Eurostat")
plot_medmit


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
       subtitle = "P1 Eurostat")
plot_8020

# TOP 10 ----------------------------------------------------------------------

#P1
plot_101 <- ggplot() +
  geom_line(mapping = aes(y = frame_t10s$statistic,x = frame_t10s$year,
                          color = "Faktoreinkommen vor Steuern"), size = 1 ) +
  geom_line(mapping = aes(y = frame_t10s$statistic.1,x = frame_t10s$year,
                          color = "Nationaleinkommen vor Steuern"), size = 1) +
  geom_line(mapping = aes(y = frame_t10s$statistic.2,x = frame_t10s$year,
                          color = "Verfügbares Einkommen nach Steuern"), size = 1) +
  scale_color_manual(values = c('Faktoreinkommen vor Steuern' = 'darkred', 
                                'Nationaleinkommen vor Steuern' = 'darkblue',
                                'Verfügbares Einkommen nach Steuern' = 'darkgreen'))+
  labs(color = '', x = "Jahr", y = "Top 10% Anteil", 
       title = "Top 10% Anteil nach Einkommenskonzepten",
       subtitle = "P1 Eurostat")
plot_101

#P2
plot_102 <- ggplot() +
  geom_line(mapping = aes(y = frame_t10s$statistic.3,x = frame_t10s$year,
                           color = "Faktoreinkommen vor Steuern"), size = 1 ) +
  geom_line(mapping = aes(y = frame_t10s$statistic.4,x = frame_t10s$year,
                           color = "Nationaleinkommen vor Steuern"), size = 1) +
  geom_line(mapping = aes(y = frame_t10s$statistic.5,x = frame_t10s$year,
                           color = "Verfügbares Einkommen nach Steuern"), size = 1) +
  scale_color_manual(values = c('Faktoreinkommen vor Steuern' = 'darkred', 
                                'Nationaleinkommen vor Steuern' = 'darkblue',
                                'Verfügbares Einkommen nach Steuern' = 'darkgreen'))+
  labs(color = '', x = "Jahr", y = "Top 10% Anteil", 
       title = "Top 10% Anteil nach Einkommenskonzepten",
       subtitle = "P2 wid.world")
plot_102

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
       subtitle = "P1 Eurostat")
plot_arpr



# Fin -------------------------------------------------------------------------
