fibonaci <- function(a){
  var1 = 1
  var2 = 1
  print(var1)
  print(var2)
  for(x in 1:a){
    var3 = var1 + var2
    print(var3)
    var1 = var2
    var2 = var3
  }
}

fibonaci(5)

############

func1 <- function(a, b, c){
  return (a^2 + b^2 + c^2)
}

func1(1, 2, 3)

############

func2 <- function(a=1, b=2){
  JJ <- NULL
  JJ$a2 <- a^2
  JJ$b2 <- b^2
  
  JJ
}


m = matrix(1:12, nrow=4, byrow = TRUE)

apply(m, 1, func2)

apply(m, 1, FUN = function(x){sum(x^2)})