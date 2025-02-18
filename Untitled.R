library(tidyverse)
library(data.table)
library(readxl)
read_csv(~repos/data-analysis-replication/CPDS-1960-2014-reduced.csv)
library(readr)
CPDS_1960_2014_reduced <- read_csv("CPDS-1960-2014-reduced.csv")
View(CPDS_1960_2014_reduced)


a<-array(1:90, dim = c(5,6,3))
class(a)
dim(a)
attr(a)
attributes(a)

#random numbers drawn from a normal distribution with a mean of 0 and sd of 0
#https://www.rdocumentation.org/packages/compositions/versions/2.0-8/topics/rnorm
rand_array <- array(rnorm(90), dim = c(5,6,3))
rand_array

m <- matrix(1:30, nrow = 5, ncol = 6)
m
m[2:4, 3:5]

a[1,,1] #first row, every column, first dimension
a[1,1,] #first value from each of the three dimensions

s <- c ("this", "is", "a", "vector", "of", "strings")
s
m <- matrix(data=1:40, nrow=5, ncol=8)
m
b <- FALSE
l <- list(s, m, b)
l <- list(string = s, matrix = m, bool =b)
attributes(l)
l[["matrix"]]

df <- data.frame(
  firstName = c("Rick", "Negan", "Dwight", "Maggie", "Michonne"),
  community = c("Alexandria", "Saviors", "Saviors", "Hilltop", "Alexandria"),
  sex = c("M", "M", "M", "F", "F"),
  age = c(42, 40, 33, 28, 31))

df

#BASE R
f <- "~/Repos/data-analysis-replication/CPDS-1960-2014-reduced.csv"
f
d1 <- read.csv(f, header = TRUE)
glimpse(d1)


f <- "/Users/yesenialanda/Repos/data-analysis-replication/CPDS-1960-2014-reduced.txt"
d2 <- read.delim(f, header =TRUE, sep = "\t")
getwd()
d2

f <- "/Users/yesenialanda/Repos/data-analysis-replication/CPDS-1960-2014-reduced.xlsx"
d6 <- read_excel(f, sheet = 1, col_names = TRUE)
glimpse(d6)
#decimal points get truncated when saving from excel to csv

?read_csv#_ does not automatically convert strings to factors, also does data as a data frame aka a different from of a tibble, will read as df when pulling out
?read.csv #converts strings to factors, maps integers to character strings, will produce a vector if you pull out columen

boxplot(log(d$Body_mass_female_mean))
stripchart(log(d$Body_mass_female_mean),
           method = "jitter",
           col = "blue",
           vertical = TRUE,
           add = TRUE)
