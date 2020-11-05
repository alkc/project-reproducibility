dependencies <- c("tidyverse", "corrplot", "caret", "lubridate", "here", "parallel", "ranger", "forcats")
missing_deps <- !(dependencies %in% installed.packages())

if(length(dependencies[missing_deps] > 0)) {
  message("Installing missing packages")
  install.packages(dependencies[missing_deps])
} else {
  message("All required packages installed.")
}

rm(dependencies, missing_deps)
