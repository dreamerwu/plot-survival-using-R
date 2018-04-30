library("survival")
library("ggplot2")
install.packages("survminer")
library("survminer")

data=read.delim("D:/demo/demo.txt",head=T,sep="\t")
ls(data)

fit=survfit(Surv(data$time,data$status)~Pyrimidine_score,data=data)
ggsurvplot(fit,data=data,pval=TRUE)









