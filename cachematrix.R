## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 n <- NULL
  setInv <- function(y) {
    x <<- y
    n <<- NULL
    
  }
  getInv <- function() x
  setInvMatrix <- function(inverse) n <<- inverse
  getInvMatrix <- function() n
  
  list(setInv=setInv, getInv=getInv, setInvMatrix=setInvMatrix, getInvMatrix=getInvMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        n <- x$getInv() 
  if(!is.null(n)){
    message("getting cached data")
    return(n)
  }
  dataInv <- x$getInv()
  n <- solve(dataInv, ...)
  x$setInvMatrix(n)
  n
}
