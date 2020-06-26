#Assignment_10

install.packages(dplyr)
library(dplyr)
library(tidyr)


notices <- read.csv("source/Eviction_Notice.csv", stringsAsFactors = FALSE)

notices <- notices[complete.cases(notices),]

View(notices)

notices <- notices %>%
  mutate(date = as.Date(File.Date, format = "%m/%d/%y")) %>%
  filter(format(date, "%Y") == "2017") %>%
  separate(Location, c("lat", "long"), ", ") %>%
  mutate(
    lat = as.numeric(gsub("\\(", "", lat)),
    long = as.numeric(gsub("\\)", "", long))
  )

View(notices)


notices <- read.csv("source/Eviction_Notice.csv", stringsAsFactors = FALSE)

notices <- notices[complete.cases(notices),]

notices <- notices %>%
  mutate(date = as.Date(File.Date, format = "%m/%d/20%y")) %>%
  filter(format(date, "%Y") == "2017") %>%
  separate(Location, c(NA, "B"), " ", extra = "merge")
  separate(Location, c("lat", "long"), ", ") %>%
  mutate(
    lat = as.numeric(gsub("\\(", "", lat)),
    long = as.numeric(gsub("\\)", "", long))
  )
  notices$lat
  notices$long
  is.numaric(notices$lat)
  
  View(notices)
  
  