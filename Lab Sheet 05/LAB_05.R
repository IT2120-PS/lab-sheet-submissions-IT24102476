setwd("C:/Users/it24102476/Desktop/IT24102476")
getwd()

#1
Delivery_Times<-read.table("Exercise - Lab 05.txt",header = TRUE,sep=',')
fix(Delivery_Times)
attach(Delivery_Times)

names(Delivery_Times)<-c("X1")

attach(Delivery_Times)

hist(X1,main="Delivery_Minutes")

#2
histogram<-hist(X1,main="Delivery_Minutes",breaks = seq(20,70,length=10),
                right = FALSE)

#3
breaks<-round(histogram$breaks)
freq<-histogram$counts
mids<-histogram$mids
classes<-c()

for(i in 1:length(breaks)-1){
  classes[i]<-paste0("[",breaks[i], ",",breaks[i=1], ")")
}
cbind(Classes = classes,frequency=freq)
lines(mids,freq)

plot(mids,freq,type='l',main ="delivery minutes",ylab="frequency",
     xlab ="Delivery Minutes",ylim = c(0,max(freq)))

#4
cum.freq<-cumsum(freq)
new<-c()
for(i in 1:length(breaks)){
  if(i==1){
    new[i]=0
  }else{
    new[i]=cum.freq[i-1]
  }
}
plot(breaks,new,type = 'l',main="Delivery_Time",
     xlab ="delivery minutes",ylab ="Cumulative frequency",
     ylim =  c(0,max(cum.freq)) )

cbind(Upper = breaks,CumFreq=new)