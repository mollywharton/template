library(yaml)
CONFIG <- yaml.load_file("config_global.yaml")

#Get simulation from a multivariate normal distribution function

library(MASS)

#MASS
#usage: mvrnorm(n = 1, mu, Sigma, tol = 1e-6, empirical = FALSE, EISPACK = FALSE)

#Set number, mean, and covariance
n<- 1000
m<-c(0,0)
s<- matrix(c(10,3,3,2),2)

#Make draws

draws<-mvrnorm(n, m, s, tol = 1e-6, empirical = FALSE, EISPACK = FALSE)


write.csv(draws, sprintf("%s/multivar_draw.csv", CONFIG$build$multivar_draw))
write.csv(draws, sprintf("%s/multivar_draw.csv", CONFIG$release$multivar_draw))
