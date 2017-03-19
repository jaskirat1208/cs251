d<-read.table("cum_uniform.txt")
x<-data.frame(num=d)
#d$V1
A<-cut(d$V1,4)
D<-summary(A)
D