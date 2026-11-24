library(readr)
library(dplyr)
library(tidytext)
library(tidyverse)
library(ggplot2)
library(haven)
library(forcats)
library(psych)

data <- read_delim("raw_data.csv")

dim(data)
names(data)
summary(data)


# descriptive statistics
table(data$setting)


table(data$setting , data$production_status)
chisq.test(data$setting , data$production_status)