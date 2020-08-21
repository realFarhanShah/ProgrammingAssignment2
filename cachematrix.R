
##I am just using the code from the mean example and calculating matrix inverse instead of mean.

makeCacheMatrix <- function(x = matrix()) {
	inverseM <- NULL
	set <- function(y){
		x <<- y
		inverseM <<- NULL
	}
	get <- function() x
      setinverse <- function(solve) inverseM <<- solve
      getinverse <- function() inverseM 
      list(set = set, get = get,
           setinverse = setinverse,
           getinverse = getinverse)
}


cacheSolve <- function(x, ...) {

        inverseM <- x$getinverse()
        if(!is.null(inverseM)) {
                message("getting cached data")
                return(inverseM)
        }
        data <- x$get()
        inverseM <- solve(data, ...)
        x$setinverse(inverseM)
        inverseM
}

