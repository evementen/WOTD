setwd("~/Desktop")
getwd()
require(dplyr)

#read in a table, summarize etc
#English dictionary
EngWords = read.table("words.txt")
summary(EngWords)
names(EngWords)
str(EngWords)

#final code goes below here
#first pass:
wordlist = sample_n(EngWords, 1, replace=FALSE)
V1 = sample_n(EngWords,1, replace=FALSE)
CurrentDate = Sys.Date()
wordlist = cbind(V1, CurrentDate)
wordlist

#after first pass:
V1 = sample_n(EngWords,1, replace=FALSE)
CurrentDate = Sys.Date()
wordlist = rbind(wordlist, cbind(V1, CurrentDate))
wordlist

#view current list
wordlist

#clear current list
wordlist = NULL

#check that all are unique
unique(wordlist)
