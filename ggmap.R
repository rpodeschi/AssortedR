# Program: ggmap.R
#
# Date: 10/26/2020
#
# Purpose: To demonstrate how Google Cloud Platform API (GCP) works in R
#

# import tidyverse and ggmap packages
library(tidyverse)
library(ggmap)

# Reiger Google API Key for use with ggmap
register_google(key = "PutYourOwnKeyHere")

# Set working directory 
setwd("/home/rpodeschi/Dropbox/R-Projects/maps/data/")

# Let's look at the location of all the Chipotle stores
# Data Source: https://www.kaggle.com/jeffreybraun/chipotle-locations
stores <- read.csv("chipotle_stores.csv")

# Get Center of US Map
US_Map <- get_googlemap(center = c(-97,38), zoom = 4)
ggmap(US_Map)

ggmap(US_Map) +
  geom_point(data = stores,
             aes(x = longitude, y = latitude, color = "red"), 
             alpha = 0.5) +
  labs(title = "Chipotle Stores in U.S.", color = NULL) +
  guides(color = guide_legend(override.aes = list(size = 7)))

