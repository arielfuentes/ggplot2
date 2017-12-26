ggplot(permComunaSexoZNperc, aes(x = COMUNA, y = CANTIDAD, fill = SEXO)) +
  geom_bar(data = subset(permComunaSexoZNperc, SEXO == "Femenino"), stat = "identity") +
  geom_bar(data = subset(permComunaSexoZNperc, SEXO == "Masculino"), stat = "identity") +
  scale_y_continuous(breaks = seq(-6000, 6000, 1000) , 
                     labels = paste0(as.character(c(seq(6, 0, -1), seq(1, 6, 1))), "m")) +
  coord_flip() + 
  scale_fill_manual(values = c("#E69F00", "#999999")) + 
  geom_label(aes(label = ptg), colour = "black", show.legend = F, size = 3)  + 
  labs(title = "Inmigración Sector Norte de la RM (2016)", x = "Comuna", 
       y = "Personas") + 
  theme(plot.title = element_text(hjust = 0.5, size = 15, face = "bold"))
