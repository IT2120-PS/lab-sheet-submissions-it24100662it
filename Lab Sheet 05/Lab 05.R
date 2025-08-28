setwd("C:\\Users\\it24100662\\Desktop\\IT24100662")

data <- read.table("Data.txt", header = TRUE, sep = ",")
data
fix(data)
attach(data)

names(data) <- c("X1", "X2")
fix(data)
attach(data)

hist(X2, main = "Histogram for Number of Shareholders")

histogram <- hist(X2, main = "Histogram for Number of Shareholders", breaks = seq(130, 270, length = 8), right = FALSE)
?hist

breaks <- round(histogram$breaks)
breaks

freq <- histogram$counts
freq

mids <- histogram$mids
mids

classes<-c()

for(i in 1:length(breaks)-1){
  classes[i]<-paste0("[",breaks[i],",",breaks[i+1],")")
}
classes

cbind(Classes=classes,Frequency=freq)

lines(mids,freq)

plot(mids,freq,type='o',main="Frequency Polygon for Shareholders",xlab="Shareholders",ylab="Frequency",ylim=c(0,max(freq)))

cum.freq<-cumsum(freq)
new<-c()
for(i in 1:length(breaks)){
  if(i==1){
    new[i]=0
  }else{
    new[i]=cum.freq[i-1]
  }
  
}
plot(breaks,new,type='l',main="Cumulative Frequency Polygon for shareholders",xlab="shareholders",ylab="Cumulative Frequency",ylim=c(0,max(cum.freq)))
cbind(Upper=breaks,CumFreq=new)
