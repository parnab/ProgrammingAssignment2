## Given an Invertile matrix the following function calculates the inverse of 
## the matrix and caches the value

makeCacheMatrix <- function(x = matrix()) {
  mat_inv <<- solve(x)
  mat_inv
    
}


## The following function calculates the inverse of an invertile matrix. The 
## function takes advantage of already calculated cache value of the inverted 
## matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        if(!is.null(mat_inv)) {
          message("getting cached data")
          return(mat_inv)
        }
        mat_inv=makeCacheMatrix(x)
        mat_inv
}
