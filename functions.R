sendTestData <- function(){
  response = jsonlite::fromJSON('{"class" : true, "prob":0.90}')
  return(response)
}