install.packages("wordcloud2")
library(wordcloud2)

ep5_h <- read.csv("data/palavras-personagens/EP5/HAN.csv")

ep5_h <- subset(ep5_h, !ep5_h$palavra %in% c("lando","vai","vamos","tudo","acho","onde", "pode", "jabba", "ohhh", "the", "tão", "vou","vão","artoo"))

wordcloud2(ep5_h)
