x <- c(1721,
       979,
       366,
       299,
       675,
       1456)

target <- 2020
library(tictoc)

tic()
x <- x[x <= target]
for(i in 1:length(x)){
  temp <- x[i] + x[-i]
  if(target %in% temp){
    out <- x[i] * x[-i][temp == target]
    break()
  }
}

out
toc()

rm(list=ls())
x <- as.numeric(unlist(read.table("~/Desktop/day1_data.txt",header = F)))
x <- as.numeric(unlist(x))
target <- 2020
tic()
x <- x[x <= target]
for(i in 1:length(x)){
  temp <- x[i] + x[-i]
  if(target %in% temp){
    print(i)
    out <- x[i] * x[-i][temp == target]
    break()
  }
}

out
toc()


rm(list=ls())
x <- as.numeric(unlist(read.table("~/Desktop/day1_data.txt",header = F)))
x <- as.numeric(unlist(x))
target <- 2020
tic()
for(i in 1:length(x)){
  temp <- x[i] + x[-i]
  if(!all(is.na(match((2020 - temp),x[-i])))){
    out <- prod(x[i],x[-i][which(!is.na(match((2020 - temp),x[-i])))])
    break()
  }
}
toc()
