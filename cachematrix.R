## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix<-function(x=matrix()){ ##the function is over a matrix
        m <- NULL
        set <- function(y) {     ##set value matrix
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) m <<- inversematrx ##solve option will give me the inverse matrix
        getsolve <- function() m    ##gives me the inverse matrx
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)

}

cacheSolve <- function(x, ...) {
        m <- x$getsolve()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m
}



