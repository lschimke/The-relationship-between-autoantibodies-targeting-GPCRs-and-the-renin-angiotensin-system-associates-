#CORRELOGRAM OF CIRCULES
#FROM: https://rpubs.com/bigcat/258548
install.packages("qgraph")
library(qgraph)
library(ggplot2)
library(psych)
library(inlmisc)

Cor2Control=read.table("/Users/otavio.cmarques/Desktop/alexcorrelation/Cor2 log2 Control.txt",dec = ",")
Cor2Mild=read.table("/Users/otavio.cmarques/Desktop/alexcorrelation/Cor2 log2 mild.txt",dec = ",")
Cor2Severe=read.table("/Users/otavio.cmarques/Desktop/alexcorrelation/Cor2 log2 severe.txt",dec = ",")
Cor2Oxygen=read.table("/Users/otavio.cmarques/Desktop/alexcorrelation/Cor2 log2 oxygen.txt",dec = ",")

par(mfrow=c(2,2))

cormat=cor(Cor2Control, method="spearman") # or cormat=cor(dat[,1:12],dat[,1:12])
qgraph(cormat,shape="circle", minimum= 0.6, posCol="darkgreen", negCol="darkred",
       layout="groups", vsize=7, labels =  colnames(Cor2Control), title = "Control")

cormat=cor(Cor2Mild, method="spearman") # or cormat=cor(dat[,1:12],dat[,1:12])
qgraph(cormat,shape="circle", minimum= 0.6, posCol="darkgreen", negCol="darkred",
       layout="groups", vsize=7, labels =  colnames(Cor2Mild), title = "COVID-19 mild")

cormat=cor(Cor2Severe, method="spearman") # or cormat=cor(dat[,1:12],dat[,1:12])
qgraph(cormat,shape="circle", minimum= 0.6, posCol="darkgreen", negCol="darkred",
       layout="groups", vsize=7, labels =  colnames(Cor2Severe), title = "COVID-19 severe")

cormat=cor(Cor2Oxygen, method="spearman") # or cormat=cor(dat[,1:12],dat[,1:12])
qgraph(cormat,shape="circle", minimum= 0.6, posCol="darkgreen", negCol="darkred",
       layout="groups", vsize=7, labels =  colnames(Cor2Oxygen), title = "COVID-19 oxygen")

