## Put comments here that give an overall description of what your
## functions do

## Use this function to create a matrix of your choice(square preferably!!)

makeCacheMatrix <- function(x = matrix()) {
inv<-NULL
set<-function(y){
  x<<-y
  inv<<-NULL
}
get<-function() x
setinv<-function(inverse) inv<<-inverse
getinv<-function() inv
list(set=set,get=get,setinv=setinv,getinv=getinv)
}


## This function can be used to calculate the inverse of required matrix.

cacheSolve <- function(x, ...) {
       check<-x$getinv()
       if(!is.null(check))
       {
         message("getting cached data")
         return(check)
       }
       f<-x$get()
       inverse<-solve(f)
       x$setinv(inverse)
       inverse
}

