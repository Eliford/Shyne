#Function to convert BSV from normal scale to log scale and vice-versa
#' @param x a numeric vector of variance on log scale or coefficient of variation (%CV) on normal scale 
#' which are to be converted to %CV or OMEGA values respectively
#' 
variance_conversion<-function(x, to="log"){
  if(to=="log"){
    var<-log(x^2+1)
    return(var)
  } else{
    if(to=="normal"){
      BSV<-sqrt(exp(x)-1)
      return(BSV)
    } else{
      stop("The argument `to` takes either `log` OR `normal`")
    }
  }
}

#Example
#variance_conversion(0.03883699, to = "noral")