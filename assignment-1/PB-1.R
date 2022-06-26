install.packages("palmerpenguins")
library(palmerpenguins)
library(tidyverse)

# The data is now obtained in the form of a data frame, however, converting it to a tibble
# will make it easier to print (i.e., prints the first 10 rows while specifying its data type.) 
penguins <- as_tibble(penguins)
summary(penguins)
glimpse(penguins)
names(penguins)

# How many species, islands, and study years are included in our dataset? 
penguins %>%
  distinct(year)
# Not >>>> study_year <- nlevels(penguins$year) because they're numerical values not factors

# Handling Null Values 
# How many Nulls are present in the dataset? 

summary(penguins)
# penguins %>%
#   summarise(count = sum(is.na(sex)))
# 
# penguins %>%
#   summarise(count = sum(is.na(islands)))
# 
# lapply(penguins,function(x) { length(which(is.na(x)))})
# colSums(is.na(penguins))

# Removing rows with null values then checking
penguins <- na.omit(penguins)
colSums(is.na(penguins)) # Can be done in one step by setting the parameter na.rm = TRUE to remove nulls



