# This scripts demonstrates coupleof examples of IO functions.

myData <- read.table(file.choose())

# Read from Connection
con <- url("https://www.wikipedia.org/")
wikiHTML <- readLines(con)
head(wikiHTML)
close(con)