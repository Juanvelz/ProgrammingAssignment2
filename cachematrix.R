## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function: makin the matrix

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  get <- function() {x}
  setInverse <- function(inversecalculada){inverse<<-inversecalculada}
  getInverse <- function() {inverse}
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

## Write a short comment describing this function: catching the matrix

cacheSolve <- function(x, ...) {
  inverse <- x$getInverse()
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  data <- x$get()
  inverse <- solve(data, ...)
  x$setInverse(inverse)
  inverse ## Return a matrix that is the inverse of 'x'
}

# time to get the matrix

x <- makeCacheMatrix(matrix(1:4, nrow = 2, ncol = 2))
x

# now we can cach the inverse of that matrix

cacheSolve(x)

