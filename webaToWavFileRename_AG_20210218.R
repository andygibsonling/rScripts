# This script:
# renames the extension on a bunch of soundfiles downloaded from gorilla, from .weba to .wav
# Andy Gibson 20210218

# Change log:
# 20210218 hacked from script gorillaProcessData20210118

library(tidyverse)
library(stringi)


# ####################
# ######## weba to wav rename
# ####################

# get the directory for all the soundfiles

# choose what version of your data you're working on and set working directory to there. Making a variable for this: fileDir

vsn <- '32'
fileDir = paste("/Users/mq20196878/Macquarie University/Australian Voices - CSCD/WavsTextgrids/GorillaV",vsn,'/',sep='')
setwd(fileDir)

sndDir = paste(fileDir,'uploads',sep="")
sndDir
# make a list of all soundfiles as downloaded
lst <- list.files(sndDir)


# let's rename all the .weba files in the uploads folder to .wav
# using file.rename,  it can rename them all with a vector- 
# so first make a new list with the change you want

newlst <- gsub('.weba','.wav',lst)

# rename the files from what they are to what you want.

# navigate to sndDir
setwd(sndDir)

file.rename(lst,newlst)

