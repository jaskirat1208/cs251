data<-load("data.txt")
data
Mean<-mean(data1)
stddev<-sd(data1)
Median<-median(data1)
Quantile<-quantile(data1)
cat("Data 1:\n \t")

cat("Mean: ",Mean,"\n")

cat("\tStddev: ",stddev,"\n")

cat("\tMedian: ",Median,"\n")

cat("\tQuantile: \n")
Quantile
Mean<-mean(data2)
stddev<-sd(data2)
Median<-median(data2)
Quantile<-quantile(data2)
cat("Data 2:\n \t")

cat("Mean: ",Mean,"\n")

cat("\tStddev: ",stddev,"\n")

cat("\tMedian: ",Median,"\n")

cat("\tQuantile: \n")
Quantile
Mean<-mean(data3)
stddev<-sd(data3)
Median<-median(data3)
Quantile<-quantile(data3)
cat("Data 3:\n \t")

cat("Mean: ",Mean,"\n")

cat("\tStddev: ",stddev,"\n")

cat("\tMedian: ",Median,"\n")

cat("\tQuantile: \n")
Quantile

v=1:10000
plot(density(data1))
plot(density(data2))
plot(density(data3))