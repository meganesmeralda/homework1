# Meta --------------------------------------------------------------------
# Author:        Megan Zheng
# Date Created:  1/28/2025
# Date Edited:   1/28/2025
# Notes:         R file to build Medicare Advantage dataset



# Preliminaries -----------------------------------------------------------
# loading the packages
if (!require("pacman")) install.packages("pacman")
pacman::p_load(tidyverse, ggplot2, dplyr, lubridate, stringr, readxl, data.table, gdata)

#source("submission1/")