## The two functions given here are used to create a matrix and to find the inverse
## of the same matrix. The first function returns a list with the matrix and its inverse
## and the second returns the inverse value if it exists or finds it if it is NULL.

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


## This function can be used to calculate the inverse of required matrix with the input being the list from previous function containing the matrix.

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

