# This scripts demonstrates coupleof examples of IO functions.

# Use this to find out more:
?read.table

# Check the location of your woriking directory:
getwd()

# Example: read test.txt

# 1. If file is in your working directory
myData <- read.table("test.txt")

# 2. If the file is located somewhere else
myData <- read.table("/home/myUserName/Documents/Dataset/test.text") # For Linux
myData <- read.table("C://user/myUserName/Documents/Dataset/test.text") # For Windows
myData <- read.table("/Users/myUserName/Dataset/test.text") # For Mac

# 3. This is neat way to import data, especially when you are working
# in the interactive session, though for scripts, using a fixed path
# is probably better
myData <- read.table(file.choose())

# Read from Connection
con <- url("https://www.wikipedia.org/")
wikiHTML <- readLines(con)
head(wikiHTML)
close(con)