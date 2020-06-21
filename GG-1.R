setwd("C:\\Users\\AVIRAJ\\Downloads")
getwd()
movie<-read.csv("P2-Movie-Ratings.csv")
head(movie)
colnames(movie)<-c("Film","Genre","CriticRatings","AudienceRatings","Budgetmillion","Year")
head(movie)

factor(movie$Year)
movie$Year<- factor(movie$Year)
summary(movie)
head(movie)


library(ggplot2)

ggplot(data=movie,aes(x=CriticRatings,y=AudienceRatings))+
      geom_point()
ggplot(data=movie,aes(x=CriticRatings,y=AudienceRatings,colour=Genre))+
  geom_point()
ggplot(data=movie,aes(x=CriticRatings,y=AudienceRatings,colour=Genre,size=Budgetmillion))+
  geom_point()
p<-ggplot(data=movie,aes(x=CriticRatings,y=AudienceRatings,colour=Genre,size=Budgetmillion))
p+geom_point()
p+geom_line()

p+geom_line()+geom_point()

p+geom_point(aes(size=CriticRatings))

p+geom_point(aes(colour=Budgetmillion))

p+geom_line(size=1)+geom_point()


r<-ggplot(data=movie,aes(x=CriticRatings,y=AudienceRatings))
r+geom_point

s<-ggplot(data=movie,aes(x=Budgetmillion))
s+geom_histogram(binwidth=8)

s+geom_histogram(binwidth=8,aes(fill=Genre),colour="Black")

s+geom_density(aes(fill=Genre),position="stack")

t<-ggplot(data=movie,aes(x=AudienceRatings))
t+geom_histogram(binwidth =10,fill="White",colour="Blue")

u<-ggplot(data=movie,aes(x=CriticRatings,y=AudienceRatings,colour=Genre))
u+geom_point()+geom_smooth(fill=NA)

u+geom_boxplot(size=1.2)

c<-ggplot(data=movie,aes(x=CriticRatings,y=AudienceRatings,colour=Genre))
c+geom_jitter()+geom_boxplot(size=1,alpha=0.5)


v<-ggplot(data=movie,aes(x=Budgetmillion))
v+geom_histogram(binwidth = 10,aes(fill="Genre"),colour="Black")+
  facet_grid(Genre~.,scales = "free")

w<-ggplot(data=movie,aes(x=CriticRatings,y=AudienceRatings),colour=Genre)
w+geom_point(aes(size=Budgetmillion))+
  facet_grid(Genre~Year)+
  geom_smooth(fill=NA)
w+geom_point()

k<--ggplot(data=movie,aes(x=CriticRatings,y=AudienceRatings),colour=Genre)
k+geom_histogram(binwidth =10,aes(fill=Genre),colour="Black")+
  coord_cartesian(ylim=c(0,50))
 