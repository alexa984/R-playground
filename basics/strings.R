str1 <- 'Hello world!'
str2 <- 'R is fun'

str3 <- paste(str1, str2) # concatenates
print(str3)

nchar(str3) # number of characters

print(toupper(str1))
print(str1) # value of str1 remains the same


str4 = substr(str3, 14, 21)
print(str4)