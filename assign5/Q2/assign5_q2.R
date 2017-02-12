flowers <- read.csv(file="~/Desktop/cs\ 251/assign5/Q2/assign5_q2.csv")
cat("Mean of sepal Lengths: ",mean(flowers$Sepal.Length),"\n")
cat("Mean of sepal Widths : ",mean(flowers$Sepal.Width),"\n")
cat("Mean of petal Lengths: ",mean(flowers$Petal.Length),"\n")
cat("Mean of petal Widths : ",mean(flowers$Petal.Width),"\n")
cat("Contingency table: ")
table(flowers$Species,flowers$Good)

cat("Petal length vs species :\n")
#table(c(mean(flowers$Sepal.Length[flowers$Good=='good']),mean(flowers$Sepal.Width)))
# mean(flowers$Sepal.Length[flowers$Good=='good'])
head<-c('Petal.Length:','Petal.Width:','Sepal.Length:','Sepal.Width:');
# table(head=head)
#//cat ("virginica:\n")
#cat"	Petal length: "
data1<-c(mean(flowers$Petal.Length[flowers$Species=='virginica']),mean(flowers$Petal.Width[flowers$Species=='virginica']),mean(flowers$Sepal.Length[flowers$Species=='virginica']),mean(flowers$Sepal.Width[flowers$Species=='virginica']))

data2<-c(mean(flowers$Petal.Length[flowers$Species=='setosa']),mean(flowers$Petal.Width[flowers$Species=='setosa']),mean(flowers$Sepal.Length[flowers$Species=='setosa']),mean(flowers$Sepal.Width[flowers$Species=='setosa']))

data3<-c(mean(flowers$Petal.Length[flowers$Species=='versicolor']),mean(flowers$Petal.Width[flowers$Species=='versicolor']),mean(flowers$Sepal.Length[flowers$Species=='versicolor']),mean(flowers$Sepal.Width[flowers$Species=='versicolor']))
# cat(data1,'\n')
# cat(data2,'\n')
# cat(data3,'\n')
# data<-merge.default(data1,data2,data3)
# data1<-t(data1)
Data<-matrix(c(t(data1),t(data2),t(data3)),nrow=4)
colnames(Data) = c('Virginica','Setosa','Versicolor')
rownames(Data) = head
as.table((Data))
good1<-c(mean(flowers$Petal.Length[flowers$Good=='good']),mean(flowers$Petal.Width[flowers$Good=='good']),mean(flowers$Sepal.Length[flowers$Good=='good']),mean(flowers$Sepal.Width[flowers$Good=='good']))

good2<-c(mean(flowers$Petal.Length[flowers$Good=='medium']),mean(flowers$Petal.Width[flowers$Good=='medium']),mean(flowers$Sepal.Length[flowers$Good=='medium']),mean(flowers$Sepal.Width[flowers$Good=='medium']))

good3<-c(mean(flowers$Petal.Length[flowers$Good=='bad']),mean(flowers$Petal.Width[flowers$Good=='bad']),mean(flowers$Sepal.Length[flowers$Good=='bad']),mean(flowers$Sepal.Width[flowers$good=='bad']))
# cat(data1,'\n')
# cat(data2,'\n')
# cat(data3,'\n')
# data<-merge.default(data1,data2,data3)
# data1<-t(data1)

cat("-------------------------------------------------------------\n")
good3[4]<-0.00
Data_GOOD<-matrix(c(t(good1),t(good2),t(good3)),nrow=4)
colnames(Data_GOOD) = c('Good','Medium','Bad')
rownames(Data_GOOD) = head
as.table((Data_GOOD))
barplot(table(flowers$Species,flowers$Good))