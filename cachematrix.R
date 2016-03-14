## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  InvMat <- NULL
  set <- function(my) {
    xm <<- my
    InvMat <<- NULL
  }
  get <- function() xm
  setsolve <- function(mat=matrix())
  {mat2<- solve(mat); InvMat<<-mat2; InvMat }
  getsolve <- function() InvMat
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		
		
  xm <- fx$getsolve()
  if(!is.null(xm)) {
    message("getting cached Solve data")
    return(xm)
  }
  data <- fx$get()
  xm <- solve(data, ...)
  fx$setsolve(xm)
  xm
}
		

