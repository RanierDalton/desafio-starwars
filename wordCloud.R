install.packages("wordcloud2")
library(wordcloud2)

ep6_t <- read.csv("data/palavras-personagens/EP6/THREEPIO.csv")

ep6_t <- subset(ep6_t, !ep6_t$palavra %in% c("lando","vai","vamos","tudo","acho","onde", "pode", "jabba", "ohhh", "the", "tão", "vou","vão","artoo", "posso","então"))

wordcloud2(ep6_t)
