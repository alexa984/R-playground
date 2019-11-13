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
matrix(1:6, nrow=2)

matrix(1:3, nrow = 2, ncol=3) # returns matrix 2x3 with duplicated values 1-3
matrix(1:4, nrwow=2, ncol =3 ) 
# returns matrix | 1 3 1 |
#                | 2 4 2 |
# gives warning because 6 is not dividable by 4

# binding vectors into matrix:
# cbind (column bind) takes two vectors and attaches them column to column to build a matrix
cbind(1:3, 1:3) # returns mtrix |1 1|
                #               |2 2|
                #               |3 3|
# rbind (row bind) takes two vectors and attaches them row under row to build a matrix
rbind(1:3, 1:3) # returns matrix | 1 2 3 |
                #                | 1 2 3 |

# naming a matrix with rownames() and colnames()
m <- matrix(1:6, byrow = TRUE, nrow=2, dimnames = list(
                                                        c("row1", "row2"),
                                                        c("col1", "col2", "col3")))

rownames(m) = c("r1", "r2", "r3")
colnames(m) = c("a", "b", "c", "d")

# m["r2", "c"]

# create matrix 3x4 with random numbers from 1-15
m = matrix(sample(1:15, 12), nrow=3)

# matrix arithmetic - standard, element-wise(even multiplication is element by element!)
# colSums(), rowSums()

the_fellowship = c(316, 557)
two_towers = c(343, 584)
return_king = c(378, 742)

lord_of_the_rings_matrix = rbind(the_fellowship, two_towers, return_king)
colnames(lord_of_the_rings_matrix) = c("US", "non-US")
rownames(lord_of_the_rings_matrix) = c("Fellowship", "Two Towers", "Return King")
