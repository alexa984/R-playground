# initialization
# matrix(data, nrow, ncol, byrow, dimnames)
# data - input vector
# nrow - nuber of rows
# ncol - number of columns
# byrow - logical clue. If TRUE then the input vector elements are arranged by row
# dimname - the names assigned to the rows and columns

data = c(5:20)
m1 = matrix(data, 4, 4)

m2 = matrix(data, 4, 4, TRUE) # arrange numbers by row