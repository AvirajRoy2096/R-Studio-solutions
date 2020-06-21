setwd("C:\\Users\\AVIRAJ\\Downloads")
getwd()
new<-read.csv('P2-Section5-Homework-Data.csv')##CSV File read
head(new)
tail(new)
data1960=new[new$Year==1960,]##df1=1960 dataframe
data1960
data2013=new[new$Year==2013,]##df2=2013 dataframe
data2013
head(data1960)
head(data2013)
df3<-data.frame(Code=Country_Code,Life.Expectancy=Life_Expectancy_At_Birth_1960)
head(df3)
Full_1960<-merge(data1960,df3,by.x='Country.Code',by.y='Code')
head(Full_1960)##1960 Full data
df4<-data.frame(Code=Country_Code,Life.Expectancy=Life_Expectancy_At_Birth_2013)
head(df4)
Full_2013<-merge(data2013,df4,by.x='Country.Code',by.y='Code')
head(Full_2013)##2013 Full data

##Plotting the graphs
plot_1960<-qplot(data=Full_1960,main="1960-Life Expectancy Vs Fertility Rate",x=Fertility.Rate,y=Life.Expectancy,colour=Region,size=I(5),shapes=I(17),alpha=0.9)
plot_1960
plot_2013=qplot(data=Full_2013,main="2013-Life Expectancy Vs Fertility Rate",x=Fertility.Rate,y=Life.Expectancy,colour=Region,size=I(5),shapes=I(17),alpha=0.9)
plot_2013

##Comparison-1960 V/s 2013
#Conclusion- (Except Africa,most continents have experienced increase in life expectancy
# but decrease in Fertility rate)
#Outlier-Africa-Decrease in Life expectancy
#Hence we can infer that the economic changes has not been good in Africa.Moreover the economic conditions have worsened their.


