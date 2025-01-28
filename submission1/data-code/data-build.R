# Meta --------------------------------------------------------------------
# Author:        Megan Zheng
# Date Created:  1/28/2025
# Date Edited:   1/28/2025
# Notes:         R file to build Medicare Advantage dataset



# Preliminaries -----------------------------------------------------------
# loading the packages
if (!require("pacman")) install.packages("pacman")
pacman::p_load(tidyverse, ggplot2, dplyr, lubridate, stringr, readxl, data.table, gdata)

# Import Data
  enroll.info=read_csv("data/input/CPSC_Enrollment_Info_2015_01.csv",
                       skip=1,
                       col_names = c("contractid","planid","ssa","fips","state","county","enrollment"),
                       col_types = cols(
                       contractid = col_character(),
                       planid = col_double(),
                       ssa = col_double(),
                       fips = col_double(),
                       state = col_character(),
                       county = col_character(),
                       enrollment = col_double()
                       ),na="*")