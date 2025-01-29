# Preliminaries -----------------------------------------------------------
# loading the packages
if (!require("pacman")) install.packages("pacman")
pacman::p_load(tidyverse, ggplot2, dplyr, lubridate, stringr, readxl, data.table, gdata)

full.ma.data = readRDS('data/output/plan_data.rds')
contract.service.area = readRDS('data/output/contract_service_area.rds')

# Create objects for markdown
plan.type.table = full.ma.data %>% group_by(plan_type) %>% count() %>% arrange(-n)
tot.obs = as.numeric(count(full.ma.data %>% ungroup()))
plan.type.year1 = full.ma.data %>% group_by(plan_type) %>% count() %>% arrange(-n) %>% filter(plan_type!="NA")

final.plans = full.ma.data %>%
    filter(snp == "No" & eghp == "No" &
      (planid < 800 | planid >=900))
plan.type.year2 = final.plans %>% group_by(plan_type) %>% count() %>% arrange(-n)
plan.type.enroll = final.plans %>% group_by(plan_type) %>% summarize(n=n(), enrollment=mean(enrollment, na.rm=True)) %>% 

rm(list=c("full.ma.data", "contract.service.area", "final.data"))
save.image("submission1/Hw1_workspace.Rdata")



## Provide a table of count plans under each plan type. 
plan_type_count <- plan.data %>%
  group_by(plan_type) %>%
  summarize(plan_count = n(), .groups = "drop")

  print(plan_type_count)