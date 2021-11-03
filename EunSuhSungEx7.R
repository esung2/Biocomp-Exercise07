#Question 1
#head on bash returns the first 10 lines of a file
#Using file iris.csv
file <- read.table(file="iris.csv", header = FALSE, sep =",") #Need to make header = FALSE because bash considers the header as a line
FirstTenLines <- file[1:10,]
FirstTenLines

#Question 2
irisDF <- read.csv(file="iris.csv", header = TRUE, stringsAsFactors = FALSE)
#Print last 2 rows in the last 2 columns
irisDF[c(149,150),c(4,5)]
#Number of observations for each species
ncol(irisDF)
#Rows with Sepal.Width>3.5
irisDF[irisDF$Sepal.Width>3.5,]
#Making setosa.csv
setosa <- irisDF[irisDF$Species=="setosa",]
write.csv(setosa, file="setosa.csv", row.names = FALSE)
#Mean, max, min of Petal.Length for virginica
virginica <- irisDF[irisDF$Species=="virginica",]
MeanPetalLength <- mean(virginica$Petal.Length) #Checked, correct
MinPetalLength <- min(virginica$Petal.Length) #Checked, correct
MaxPetaLength <- max(virginica$Petal.Length) #Checked, correct