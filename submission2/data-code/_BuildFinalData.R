# Meta --------------------------------------------------------------------
# Author:        Megan Zheng
# Date Created:  1/28/2025
# Date Edited:   1/28/2025
# Notes:         Creating a Script to run all of the files needed



# Preliminaries -----------------------------------------------------------
# loading the packages
if (!require("pacman")) install.packages("pacman")
pacman::p_load(tidyverse, ggplot2, dplyr, lubridate, stringr, readxl, data.table, gdata)

source("submission2/data-code/1_Plan_Data.R")
source("submission2/data-code/2_Service_Areas.R")