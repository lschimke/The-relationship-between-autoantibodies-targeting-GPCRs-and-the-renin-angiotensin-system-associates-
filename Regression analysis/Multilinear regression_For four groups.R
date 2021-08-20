#Packages 
install.packages("ggpubr")
install.packages("ggplot2")
install.packages("ggExtra")

#Libraries
library(ggpubr)
library(ggplot2)
#add histogram:
library(ggExtra) 

#CXCR3.Ab x AT1R.Ab
p <- ggplot(tableMLR, aes(x=AT1R.Ab,y=CXCR3.Ab,color=Gene.Symbol, fill=Gene.Symbol)) +
  geom_point(alpha=0.95) + 
  labs(x="AT1R.Ab", y= "CXCR3.Ab") + 
  xlim(2,6)+
  ylim(3,8)+
  scale_color_manual("Group:", values = c(Control = "#9c9c9c", 
        Mild = "#5fb862", Severe = "#38c3e1", oxygen = "#1657e1"), labels=c(Control = "control", Mild = "mild", Severe ="severe", oxygen ="oxygen")) + 
  scale_fill_manual("Group:", values = c(Control = "#9c9c9c", 
        Mild = "#5fb862", Severe = "#38c3e1", oxygen = "#1657e1"), labels=c(Control = "control", Mild = "mild", Severe ="severe", oxygen ="oxygen")) + 
  geom_smooth(method="lm", label.x = 9, se = FALSE) + theme_classic(base_size =8) +
  theme(legend.position = "bottom") +
  #se a analise de residuo funcionar entao trocar o se = TRUE
  stat_cor(cor.coef.name = "rho", aes(color = Gene.Symbol), label.x = 2, label.y.npc = "top", size = 6, show.legend = FALSE) +
  theme(text = element_text(size = 30))  


#O boxplot mostra a mediana 

#Rho é para R de spearman
#e o p valeu represents the null hypothesis is = 0

#Add: you can choose among "density", "histogram", "boxplot","violin", "densigram"
p <- ggMarginal(p, type="density", groupColour = TRUE, groupFill = TRUE)

#vizualize the plot
p

#################

#CXCR3.Ab x AT1R.Ab
p <- ggplot(tableMLR, aes(x=AT1R.Ab,y=CXCR3.Ab,color=Gene.Symbol, fill=Gene.Symbol)) +
  geom_point(alpha=0.95) + 
  labs(x="AT1R.Ab", y= "CXCR3.Ab") + 
  xlim(2,6)+
  ylim(3,8)+
  scale_color_manual("Group:", values = c(Control = "#9c9c9c", 
                                          Mild = "#5fb862", Severe = "#38c3e1", oxygen = "#1657e1"), labels=c(Control = "control", Mild = "mild", Severe ="severe", oxygen ="oxygen")) + 
  scale_fill_manual("Group:", values = c(Control = "#9c9c9c", 
                                         Mild = "#5fb862", Severe = "#38c3e1", oxygen = "#1657e1"), labels=c(Control = "control", Mild = "mild", Severe ="severe", oxygen ="oxygen")) + 
  geom_smooth(method="lm", label.x = 9, se = TRUE) + theme_classic(base_size =8) +
  theme(legend.position = "bottom") +
  #se a analise de residuo funcionar entao trocar o se = TRUE
  stat_cor(cor.coef.name = "rho", aes(color = Gene.Symbol), label.x = 2, label.y.npc = "top", size = 6, show.legend = FALSE) +
  theme(text = element_text(size = 30))  


#O boxplot mostra a mediana 

#Rho é para R de spearman
#e o p valeu represents the null hypothesis is = 0

#Add: you can choose among "density", "histogram", "boxplot","violin", "densigram"
p <- ggMarginal(p, type="density", groupColour = TRUE, groupFill = TRUE)

#vizualize the plot
p

################


#CXCR3.Ab x ACE.II.Ab
p <- ggplot(tableMLR, aes(x=ACE.II.Ab,y=CXCR3.Ab,color=Gene.Symbol, fill=Gene.Symbol)) +
  geom_point(alpha=0.95) + 
  labs(x="ACE.II.Ab", y= "CXCR3.Ab") + 
  xlim(1,6)+
  ylim(3,8)+
  scale_color_manual("Group:", values = c(Control = "#9c9c9c", 
                                          Mild = "#5fb862", Severe = "#38c3e1", oxygen = "#1657e1"), labels=c(Control = "control", Mild = "mild", Severe ="severe", oxygen ="oxygen")) + 
  scale_fill_manual("Group:", values = c(Control = "#9c9c9c", 
                                         Mild = "#5fb862", Severe = "#38c3e1", oxygen = "#1657e1"), labels=c(Control = "control", Mild = "mild", Severe ="severe", oxygen ="oxygen")) + 
  geom_smooth(method="lm", label.x = 9, se = FALSE) + theme_classic(base_size =8) +
  theme(legend.position = "bottom") +
  #se a analise de residuo funcionar entao trocar o se = TRUE
  stat_cor(cor.coef.name = "rho", aes(color = Gene.Symbol), label.x = 1, label.y.npc = "top", size = 6, show.legend = FALSE) +
  theme(text = element_text(size = 30))  


#O boxplot mostra a mediana 

#Rho é para R de spearman
#e o p valeu represents the null hypothesis is = 0

#Add: you can choose among "density", "histogram", "boxplot","violin", "densigram"
p <- ggMarginal(p, type="density", groupColour = TRUE, groupFill = TRUE)

#vizualize the plot
p

#######################

#CXCR3.Ab x Brady.R1.Ab
p <- ggplot(tableMLR, aes(x=Brady.R1.Ab,y=CXCR3.Ab,color=Gene.Symbol, fill=Gene.Symbol)) +
  geom_point(alpha=0.95) + 
  labs(x="Brady.R1.Ab", y= "CXCR3.Ab") + 
  xlim(2,6)+
  ylim(3,8)+
  scale_color_manual("Group:", values = c(Control = "#9c9c9c", 
                                          Mild = "#5fb862", Severe = "#38c3e1", oxygen = "#1657e1"), labels=c(Control = "control", Mild = "mild", Severe ="severe", oxygen ="oxygen")) + 
  scale_fill_manual("Group:", values = c(Control = "#9c9c9c", 
                                         Mild = "#5fb862", Severe = "#38c3e1", oxygen = "#1657e1"), labels=c(Control = "control", Mild = "mild", Severe ="severe", oxygen ="oxygen")) + 
  geom_smooth(method="lm", label.x = 9, se = FALSE) + theme_classic(base_size =8) +
  theme(legend.position = "bottom") +
  #se a analise de residuo funcionar entao trocar o se = TRUE
  stat_cor(cor.coef.name = "rho", aes(color = Gene.Symbol), label.x = 2, label.y.npc = "top", size = 6, show.legend = FALSE) +
  theme(text = element_text(size = 30))  


#O boxplot mostra a mediana 

#Rho é para R de spearman
#e o p valeu represents the null hypothesis is = 0

#Add: you can choose among "density", "histogram", "boxplot","violin", "densigram"
p <- ggMarginal(p, type="density", groupColour = TRUE, groupFill = TRUE)

#vizualize the plot
p

############################

#CXCR3.Ab x N1R.Ab
p <- ggplot(tableMLR, aes(x=N1R.Ab,y=CXCR3.Ab,color=Gene.Symbol, fill=Gene.Symbol)) +
  geom_point(alpha=0.95) + 
  labs(x="N1R.Ab", y= "CXCR3.Ab") + 
  xlim(3,6)+
  ylim(3,8)+
  scale_color_manual("Group:", values = c(Control = "#9c9c9c", 
                                          Mild = "#5fb862", Severe = "#38c3e1", oxygen = "#1657e1"), labels=c(Control = "control", Mild = "mild", Severe ="severe", oxygen ="oxygen")) + 
  scale_fill_manual("Group:", values = c(Control = "#9c9c9c", 
                                         Mild = "#5fb862", Severe = "#38c3e1", oxygen = "#1657e1"), labels=c(Control = "control", Mild = "mild", Severe ="severe", oxygen ="oxygen")) + 
  geom_smooth(method="lm", label.x = 9, se = FALSE) + theme_classic(base_size =8) +
  theme(legend.position = "bottom") +
  #se a analise de residuo funcionar entao trocar o se = TRUE
  stat_cor(cor.coef.name = "rho", aes(color = Gene.Symbol), label.x = 3, label.y.npc = "top", size = 6, show.legend = FALSE) +
  theme(text = element_text(size = 30))  


#O boxplot mostra a mediana 

#Rho é para R de spearman
#e o p valeu represents the null hypothesis is = 0

#Add: you can choose among "density", "histogram", "boxplot","violin", "densigram"
p <- ggMarginal(p, type="density", groupColour = TRUE, groupFill = TRUE)

#vizualize the plot
p

###################################

#STAB1.Ab x PAR1.Ab
p <- ggplot(tableMLR, aes(x=PAR1.Ab,y=STAB.1.Ab,color=Gene.Symbol, fill=Gene.Symbol)) +
  geom_point(alpha=0.95) + 
  labs(x="PAR1.Ab", y= "STAB.1.Ab") + 
  xlim(2,6)+
  ylim(3,8)+
  scale_color_manual("Group:", values = c(Control = "#9c9c9c", 
                                          Mild = "#5fb862", Severe = "#38c3e1", oxygen = "#1657e1"), labels=c(Control = "control", Mild = "mild", Severe ="severe", oxygen ="oxygen")) + 
  scale_fill_manual("Group:", values = c(Control = "#9c9c9c", 
                                         Mild = "#5fb862", Severe = "#38c3e1", oxygen = "#1657e1"), labels=c(Control = "control", Mild = "mild", Severe ="severe", oxygen ="oxygen")) + 
  geom_smooth(method="lm", label.x = 9, se = FALSE) + theme_classic(base_size =8) +
  theme(legend.position = "bottom") +
  #se a analise de residuo funcionar entao trocar o se = TRUE
  stat_cor(cor.coef.name = "rho", aes(color = Gene.Symbol), label.x = 2, label.y.npc = "top", size = 6, show.legend = FALSE) +
  theme(text = element_text(size = 30))  


#O boxplot mostra a mediana 

#Rho é para R de spearman
#e o p valeu represents the null hypothesis is = 0

#Add: you can choose among "density", "histogram", "boxplot","violin", "densigram"
p <- ggMarginal(p, type="density", groupColour = TRUE, groupFill = TRUE)

#vizualize the plot
p

##############################

#PAR1.Ab x Brady.R1.Ab
p <- ggplot(tableMLR, aes(x=PAR1.Ab,y=Brady.R1.Ab,color=Gene.Symbol, fill=Gene.Symbol)) +
  geom_point(alpha=0.95) + 
  labs(x="PAR1.Ab", y= "Brady.R1.Ab") + 
  xlim(2,6)+
  ylim(2,8)+
  scale_color_manual("Group:", values = c(Control = "#9c9c9c", 
                                          Mild = "#5fb862", Severe = "#38c3e1", oxygen = "#1657e1"), labels=c(Control = "control", Mild = "mild", Severe ="severe", oxygen ="oxygen")) + 
  scale_fill_manual("Group:", values = c(Control = "#9c9c9c", 
                                         Mild = "#5fb862", Severe = "#38c3e1", oxygen = "#1657e1"), labels=c(Control = "control", Mild = "mild", Severe ="severe", oxygen ="oxygen")) + 
  geom_smooth(method="lm", label.x = 9, se = FALSE) + theme_classic(base_size =8) +
  theme(legend.position = "bottom") +
  #se a analise de residuo funcionar entao trocar o se = TRUE
  stat_cor(cor.coef.name = "rho", aes(color = Gene.Symbol), label.x = 2, label.y.npc = "top", size = 6, show.legend = FALSE) +
  theme(text = element_text(size = 30))  


#O boxplot mostra a mediana 

#Rho é para R de spearman
#e o p valeu represents the null hypothesis is = 0

#Add: you can choose among "density", "histogram", "boxplot","violin", "densigram"
p <- ggMarginal(p, type="density", groupColour = TRUE, groupFill = TRUE)

#vizualize the plot
p

##############################3

#BradyR1.Ab x C5a.R.Ab
p <- ggplot(tableMLR, aes(x=C5a.R.Ab,y=Brady.R1.Ab,color=Gene.Symbol, fill=Gene.Symbol)) +
  geom_point(alpha=0.95) + 
  labs(x="C5a.R.Ab", y= "Brady.R1.Ab") + 
  xlim(3,6)+
  ylim(1,6)+
  scale_color_manual("Group:", values = c(Control = "#9c9c9c", 
                                          Mild = "#5fb862", Severe = "#38c3e1", oxygen = "#1657e1"), labels=c(Control = "control", Mild = "mild", Severe ="severe", oxygen ="oxygen")) + 
  scale_fill_manual("Group:", values = c(Control = "#9c9c9c", 
                                         Mild = "#5fb862", Severe = "#38c3e1", oxygen = "#1657e1"), labels=c(Control = "control", Mild = "mild", Severe ="severe", oxygen ="oxygen")) + 
  geom_smooth(method="lm", label.x = 9, se = FALSE) + theme_classic(base_size =8) +
  theme(legend.position = "bottom") +
  #se a analise de residuo funcionar entao trocar o se = TRUE
  stat_cor(cor.coef.name = "rho", aes(color = Gene.Symbol), label.x = 3, label.y.npc = "top", size = 6, show.legend = FALSE) +
  theme(text = element_text(size = 30))  


#O boxplot mostra a mediana 

#Rho é para R de spearman
#e o p valeu represents the null hypothesis is = 0

#Add: you can choose among "density", "histogram", "boxplot","violin", "densigram"
p <- ggMarginal(p, type="density", groupColour = TRUE, groupFill = TRUE)

#vizualize the plot
p

#########################

#C5aR.Ab x N1R.Ab
p <- ggplot(tableMLR, aes(x=C5a.R.Ab,y=N1R.Ab,color=Gene.Symbol, fill=Gene.Symbol)) +
  geom_point(alpha=0.95) + 
  labs(x="C5a.R.Ab", y= "N1R.Ab") + 
  xlim(3,6)+
  ylim(2,8)+
  scale_color_manual("Group:", values = c(Control = "#9c9c9c", 
                                          Mild = "#5fb862", Severe = "#38c3e1", oxygen = "#1657e1"), labels=c(Control = "control", Mild = "mild", Severe ="severe", oxygen ="oxygen")) + 
  scale_fill_manual("Group:", values = c(Control = "#9c9c9c", 
                                         Mild = "#5fb862", Severe = "#38c3e1", oxygen = "#1657e1"), labels=c(Control = "control", Mild = "mild", Severe ="severe", oxygen ="oxygen")) + 
  geom_smooth(method="lm", label.x = 9, se = FALSE) + theme_classic(base_size =8) +
  theme(legend.position = "bottom") +
  #se a analise de residuo funcionar entao trocar o se = TRUE
  stat_cor(cor.coef.name = "rho", aes(color = Gene.Symbol), label.x = 3, label.y.npc = "top", size = 6, show.legend = FALSE) +
  theme(text = element_text(size = 30))  


#O boxplot mostra a mediana 

#Rho é para R de spearman
#e o p valeu represents the null hypothesis is = 0

#Add: you can choose among "density", "histogram", "boxplot","violin", "densigram"
p <- ggMarginal(p, type="density", groupColour = TRUE, groupFill = TRUE)

#vizualize the plot
p

############################

#ACEII.Ab x MASR.Ab
p <- ggplot(tableMLR, aes(x=ACE.II.Ab ,y=MASR.Ab,color=Gene.Symbol, fill=Gene.Symbol)) +
  geom_point(alpha=0.95) + 
  labs(x="ACE.II.Ab", y= "MASR.Ab") + 
  xlim(1,6)+
  ylim(3,8)+
  scale_color_manual("Group:", values = c(Control = "#9c9c9c", 
                                          Mild = "#5fb862", Severe = "#38c3e1", oxygen = "#1657e1"), labels=c(Control = "control", Mild = "mild", Severe ="severe", oxygen ="oxygen")) + 
  scale_fill_manual("Group:", values = c(Control = "#9c9c9c", 
                                         Mild = "#5fb862", Severe = "#38c3e1", oxygen = "#1657e1"), labels=c(Control = "control", Mild = "mild", Severe ="severe", oxygen ="oxygen")) + 
  geom_smooth(method="lm", label.x = 9, se = FALSE) + theme_classic(base_size =8) +
  theme(legend.position = "bottom") +
  #se a analise de residuo funcionar entao trocar o se = TRUE
  stat_cor(cor.coef.name = "rho", aes(color = Gene.Symbol), label.x = 1, label.y.npc = "top", size = 6, show.legend = FALSE) +
  theme(text = element_text(size = 30))  


#O boxplot mostra a mediana 

#Rho é para R de spearman
#e o p valeu represents the null hypothesis is = 0

#Add: you can choose among "density", "histogram", "boxplot","violin", "densigram"
p <- ggMarginal(p, type="density", groupColour = TRUE, groupFill = TRUE)

#vizualize the plot
p
################################

#AT1R.Ab x M5R.Ab
p <- ggplot(tableMLR, aes(x=AT1R.Ab,y=M5R.Ab,color=Gene.Symbol, fill=Gene.Symbol)) +
  geom_point(alpha=0.95) + 
  labs(x="AT1R.Ab", y= "M5R.Ab") + 
  xlim(2,6)+
  ylim(3,8)+
  scale_color_manual("Group:", values = c(Control = "#9c9c9c", 
                                          Mild = "#5fb862", Severe = "#38c3e1", oxygen = "#1657e1"), labels=c(Control = "control", Mild = "mild", Severe ="severe", oxygen ="oxygen")) + 
  scale_fill_manual("Group:", values = c(Control = "#9c9c9c", 
                                         Mild = "#5fb862", Severe = "#38c3e1", oxygen = "#1657e1"), labels=c(Control = "control", Mild = "mild", Severe ="severe", oxygen ="oxygen")) + 
  geom_smooth(method="lm", label.x = 9, se = FALSE) + theme_classic(base_size =8) +
  theme(legend.position = "bottom") +
  #se a analise de residuo funcionar entao trocar o se = TRUE
  stat_cor(cor.coef.name = "rho", aes(color = Gene.Symbol), label.x = 2, label.y.npc = "top", size = 6, show.legend = FALSE) +
  theme(text = element_text(size = 30))  


#O boxplot mostra a mediana 

#Rho é para R de spearman
#e o p valeu represents the null hypothesis is = 0

#Add: you can choose among "density", "histogram", "boxplot","violin", "densigram"
p <- ggMarginal(p, type="density", groupColour = TRUE, groupFill = TRUE)

#vizualize the plot
p

##############################

#M5R.Ab x MASR.Ab
p <- ggplot(tableMLR, aes(x=MASR.Ab,y=M5R.Ab,color=Gene.Symbol, fill=Gene.Symbol)) +
  geom_point(alpha=0.95) + 
  labs(x="MASR.Ab", y= "M5R.Ab") + 
  xlim(3,7)+
  ylim(2,8)+
  scale_color_manual("Group:", values = c(Control = "#9c9c9c", 
                                          Mild = "#5fb862", Severe = "#38c3e1", oxygen = "#1657e1"), labels=c(Control = "control", Mild = "mild", Severe ="severe", oxygen ="oxygen")) + 
  scale_fill_manual("Group:", values = c(Control = "#9c9c9c", 
                                         Mild = "#5fb862", Severe = "#38c3e1", oxygen = "#1657e1"), labels=c(Control = "control", Mild = "mild", Severe ="severe", oxygen ="oxygen")) + 
  geom_smooth(method="lm", label.x = 9, se = FALSE) + theme_classic(base_size =8) +
  theme(legend.position = "bottom") +
  #se a analise de residuo funcionar entao trocar o se = TRUE
  stat_cor(cor.coef.name = "rho", aes(color = Gene.Symbol), label.x = 3, label.y.npc = "top", size = 6, show.legend = FALSE) +
  theme(text = element_text(size = 30))  


#O boxplot mostra a mediana 

#Rho é para R de spearman
#e o p valeu represents the null hypothesis is = 0

#Add: you can choose among "density", "histogram", "boxplot","violin", "densigram"
p <- ggMarginal(p, type="density", groupColour = TRUE, groupFill = TRUE)

#vizualize the plot
p

###############################3

#C5aR.Ab x PAR1.R
p <- ggplot(tableMLR, aes(x=PAR1.Ab,y=C5a.R.Ab,color=Gene.Symbol, fill=Gene.Symbol)) +
  geom_point(alpha=0.95) + 
  labs(x="PAR1.Ab", y= "C5a.R.Ab") + 
  xlim(2,6)+
  ylim(2,8)+
  scale_color_manual("Group:", values = c(Control = "#9c9c9c", 
                                          Mild = "#5fb862", Severe = "#38c3e1", oxygen = "#1657e1"), labels=c(Control = "control", Mild = "mild", Severe ="severe", oxygen ="oxygen")) + 
  scale_fill_manual("Group:", values = c(Control = "#9c9c9c", 
                                         Mild = "#5fb862", Severe = "#38c3e1", oxygen = "#1657e1"), labels=c(Control = "control", Mild = "mild", Severe ="severe", oxygen ="oxygen")) + 
  geom_smooth(method="lm", label.x = 9, se = FALSE) + theme_classic(base_size =8) +
  theme(legend.position = "bottom") +
  #se a analise de residuo funcionar entao trocar o se = TRUE
  stat_cor(cor.coef.name = "rho", aes(color = Gene.Symbol), label.x = 2, label.y.npc = "top", size = 6, show.legend = FALSE) +
  theme(text = element_text(size = 30))  


#O boxplot mostra a mediana 

#Rho é para R de spearman
#e o p valeu represents the null hypothesis is = 0

#Add: you can choose among "density", "histogram", "boxplot","violin", "densigram"
p <- ggMarginal(p, type="density", groupColour = TRUE, groupFill = TRUE)

#vizualize the plot
p

######################################

#M5R.Ab x C5a.R.Ab
p <- ggplot(tableMLR, aes(x=M5R.Ab,y=C5a.R.Ab,color=Gene.Symbol, fill=Gene.Symbol)) +
  geom_point(alpha=0.95) + 
  labs(x="M5R.Ab", y= "C5a.R.Ab") + 
  xlim(2,7)+
  ylim(3,8)+
  scale_color_manual("Group:", values = c(Control = "#9c9c9c", 
                                          Mild = "#5fb862", Severe = "#38c3e1", oxygen = "#1657e1"), labels=c(Control = "control", Mild = "mild", Severe ="severe", oxygen ="oxygen")) + 
  scale_fill_manual("Group:", values = c(Control = "#9c9c9c", 
                                         Mild = "#5fb862", Severe = "#38c3e1", oxygen = "#1657e1"), labels=c(Control = "control", Mild = "mild", Severe ="severe", oxygen ="oxygen")) + 
  geom_smooth(method="lm", label.x = 9, se = FALSE) + theme_classic(base_size =8) +
  theme(legend.position = "bottom") +
  #se a analise de residuo funcionar entao trocar o se = TRUE
  stat_cor(cor.coef.name = "rho", aes(color = Gene.Symbol), label.x = 2, label.y.npc = "top", size = 6, show.legend = FALSE) +
  theme(text = element_text(size = 30))  


#O boxplot mostra a mediana 

#Rho é para R de spearman
#e o p valeu represents the null hypothesis is = 0

#Add: you can choose among "density", "histogram", "boxplot","violin", "densigram"
p <- ggMarginal(p, type="density", groupColour = TRUE, groupFill = TRUE)

#vizualize the plot
p

##############################

#CXCR3.Ab x M3R.Ab
p <- ggplot(tableMLR, aes(x=M3R.Ab,y=CXCR3.Ab,color=Gene.Symbol, fill=Gene.Symbol)) +
  geom_point(alpha=0.95) + 
  labs(x="M3R.Ab", y= "CXCR3.Ab") + 
  xlim(1,6)+
  ylim(3,8)+
  scale_color_manual("Group:", values = c(Control = "#9c9c9c", 
                                          Mild = "#5fb862", Severe = "#38c3e1", oxygen = "#1657e1"), labels=c(Control = "control", Mild = "mild", Severe ="severe", oxygen ="oxygen")) + 
  scale_fill_manual("Group:", values = c(Control = "#9c9c9c", 
                                         Mild = "#5fb862", Severe = "#38c3e1", oxygen = "#1657e1"), labels=c(Control = "control", Mild = "mild", Severe ="severe", oxygen ="oxygen")) + 
  geom_smooth(method="lm", label.x = 9, se = TRUE) + theme_classic(base_size =8) +
  theme(legend.position = "bottom") +
  #se a analise de residuo funcionar entao trocar o se = TRUE
  stat_cor(cor.coef.name = "rho", aes(color = Gene.Symbol), label.x = 1, label.y.npc = "top", size = 6, show.legend = FALSE) +
  theme(text = element_text(size = 30))  


#O boxplot mostra a mediana 

#Rho é para R de spearman
#e o p valeu represents the null hypothesis is = 0

#Add: you can choose among "density", "histogram", "boxplot","violin", "densigram"
p <- ggMarginal(p, type="density", groupColour = TRUE, groupFill = TRUE)

#vizualize the plot
p

####################################

#CXCR3.Ab x M4R.Ab
p <- ggplot(tableMLR, aes(x=M4R.Ab,y=CXCR3.Ab,color=Gene.Symbol, fill=Gene.Symbol)) +
  geom_point(alpha=0.95) + 
  labs(x="M4R.Ab", y= "CXCR3.Ab") + 
  xlim(3,6)+
  ylim(3,8)+
  scale_color_manual("Group:", values = c(Control = "#9c9c9c", 
                                          Mild = "#5fb862", Severe = "#38c3e1", oxygen = "#1657e1"), labels=c(Control = "control", Mild = "mild", Severe ="severe", oxygen ="oxygen")) + 
  scale_fill_manual("Group:", values = c(Control = "#9c9c9c", 
                                         Mild = "#5fb862", Severe = "#38c3e1", oxygen = "#1657e1"), labels=c(Control = "control", Mild = "mild", Severe ="severe", oxygen ="oxygen")) + 
  geom_smooth(method="lm", label.x = 9, se = TRUE) + theme_classic(base_size =8) +
  theme(legend.position = "bottom") +
  #se a analise de residuo funcionar entao trocar o se = TRUE
  stat_cor(cor.coef.name = "rho", aes(color = Gene.Symbol), label.x = 3, label.y.npc = "top", size = 6, show.legend = FALSE) +
  theme(text = element_text(size = 30))  


#O boxplot mostra a mediana 

#Rho é para R de spearman
#e o p valeu represents the null hypothesis is = 0

#Add: you can choose among "density", "histogram", "boxplot","violin", "densigram"
p <- ggMarginal(p, type="density", groupColour = TRUE, groupFill = TRUE)

#vizualize the plot
p

#############################

#Para analise do residuo. 
fit=lm(CXCR3.Ab~AT2R.Ab+Gene.Symbol, data = tableMLR)
summary(fit)
plot(fit)

#Ver se o residuo esta adequado, se nao, nao usar o intervalo de confianca para a reta (a sombra ao redor da reta) 
#https://www.originlab.com/doc/origin-help/residual-plot-analysis

# http://www.sthda.com/english/articles/24-ggpubr-publication-ready-plots/78-perfect-scatter-plots-with-correlation-and-marginal-histograms/

