# vectors

# 1. Logical
vtr1 = c(TRUE, FALSE)

# 2. Numeric
vtr2 = c(15, 85.67324, 543)

# 3. Integer
vtr3 = c(35L, 58L, 146L)

# 4. Complex
vtr4 = c(3+1i, 8+7i)

# 5. Charcter
vtr5 = c('hello', 'world')

# vector with values from different types are casted to one of them. Examples:
vtr6 = c('hello', 56)
class(vtr6) # everything is casted to characters

vtr7 = c(TRUE, 15L, 23.671)
class(vtr7) # everything is casted to numerics

vtr8 = c(5:30) # create a vector with values from 5 to 30
sum(vtr8) # sum of numbers 5 to 30

# naming a vector
remain <- c(11, 12, 11, 13)
suits <- c("spades", "hearts", "diamonds", "clubs")
names(remain) <- suits
# remain

# equivalent naming
remain <- c(spades=11, hearts=12, diamonds=11, clubs=13)
# str(remain)

# we can get values by names too
remain[1]
remain["spades"]

# single values are also represented as vectors with length 1
my_apples = 5
is.vector(my_apples)
length(my_apples)

# comparison is done element-wise
earnings = c(50, 100, 80)
expenses = c(80, 40, 60)
earnings > expenses # returns vector with logicals (true and false)

remain[c(4, 1)] # returns vector with 4-th and first value of remain
remain[c("clubs", "spades")] # same as above

remain[-1] # all but index 1 are returned

# subset using logical vector (like reduce)
remain[c(TRUE, FALSE, TRUE, TRUE)]
remain[c(TRUE, FALSE)] # equivalent to remain[c(TRUE, FALSE, TRUE, FALSE)]