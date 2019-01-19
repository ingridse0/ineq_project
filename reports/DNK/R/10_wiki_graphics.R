# This script produces the graphics for wikipedia

library(ggplot2)

gini_eurostat <- read.csv("reports/DNK/tables/gini_eurostat.csv")

gini_statbank <- read.csv("reports/DNK/tables/gini_statbank.csv")


# MEAN ------------------------------------------------------------------------
#P1
gini_plot_wiki <- ggplot() +
  geom_line(mapping = aes(y = gini_eurostat$Gini,x = gini_eurostat$TIME,
                          color = "Eurostat"), size = 1 ) +
  geom_line(mapping = aes(y = gini_statbank$Gini.coefficient,x = gini_statbank$Year,
                          color = "Danmarks Statistik"), size = 1) +
  scale_color_manual(values = c('Eurostat' = 'darkred', 
                                'Danmarks Statistik' = 'darkblue'))+
  labs(color = '', x = "Jahr", y = "Gini-Koeffizient", 
       title = "Gini-Koeffizient der verfügbaren Äquivalenzeinkommen, Dänemark")

gini_plot_wiki

