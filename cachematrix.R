
##This function sets the value of a matrix and its 
##inverse and gets the value of a matrix and its inverse. 

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


##This solves for the inverse of the above matrix. 
##If the inverse is already available in cache it 
##retrieves the inverse from cache. 

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
