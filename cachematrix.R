## Carol_Coutinho
#Function Assignment2

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
  set <- function(y) { #Here we set the value of the matrix
          x <<- y
          i <<- NULL
  }
  get <- function() x # Here the function get the matrix value
  setinverse <- function(inverse) i <<- inverse #Then the function set the inverse of the matrix
  getinverse <- function() i # Get the inverse of the matrix
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

# The cacheSolve is a function that return the inverse of the matrix that is set. 
cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if (!is.null(i)) {
          message("getting cached data")
          return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}

#Exemple: 
# You can try with your on matrix.

C <- matrix(c(2,9,3,4),2,2)
C_1 <- makeCacheMatrix(C)
cacheSolve(C_1)

cacheSolve(C_1) 
