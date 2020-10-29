#  Program: readHTMLTable.R
#  Author:  RJ Podeschi
#
#  Date:    October 29, 2020
#
#  Purpose: An example R script on reading in an HTML table and assigning to a data frame


library(XML)
library(RCurl)

url <- "https://faculty.chicagobooth.edu/george.wu/research/marathon/marathon_names.htm"

urldata <- getURL(url)
marathons <- readHTMLTable(urldata, 
                      stringsAsFactors = FALSE)