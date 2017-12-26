ggplot(SecNorPer, aes(x = nombre_comuna, y = Hab_2018)) + geom_bar(stat = "identity") + 
  labs(title = "Población Sector Norte de la RM (2018)", x = "Comuna", 
       y = "Hab.") + 
  theme(plot.title = element_text(hjust = 0.5, size = 15, face = "bold")) + 
  geom_label(aes(label = h2), position = position_dodge(width=1), colour = "black", fontface = "bold")
