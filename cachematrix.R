## Put comments here that give an overall description of what your
## functions do
##This function creates a matrix object that can cache its inverse.
## Write a short comment describing this function
## sets the matrix, gets the matrix,sets the inverse of the matrix, gets the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  j <- NULL
  set <- function(y){
    x <<- y
    j <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) j <<- inverse
  getInverse <- function() j 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}


## Write a short comment describing this function
##This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
##If the inverse has already been calculated, then the cachesolve retrieves the inverse from the cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
          j <- x$getInverse()
  if(!is.null(j)){
  message("getting cached data")
  return(j)
  }
  data_solve <- x$get()
  j <- solve(data_solve,...)
  x$setInverse(j)
  j
}
