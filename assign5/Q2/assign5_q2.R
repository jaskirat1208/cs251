flowers <- read.csv(file="~/Desktop/cs\ 251/assign5/Q2/assign5_q2.csv")
paste("Mean of sepal Lengths: ",mean(flowers$Sepal.Length),"\n")
paste("Mean of sepal Widths : ",mean(flowers$Sepal.Width),"\n")
paste("Mean of petal Lengths: ",mean(flowers$Petal.Length),"\n")
paste("Mean of petal Widths : ",mean(flowers$Petal.Width),"\n")

table(flowers$Species,flowers$Good)