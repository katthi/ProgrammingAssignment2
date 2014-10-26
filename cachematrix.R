## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## makeCacheMatrix is a function which caches or temporarily stores the value of the inverse.
makeCacheMatrix <- function(x = matrix()) {
m <- NULL ## Initialize the value of m to Null
y <- NULL ## Initialize the value of y to Null 
set  <- function(y){
                x <<- y  ## assign the value of y to x
                m <<- NULL ## assign Null to m
        }
        get  <- function() x  ## retrieves the matrix
        setinv  <- function(inverse) m  <<- inverse ## Sets the inverse
        getinv  <- function() m  ## retrieves the inverse of matrix
        list(set= set, get = get, 
             setinv = setinv, 
             getinv = getinv)  #calls and returns a list of methods 
}


## Write a short comment describing this function
## If the inverse of the matrix has already been calculated then the cachesolve should retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
        # Display matrix which is inverse of x
        m  <- x$getinv() ##
       if (!is.null(m)) {
                message("retrieve cached data")
                return(m)
        		}
        data  <- x$get()
        m  <- solve(data, ...)
        x$setinv(m)
        m
 
}
