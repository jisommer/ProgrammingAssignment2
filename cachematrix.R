## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# set the value of the matrix
# get the value of the matrix
# set the inverse of the matrix
# get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
    m<-NULL
    set<-function(y){
      x<<-y
      m<<-NULL
    }
    get<-function() x
    setmatrix<-function(solve) m<<- solve
    getmatrix<-function() m
    list(set=set, get=get,
         setmatrix=setmatrix,
         getmatrix=getmatrix)
  }

## Write a short comment describing this function
# first checks to see if the inverse has already been calculated
# If so, it get the inverse from the cache and skips the computation
# Otherwise calculate the inverse and set it in the cache via the setmatrix function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    matrix<-x$get()
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
  }
## test run
# a<-makeCacheMatrix()
# a$set(matrix(c(1,5,3,6),2,2))
# cacheSolve(a)

