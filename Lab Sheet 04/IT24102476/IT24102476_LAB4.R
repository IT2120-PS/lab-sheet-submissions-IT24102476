setwd("C:/Users/it24102476/Desktop/IT24102476")
getwd()

branch_data<-read.table("Exercise.txt",header = TRUE,sep =",")
str(branch_data)
boxplot(branch_data$Sales_X1,main="Boxplot of Sales",ylab="Sales",
        outline = TRUE,outpch=8, horizontal=TRUE)

summary(branch_data$Advertising_X2)
IQR(branch_data$Advertising_X2)

find_outliers<-function(x){
  Q1<-quantile(x,0.25,na.rm=TRUE)
  Q3<-quantile(x,0.75,na.rm=TRUE)
  IQR_val<-Q3-Q1
  lower_bound<-Q1-1.15*IQR_val
  upper_bound<-Q3+1.15*IQR_val
  outliers<-x[x<lower_bound | x>upper_bound]
  return(outliers)
  }

outliers_years<- find_outliers(branch_data$Years_X3)
print("Outliers in Years:")
print(outliers_years)