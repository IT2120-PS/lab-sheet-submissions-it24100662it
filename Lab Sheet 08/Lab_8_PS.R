setwd("C:\\Users\\Hp\\Desktop\\IT24100662")
data<-read.table("Exercise - LaptopsWeights.txt",header = TRUE)
fix(data)
attach(data)
--01)
popmn <- mean(Weight.kg.)
popmn
popvar<-var(Weight.kg.)
popvar
sd(Weight.kg.)
--02)

samples <- c()
n <- c()

samples <- c()
n <- c()

for (i in 1:25) {
  s <- sample(Weight.kg.,6,replace=TRUE)
  samples <- cbind(samples,s)
  n <- c(n,paste('S',i))
}

colnames(samples) = n

s.means <- apply(samples,2,mean)
s.means
s.vars <-apply(samples,2,var)
s.sds   <- sqrt(s.vars) 
s.sds

samplemean <- mean(s.means)
samplevars <- var(s.vars)

popmn
samplemean

truevar = popvar/5
samplevars
--03)
# mean of sample means
samplemean <- mean(s.means)
samplemean

# std dev of sample means
sample.sd   <- sd(s.means) 
sample.sd

# theoretical variance of sample mean
truevar <- popvar/6 
truevar

# theoretical std dev
true.sd <- sqrt(truevar) 
true.sd
