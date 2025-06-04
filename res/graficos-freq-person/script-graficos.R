# Episódio 4

conjNomesPersonagensEpIV <- c(SW_EpisodeIV_ptBR$personagem)

c <- data.frame(sort(table(conjNomesPersonagensEpIV), decreasing = TRUE))

c <- c[c(1:6),]

tempoTelab <- sum(b$Freq)

c$percentual <- round(c$Freq / tempoTela * 100 ,2) 

barplot(c$percentual,labels = c$conjNomesPersonagensEpIV, main = "Protagonistas mais Frequentes do Ep 4")

pie(c$percentual,labels = c$conjNomesPersonagensEpIV, main = "Protagonistas mais Frequentes do Ep 4")

# Episódio 5

conjNomesPersonagensEpV <- c(SW_EpisodeV_ptBR$personagem)

b <- data.frame(sort(table(conjNomesPersonagensEpV), decreasing = TRUE))

b <- b[c(1:6),]

tempoTelab <- sum(b$Freq)

b$percentual <- round(b$Freq / tempoTela * 100 ,2)

barplot(a$percentual,labels = b$conjNomesPersonagensEpV, main = "Protagonistas mais Frequentes do Ep 5")

pie(a$percentual,labels = b$conjNomesPersonagensEpV, main = "Protagonistas mais Frequentes do Ep 5")

# Episódio 6

conjNomesPersonagensEpVI <- c(SW_EpisodeVI_ptBR$personagem)

a <- data.frame(sort(table(conjNomesPersonagensEpVI), decreasing = TRUE))

a <- a[c(1:6),]

tempoTela <- sum(a$Freq)

a$percentual <- round(a$Freq / tempoTela * 100 ,2) 

pie(a$percentual,labels = a$conjNomesPersonagensEpVI, main = "Protagonistas mais Frequentes do Ep 6")

# Gráficos

library(ggplot2)

g.ep4 <- ggplot(data = c, aes(x= c$conjNomesPersonagensEpIV, y=c$percentual)) +
  geom_bar(stat = "identity", color = "steelblue", fill = "blue") +
  geom_text(aes(label = c$percentual), size = 3.4, vjust = -0.4) +
  xlab("Personagem") +
  ylab("Percentual de Fala") +
  ggtitle("Personagens Mais Frequentes no EP 4")
g.ep4

g.ep5 <- ggplot(data = b, aes(x= b$conjNomesPersonagensEpV, y=b$percentual)) +
  geom_bar(stat = "identity", color = "red", fill = "red3") +
  geom_text(aes(label = b$percentual), size = 3.4, vjust = -0.4) +
  xlab("Personagem") +
  ylab("Percentual de Fala") +
  ggtitle("Personagens Mais Frequentes no EP 5")
g.ep5

g.ep6 <- ggplot(data = a, aes(x= a$conjNomesPersonagensEpVI, y=a$percentual)) +
  geom_bar(stat = "identity", color = "lightgreen", fill = "green") +
  geom_text(aes(label = a$percentual), size = 3.4, vjust = -0.4) +
  xlab("Personagem") +
  ylab("Percentual de Fala") +
  ggtitle("Personagens Mais Frequentes no EP 6")
g.ep6