##Function to convert age into years

calculate_AgeYrs<-function(AGE,AGEUNIT){
  if(AGEUNIT=="weeks"){
    AGE=AGE/52
  }else{
    if(AGEUNIT=="months"){
      AGE=AGE/12
    }else{
      if(AGEUNIT=="days"){
        AGE=AGE/365
      }else{
        if(AGEUNIT=="years"){
          AGE=AGE
        }
      }
    }
  }
  return(AGE)
}