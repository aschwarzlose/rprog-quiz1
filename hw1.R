path<-"C:\\Users\\schwaali\\Downloads\\rprog-data-quiz1_data"
setwd(path)
df<-read.csv("hw1_data.csv")
df[1:2,]
df[152:153,]
df[47,]

#long
bad<-is.na(df$Ozone)
mean(df$Ozone[!bad])
#short
mean(subset(df$Ozone,!is.na(df$Ozone)))

#long
q18<-subset(df,df$Ozone>31&df$Temp>90)
mean(q18$Solar.R)
#short
mean(subset(df$Solar.R,df$Ozone>31&df$Temp>90))

#long
q19<-subset(df,df$Month==6)
mean(q19$Temp)
#short
mean(subset(df$Temp,df$Month==6))

#long
q20a<-subset(df,df$Month==5)
q20b<-is.na(q20a$Ozone)
max(q20a$Ozone[!q20b])
#short
max(subset(subset(df$Ozone,df$Month==5),!is.na(subset(df$Ozone,df$Month==5))))

remove(list=ls())