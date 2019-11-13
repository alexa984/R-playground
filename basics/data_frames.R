# We need data framews because we will usually manipulate data with table-like structure 
# but with different types for elements in columns.
# It is possible to present such data in list of lists but this is not useful because 
# manipulating such will be a trouble

# Data frame is a table in which each column contains values of
# one variable and each row contains set of values from each column
# data.frame(data)

v1 = c(1:5)
v2 = c('Jack', 'Morgan', 'Hoock', 'Adam', 'Valerie')
v3 = c(15, 25, 65, 145, 75)
data.frame(v1, v2, v3)

# columns in data frames should be the same type
# usualy the data in dataframes will come from csv-s and other external files

name = c("Anne", "Pete", "Frank", "Julia")
age = c(28, 30, 21, 35)
child = c(FALSE, TRUE, FALSE, TRUE)

people = data.frame(name, age, child)
# names are represented in dataframe as factor 
# Strings are by default represented as factors. 
# To supress such behaviour you can use stringsAsFactors = FALSE when creating the data frame
names(people) = c ("Name", "Age", "Child")

people[3, 2]  # get the age of Frank. same to use people[3, "age"]
people$age # gives vector of people' ages 
people [2] # returns new dataframe with only the age vector inside

height =  c(170, 190, 182, 165)
cbind(people, weight)  # add new column in the data frame

tom = data.frame("Tom", 37, FALSE, 183)
# rbind(people, tom)  # results in error

tom = data.frame(name="Tom", age=37, chilf=FALSE, height = 183)
rbind(people, tom)  # now it is fine

# sort dataframe by age of people(by default in increasing order, otherwise - use decreasing=TRUE argument in order function):
ranks = order(people$age) # returns the positions of people
people[ranks, ]  # returns sorted dataframe