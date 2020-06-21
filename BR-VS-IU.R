setwd("C:\\Users\\AVIRAJ\\Downloads")
getwd()
rm(stats)
stat<- read.csv("P2-Demographic-Data.csv")
stat
nrow(stat)
ncol(stat)
head(stat)
tail(stat)
str(stat)
summary(stat)


head(stat)
stat[3,3]
stat$Internet.users
stat$Internet.users[2]
levels(stat$Income.Group)


stat[1:10,]
stat[c(4,100),]
stat$Birth.rate*stat$Internet.users
stat$MyCalc<- stat$Birth.rate*stat$Internet.users
stat$xyz  <-1:5
head(stat,n=10)
stat$xyz <- 1:6
head(stat)
stat$xyz<-NULL
stat$MyCalc<-NULL
head(stat)

stat[stat$Internet.users > 2,]
stat[stat$Country.Name=='Malta',]
stat[stat$Birth.rate>2 & stat$Internet.users>4,]

library(ggplot2)
qplot(data=stat,x=Internet.users)
qplot(data=stat,x=Income.Group,y=Birth.rate,size=I(3),colour=I('Blue'))
qplot(data=stat,x=Income.Group,y=Birth.rate,geom="boxplot")



qplot(data=stat,x=Internet.users,y=Birth.rate)
qplot(data=stat,x=Internet.users,y=Birth.rate,size=I(5),colour=Income.Group)
qplot(data=stat,x=Internet.users,y=Birth.rate,size=I(5),colour=Country.Name)

mydf<-data.frame(country=Countries_2012_Dataset,code=Codes_2012_Dataset,region=Regions_2012_Dataset )
head(mydf)

merged<-merge(stat,mydf,by.x='Country.Code',by.y ='code')
head(merged)
merged$Country<-NULL
str(merged)
tail(merged)


qplot(data=merged,x=Internet.users,y=Birth.rate,colour=region,size=I(5))
qplot(data=merged,x=Internet.users,y=Birth.rate,colour=region,size=I(5),shape=I(17))
qplot(data=merged,x=Internet.users,y=Birth.rate,colour=region,size=I(5),shape=I(18))
qplot(data=merged,x=Internet.users,y=Birth.rate,colour=region,size=I(5),shape=I(18),alpha=I(0.6))
qplot(data=merged,x=Internet.users,y=Birth.rate,colour=region,size=I(5),shape=I(18),alpha=0.8,main="BirthRate Vs InternetUsers")
