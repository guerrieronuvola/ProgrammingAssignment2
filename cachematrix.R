## This function will cache potentially time-consuming matrix invertion.
## When called, it will create a matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {

}



## This function will check for any cached matrix invertion.
## If the inverse matrix has already been calculated, it will be retrieved
## from the cache, otherwise it will be calculated.


cacheSolve <- function(x, ...) {
	i <- xget$getinv()
	if (!is.null(i)) {
		print("Getting Inverse Matrix from cached data..."
		return (i)
	}
## Fetch the inverse matrix and verify if it's null: if not, return the cached matrix

	data <- x$get()
	i <- solve(data, ...)
	x$setinv(i)
	i
## Calculate the inverse matrix and return it
}
