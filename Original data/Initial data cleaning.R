library(tidyverse)
library(scales)

# Set up default Likert labels
likert.agree.labels <- c("Strongly disagree (1)",
                         "(2)",
                         "(3)",
                         "(4)",
                         "(5)",
                         "(6)",
                         "Strongly agree (7)")
likert.important.labels <- c("Least important (1)",
                             "(2)",
                             "(3)",
                             "(4)",
                             "(5)",
                             "(6)",
                             "Most important (7)")
likert.skilled.labels <- c("No skill level (1)",
                           "(2)",
                           "(3)",
                           "(4)",
                           "(5)",
                           "(6)",
                           "Very skilled (7)")
likert.comfortable.labels <- c("Very uncomfortable (1)",
                               "(2)",
                               "(3)",
                               "(4)",
                               "(5)",
                               "(6)",
                               "Very comfortable (7)")
likert.closely.labels <- c("Not closely at all (1)",
                           "(2)",
                           "(3)",
                           "(4)",
                           "(5)",
                           "(6)",
                           "Very closely (7)")

# Both datasets have column names in the same order, one function renames both
# Make the column names more interpretable
col_rename <- function(x) {
  x %>%
    as.tibble() %>% 
    rename(location = 3,
           province = 4,
           city = 5,
           age = 6,
           education = 7,
           sex = 8,
           marriage.status = 9,
           job.type = 10,
           job.company.type = 11,
           party.member.status = 12,
           cyl.status = 13,
           income = 14, 
           hukou.status = 15,
           hukou.status.other = 16, 
           k1 = 17, 
           k2 = 18, 
           k3 = 19, 
           k4 = 20,
           k5 = 21, 
           k6 = 22, 
           k7 = 23, 
           k8 = 24, 
           k9 = 25, 
           p.pd1 = 26,
           p.pd2 = 27, 
           p.ic1 = 28, 
           p.ic2 = 29, 
           p.mf1 = 30, 
           p.mf2 = 31, 
           p.ua1 = 32, 
           p.ua2 = 33, 
           p.lo1 = 34, 
           p.lo2 = 35, 
           gp1 = 36, 
           gp2 = 37, 
           gp3 = 38, 
           ma1 = 39, 
           ma2 = 40,
           ma2.other = 41, 
           gm1 = 42, 
           gm2 = 43, 
           gm3 = 44,
           gm4 = 45, 
           gm5 = 46, 
           misc1 = 47, 
           misc2 = 48, 
           misc3 = 49, 
           misc4 = 50, 
           misc5 = 51, 
           misc6 = 52, 
           ts1 = 53,
           ts2 = 54, 
           ts3 = 55, 
           ts4 = 56, 
           track1 = 57, 
           track2 = 58, 
           track3 = 59, 
           track4 = 60, 
           track5 = 61, 
           track6 = 62,
           exp.group = 63,   
           etr1 = 65,
           etr2 = 66, 
           etr3 = 67, 
           etr4 = 68, 
           etr5 = 69,
           etr6.mc.1 = 70, 
           etr6.mc.2 = 71, 
           etr6.mc.3 = 72, 
           etr6.mc.4 = 73,
           etr6.mc.5 = 74, 
           le.group = 75, 
           le.num = 76,
           le.5th.shown = 78) %>%
    select(- c(1, 2, 64, 77))
}


privacy2021 <- read.csv("Original data/results2021.csv")
privacy2023 <- read.csv("Original data/results2023.csv")

privacy.21 <- col_rename(privacy2021)
privacy.23 <- col_rename(privacy2023)

privacy.21 <- privacy.21 %>% 
  mutate(year = 2021)

privacy.23 <- privacy.23 %>% 
  mutate(year = 2023)

privacy <- bind_rows(privacy.21, privacy.23)

# Recode demographic variables
privacy <- privacy %>% 
  mutate(location = factor(location, 
                           levels=c(1, 2, 3, 4),
                           labels=c("Countryside/village",
                                    "Small city",
                                    "Mid-sized city",
                                    "Big city"))) %>% 
  mutate(province = factor(province,
                           levels=c(1:32),
                           labels=c("Beijing",
                                    "Tianjin",
                                    "Hebei",
                                    "Shanxi",
                                    "Inner Mongolia",
                                    "Liaoning",
                                    "Jilin",
                                    "Heilongjiang",
                                    "Shanghai",
                                    "Jiangsu",
                                    "Zhejiang",
                                    "Anhui",
                                    "Fujian",
                                    "Jiangxi",
                                    "Shandong",
                                    "Henan",
                                    "Hubei",
                                    "Hunan",
                                    "Guangdong",
                                    "Guangxi",
                                    "Hainan",
                                    "Chongqing",
                                    "Sichuan",
                                    "Guizhou",
                                    "Yunnan",
                                    "Tibet",
                                    "Shaanxi",
                                    "Gansu",
                                    "Qinghai",
                                    "Ningxia",
                                    "Xinjiang",
                                    "Other"))) %>%
  mutate(education = factor(education,
                            levels=c(1:6),
                            labels=c("No formal education",
                                     "Primary",
                                     "Middle school",
                                     "High school",
                                     "University",
                                     "Advanced studies/Graduate school"))) %>% 
  mutate(sex = factor(sex,
                      levels=c(1:2),
                      labels=c("Female",
                               "Male"))) %>% 
  mutate(marriage.status = factor(marriage.status,
                                  levels=c(1:4),
                                  labels=c("Single",
                                           "In a relationship",
                                           "Married",
                                           "Divorced"))) %>% 
  mutate(job.type = factor(job.type,
                           levels=c(1:7),
                           labels=c("White collar worker",
                                    "Laborer",
                                    "Self-employed",
                                    "Agricultural worker",
                                    "Unemployed",
                                    "Retired",
                                    "Student"))) %>% 
  mutate(job.company.type = factor(job.company.type,
                                   levels=c(1:7),
                                   labels=c("State owned enterprise",
                                            "Government (local or central)",
                                            "Public institution employee",
                                            "Domestic private enterprise",
                                            "International private enterprise operating in China",
                                            "Self-employed small enterprise",
                                            "Agriculture"))) %>% 
  mutate(party.member.status = factor(party.member.status,
                                      levels=c(1:2),
                                      labels=c("Yes",
                                               "No"))) %>% 
  mutate(cyl.status = factor(cyl.status,
                             levels=c(1:2),
                             labels=c("Yes",
                                      "No"))) %>% 
  mutate(income = factor(income,
                         levels=c(1:7),
                         labels=c("0-2,999",
                                  "3,000-5,999",
                                  "6,000-9,999",
                                  "10,000-19,999",
                                  "20,000-49,999",
                                  "50,000-99,999",
                                  "More than 100,000"))) %>% 
  mutate(hukou.status = factor(hukou.status,
                               levels=c(1:6),
                               labels=c("Urban with Urban Hukou",
                                        "Urban with Rural Hukou",
                                        "Rural with Rural Hukou",
                                        "Rural with Urban Hukou",
                                        "Overseas Chinese (including Hong Kong and Macao)",
                                        "Other"))) %>% 
  mutate(hukou.status.other = ifelse(hukou.status.other=="", NA, hukou.status.other))

  
# Make index variables
    
# Recode substantive variables  
privacy <- privacy %>%
  mutate(k.index = (rescale((k1 + k4 + k5 + k6) / 4) * .8) + (rescale(k7) * .2)) %>% 
  mutate(across(c(k1, k4, k5, k6), ~factor(., 
                                           levels=c(1:7), 
                                           labels=likert.agree.labels))) %>% 
  mutate(k7 = factor(k7, 
                     levels=c(1:4),
                     labels=c("Yes, heard the specific details of it",
                              "Yes heard general information about it but not specific details",
                              "Yes, heard the term but not any information about it",
                              "No, have not heard of it"))) %>% 
  mutate(p.pd.index = rescale((p.pd1 + (8-p.pd2)) / 2)) %>% 
  mutate(p.ic.index = rescale((p.ic1 + (8-p.ic2)) / 2)) %>%
  mutate(p.mf.index = rescale((p.mf1 + (8-p.mf2)) / 2)) %>%
  mutate(p.ua.index = rescale((p.ua1 + p.ua2) / 2)) %>%
  mutate(p.lo.index = rescale((p.lo1 + p.lo2) / 2)) %>%
  mutate(across(c(p.pd1, p.pd2, p.ic1, p.ic2, p.mf1, p.mf2, p.ua1, p.ua2), 
                ~factor(., 
                       levels=c(1:7), 
                       labels=likert.agree.labels))) %>%
  mutate(across(c(p.lo1, p.lo2), ~factor(.,
                                         levels=c(1:7),
                                         labels=likert.important.labels))) %>%
  mutate(gp.index = rescale((gp1 + gp2 + gp3) / 3)) %>% 
  mutate(across(c(gp1, gp2, gp3), ~factor(.,
                                          levels=c(1:7),
                                          labels=likert.agree.labels))) %>%
  mutate(ma1 = factor(ma1, 
                      levels=c(1:5),
                      labels=c("Many times per day",
                               "Several times per day",
                               "Once per day",
                               "Less than once per day",
                               "I don’t follow the news"))) %>% 
  mutate(ma2 = factor(ma2, 
                      levels=c(1:7),
                      labels=c("Newspaper",
                               "WeChat",
                               "Website portal",
                               "TV",
                               "Weibo",
                               "Overseas sources",
                               "Other"))) %>%
  mutate(ma2.other = ifelse(ma2.other=="", NA, ma2.other)) %>% 
  mutate(gm.index.gov = rescale((gm1 + gm2 + gm4) / 3)) %>% 
  mutate(gm.index.priv = rescale((gm3 + gm5) / 2)) %>% 
  mutate(gm.index.total = rescale((gm1 + gm2 + gm3 + gm4 + gm5) / 5)) %>% 
  mutate(across(c(gm1, gm2, gm3, gm4, gm5), ~factor(.,
                                                    levels=c(1:7),
                                                    labels=likert.agree.labels))) %>%
  mutate(across(c(misc1, misc2, misc3, misc4, misc5, misc6), 
                ~factor(.,
                        levels=c(1:7),
                        labels=likert.agree.labels))) %>%
  mutate(ts.index = rescale((ts1 + ts2 + ts3) / 3)) %>% 
  mutate(across(c(ts1, ts2, ts3), ~factor(.,
                                          levels=c(1:7),
                                          labels=likert.skilled.labels))) %>%
  mutate(ts4 = factor(ts4, 
                      levels=c(1:5),
                      labels=c("Very widely - used in most public places",
                               "Widely - used in major public places",
                               "Moderate - deployment is mixed",
                               "Limited use - used only in a few places",
                               "Not used - only used as a trial or not used at all"))) %>%
  mutate(across(c(track1, track2, track3), ~factor(.,
                                                   levels=c(1:7),
                                                   labels=likert.closely.labels))) %>%
  mutate(across(c(track4, track5, track6), ~factor(.,
                                                   levels=c(1:7),
                                                   labels=likert.comfortable.labels)))

# Recode experiment variables
privacy <- privacy %>%   
  mutate(exp.group = factor(exp.group,
                            levels=c(1:2),
                            labels=c("Control group",
                                     "Treatment group"))) %>% 
  mutate(across(c(etr1, etr2, etr3, etr4, etr5), 
                ~factor(.,
                        levels=c(1:7),
                        labels=likert.agree.labels))) %>%
  mutate(across(c(etr6.mc.1, etr6.mc.2, etr6.mc.3, etr6.mc.4, etr6.mc.5), 
                ~ifelse(is.na(.x), ifelse(exp.group=="Treatment group",
                                          0,
                                          NA),
                                   .))) %>% 
  mutate(le.group = factor(le.group,
                           levels=c(1:3),
                           labels=c("Group 1: Entities you would trust - police",
                                    "Group 2: Entities you would trust - central goverment",
                                    "Group 3: Entities you would trust - local government"))) %>% 
  mutate(le.5th.shown = factor(le.5th.shown,
                               levels=c(0:1),
                               labels=c("Sensitive list item not shown",
                                        "Sensitive list item shown")))
  
# Write the output
save(privacy, file="privacy.attitudes.RData")

  