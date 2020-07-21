## Carol_Coutinho
#Function Assignment2

#First function calculate the determinant of the matrix.
#If the Det is different of zero, the your matrix assume inverse.

makeCacheMatrix <- function(x = matrix()) {
  Det <- det(x)
  if (Det != 0){
    print("Your matrix can assume inverse, you can use cacheSolve function.")
  }
  else {
    print("Please, choose another matrix")
  }
}

#Please input your matrix here:

x <-  #matrix(c(5, 1, 0,
        #3,-1, 2,
        #4, 0,-1), nrow=3, byrow=TRUE) #Exemple

makeCacheMatrix(x)

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
 inverse <-  solve(x)%*%x
}

y <- cacheSolve(x)
