library(data.table)
library(tidyverse)
#q2
install.packages("nycflights13")
library(nycflights13)
mean(flights$distance,na.rm = TRUE)
#q3
data<-cars

#q4
x<-1:25
y<-25:1
z=x*y
z[5]

#q5
median(iris$Petal.Width,na.rm=TRUE)

#q18
data<-subset(flights,origin=="JFK")
mean(data$distance,na.rm=TRUE)

#q19
data<-subset(flights,month==6)
table(data$dest) %>% sort(decreasing=FALSE)

#q20
#What was the average number of seats on the plains that left from NYC on July 4? 
#(The "seats" and "engines" data comes from the planes table; Warning: Be careful with your joins!)
d1<-flights
d2<-planes
#merge on tailnum
data <- right_join(d1,d2,by="tailnum")
data<-subset(data,month==7 & day ==4)
data<-subset(data,origin=="JFK"|origin=="EWR"|origin=="LGA")
mean(data$seats,na.rm=TRUE)
#q22
summary(flights)

#q24
t.test(Sepal.Width ~ Species, 
       iris, 
       Species %in% c("versicolor", "virginica"), 
       var.equal = T)
#q25
dataframe=as.data.frame(flights)
summary(dataframe)
summarize(dataframe)

#q26
grepl("neeraj",c("dheeraj","Neeraj","neeraj","is","NEERAJ"))

#q27
table<-data.table(foo=c("A","B","A","A","B","A"),bar=1:6)
aggregate(bar~foo,table,mean)


#q28
paste(1:3,c("x","y","z"),sep="")
