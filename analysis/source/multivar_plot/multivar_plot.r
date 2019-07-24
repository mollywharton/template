setwd("~/GSlab/template/analysis")

library(yaml)
CONFIG <- yaml.load_file("config_global.yaml")

#read in file of draws

draws<-read.csv(sprintf("%s/multivar_draw.csv", CONFIG$build$multivar_draw),header=TRUE)


#ggplot2

library(ggplot2)

#plot data
ggplot(data=draws,aes(x = V1, y = V2))+ geom_point(alpha = 0.5) +
  labs(x = "x", y = "y", title = "Multivariate Normal Distribution")

ggsave(sprintf("%s/multivar_plot.jpeg", CONFIG$release$multivar_plot))