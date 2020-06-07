# SOME INTRO

# checking for class of an object
x<-4L
class(x)
 #multiple classes? `character` class is the "lowest common denominator"
x <- c(4, "a", TRUE)
class(x)

# binding a matrix using x and y as columns
x <- c(1,3,5) ; y <- c(3, 2,10)
cbind(x, y)

# subsetting
x <- list(2, "a", "b", TRUE)
x[[2]]
x[2]

# basic operation
x <- 1:4 ; y <- 2:3
x+y
x-y
x*y
x/y

# more subset: 
x <- c(17, 14, 4, 5, 13, 12, 10)

# I want elements in x that are greater than 10 to be set to 4. How?
x[x>=11]<-4
x
x[x>10]==4
x

# Working with data

setwd("{Your working directory}/")  

#eg. I used this code from my PC
setwd("D:/OneDrive/John Hopkins Data Science/R Codes/For Github")
# careful about `/` and `\` in R ( I think R cannot read \ like windows)
# eg. "D:/R/folder" instead of "D:\R\folder" (if you just copy from windows)

# this is one way to calculate condition means: separating big data into smaller
# ones, there are of course more sufficient way, but this is to help understand
# how these codes work

# load data
practice1_data <- read.csv("practice1_data.csv")
# Eyeballing:
# numer of observations?
nrow(practice1_data)

# specific rows: I want to check observation 47 (47th row)
practice1_data[47,]
practice1_data[47,1]
# obj[r,c] extract row r and column c from obj, if empty meaning entire column or row


# initial analysis
# missing `Ozone` values? note Ozone is the 1st column in the data
x<-practice1_data[,1]
# check missing values, `bad` returns logical vector=T if x's value is NA
bad<-is.na(x)
# `!bad` will be the opposite of bad, a logical vector=T if x's value is non-NA
# we extract non-NA from x by:
x[!bad] 
# then get the mean, note if x has any missing value, mean(x) will also be NA
mean(x[!bad])

# basic ways to get conditional means, there are other ways as well, but let's 
# stick with the basic

# mean Ozone level if it's above 31 and temperature is above 90?
# one way, extract a smaller data set with the above criteria
z1 <-practice1_data[which(practice1_data$Ozone>31 & practice1_data$Temp>90), ]
mean(z1$Solar.R)

# similarly, mean temperature when it is June (month=6)?
z2 <-practice1_data[which(practice1_data$Month==6), ]
mean(z2$Temp)

# maximum ozone level when it is May?
z3 <-practice1_data[which(practice1_data$Month==5), ]
max(z3$Ozone, na.rm=TRUE) 
# we can modify min/max/mean... function to only calculate non-missing values