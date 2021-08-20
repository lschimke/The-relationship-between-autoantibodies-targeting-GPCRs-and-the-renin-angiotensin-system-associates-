#FROM: https://www.r-graph-gallery.com/115-study-correlations-with-a-correlogram.html

install.packages("corrgram")
install.packages("ggplot")
install.packages("psych")
install.packages("inlmisc")

library(corrgram)
library(readxl)  #to import and export tables 
library(ggplot2)
library(psych)
library(inlmisc)

Cor2 <- read_excel("/Users/iplace/Documents/Project Alemanha Harry Heidecke/Correlogram cor2/Cor2 log2 oxygen.xlsx")
View(Cor2)

graphic = corrgram(Cor2, order=TRUE, lower.panel=panel.fill, upper.panel=panel.pie, 
         text.panel=panel.txt, main="Gene expression", cor.method = "spearman", cex.labels = 1.5,
         col = colorRampPalette(c("white", "light green", "royalblue")))


AddGradientLegend(
  breaks = seq(-1,1,0.1),
  pal = colorRampPalette(c("white", "light green", "royalblue")),
  n = 5,
  labels = TRUE,
  strip.dim = c(2,5),
  loc = "right",
  inset = c(0.04,0.1))


corrgram(Cor2, order=TRUE, lower.panel=panel.ellipse, upper.panel=panel.pts, 
         text.panel=panel.txt, main="Gene expression", 
         col = colorRampPalette(c("green", "white", "royalblue")))

corrgram(Cor2, order=TRUE, lower.panel=panel.fill, upper.panel=panel.ellipse, 
         text.panel=panel.txt, main="Gene expression", cex.labels = 2,
         col = colorRampPalette(c("green", "white", "royalblue")))

corrgram(Cor2, order=TRUE, lower.panel=panel.shade, upper.panel=panel.pts, 
         text.panel=panel.txt, main="Gene expression", cex.labels = 2, cl.lim = c(-1, 1), 
         col = colorRampPalette(c("green", "white", "royalblue")))

corrgram(Cor2, order=TRUE, lower.panel=panel.conf, upper.panel=panel.pts, 
         text.panel=panel.txt, main="Gene expression", cl.lim = c(-1, 1), 
         col = colorRampPalette(c("green", "white", "royalblue")))
                                                                                                                          


#Inserir scala do grafico?
#mudar de auadrado para bolas?
#adicionar histogram


# Quick display of two cabapilities of GGally, to assess the distribution and correlation of variables
library(GGally)

# From the help page:
data(flea)
ggpairs(flea, columns = 2:4, ggplot2::aes(colour=species))






