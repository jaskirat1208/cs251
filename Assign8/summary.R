d<-read.table("cum_normal.txt")
x<-data.frame(num=d)
#d$V1
A<-cut(d$V1,4)
D<-summary(A)
write(D,"summary_normal.txt")


d1<-read.table("$1")
x1<-data.frame(num=d1)
#d$V1
A1<-cut(d1$V1,4)
summary(A1)

