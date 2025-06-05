install.packages("ggfx")

library(ggplot2)
library(ggfx)

ep6 <- read.csv("https://raw.githubusercontent.com/RanierDalton/desafio-starwars/37d26a2d04afd80325034c2b199b362c5a72b047/data/ep6.csv")
head(ep6)

ep5 <- read.csv("https://raw.githubusercontent.com/RanierDalton/desafio-starwars/37d26a2d04afd80325034c2b199b362c5a72b047/data/ep5.csv")
head(ep5)

ep4 <- read.csv("https://raw.githubusercontent.com/RanierDalton/desafio-starwars/37d26a2d04afd80325034c2b199b362c5a72b047/data/ep4.csv")
head(ep4)

# EP 4
conjNomesPersonagensEpIV <- c(ep4$personagem)

c <- data.frame(sort(table(conjNomesPersonagensEpIV), decreasing = TRUE))

c <- c[c(1:6),]

tempoTelac <- sum(c$Freq)

c$percentual <- round(c$Freq / tempoTelac * 100 ,2)

# EP 6

conjNomesPersonagensEpVI <- c(ep6$personagem)

a <- data.frame(sort(table(conjNomesPersonagensEpVI), decreasing = TRUE))

a <- a[c(1:6),]

tempoTelaa <- sum(a$Freq)

a$percentual <- round(a$Freq / tempoTelaa * 100 ,2)

# EP 5

conjNomesPersonagensEpV <- c(ep5$personagem)

b <- data.frame(sort(table(conjNomesPersonagensEpV), decreasing = TRUE))

b <- b[c(1:6),]

tempoTelab <- sum(b$Freq)

b$percentual <- round(b$Freq / tempoTelab * 100 ,2)


# Gráficos

g.ep4 <- ggplot(data = c, aes(x= conjNomesPersonagensEpIV, y=percentual)) +
  geom_bar(stat = "identity", color = "steelblue", fill = "blue3") +
  geom_text(aes(label = percentual), size = 4.5, vjust = -0.4,col = "white") +
  xlab("Personagem") +
  ylab("Percentual de Fala") +
  ggtitle("Personagens Mais Frequentes no EP 4") +
  theme(panel.background = element_rect(fill = "#000")) +
  theme(plot.background = element_rect(fill = "#000")) +
  theme(
    axis.text = element_text(color = "white"),
    axis.title = element_text(color = "white"),
    title = element_text(color = "white"),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank()) +
  with_outer_glow(
    geom_bar(stat = "identity", color = "cyan2",fill = "white", size = 1),
    colour = "cyan2", sigma = 5, expand = 3
  )

g.ep4


g.ep5 <- ggplot(data = b, aes(x= conjNomesPersonagensEpV, y=percentual)) +
  geom_bar(stat = "identity", color = "purple2", fill = "purple") +
  geom_text(aes(label = percentual), size = 4.5, vjust = -0.4,col = "white") +
  xlab("Personagem") +
  ylab("Percentual de Fala") +
  ggtitle("Personagens Mais Frequentes no EP 5") +
  theme(panel.background = element_rect(fill = "#000")) +
  theme(plot.background = element_rect(fill = "#000")) +
  theme(
    axis.text = element_text(color = "white"),
    axis.title = element_text(color = "white"),
    title = element_text(color = "white"),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank()) +
  with_outer_glow(
    geom_bar(stat = "identity", color = "purple2",fill = "white", size = 1),
    colour = "purple2", sigma = 5, expand = 3
  )
  
g.ep5

  
  g.ep6 <- ggplot(data = a, aes(x= conjNomesPersonagensEpVI, y=percentual)) +
    geom_bar(stat = "identity", color = "lightgreen", fill = "green2") +
    geom_text(aes(label = percentual), size = 4.5, vjust = -0.4,col = "white") +
    xlab("Personagem") +
    ylab("Percentual de Fala") +
    ggtitle("Personagens Mais Frequentes no EP 6") +
    theme(panel.background = element_rect(fill = "#000")) +
    theme(plot.background = element_rect(fill = "#000")) +
    theme(
      axis.text = element_text(color = "white"),
      axis.title = element_text(color = "white"),
      title = element_text(color = "white"),
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank()) +
    with_outer_glow(
      geom_bar(stat = "identity", color = "green2",fill = "white", size = 1),
      colour = "green2", sigma = 5, expand = 3
    )
  
  g.ep6
  