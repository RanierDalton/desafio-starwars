ep4_palavras <- ep4$diálogo

contaPalavras <- function(ep4_palavras) {
  palavras <- strsplit(ep4_palavras, "\\W+")
  todas <- unlist(palavras)
  contagem <- table(todas)
  contagem[order(-contagem)]
}

palavras <- paste(names(frequencia_ordenada_palavras), frequencia_ordenada_palavras, sep=";")

cat("Palavra;Frequencia", palavras, file="frequencias.csv", sep="\n")  


AQUI <- contaPalavras(ep4_palavras = ep4_palavras)

AQUI <- as.data.frame(AQUI)

AQUI <- subset(AQUI, AQUI$Freq <= 10)

AQUI <- subset(AQUI, !AQUI$todas %in% c("Olá","esse","à","As", "aos","vez","fui","los","dois","aí","la","te","este","dia","Lá","às","lhe","Ei","ei","já","área","vi","AA","TX","Cala", "ir", "Assim", "só"))

wordcloud2(AQUI)
