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