library(tidyverse)

privacy.original <- read.csv("Original data/results.csv")

# Make the column names more interpretable
privacy <- privacy.original %>% 
  as_tibble() %>% 
  rename()
  rename(location = V3...第1题.单选题..下列哪项最能贴切地描述你的住所...1.农村.乡野...2.小城市...3.中等规模的城市...4.大城市..) %>% 
  rename(province = V4...第2题.下拉单选题..你住在哪个省....1.北京市...2.天津市...3.河北省...4.山西省...5.内蒙古自治区...6.辽宁省...7.吉林省...8.黑龙江省...9.上海市...10.江苏省...11.浙江省...12.安徽省...13.福建省...14.江西省...15.山东省...16.河南省...17.湖北省...18.湖南省...19.广东省...20.广西壮族自治区...21.海南省...22.重庆市...23.四川省...24.贵州省...25.云南省...26.西藏自治区...27.陕西省...28.甘肃省...29.青海省...30.宁夏回族自治区...31.新疆维吾尔自治区...32.其他..) %>% 
  rename(city = V5...第3题.填空题..你住在哪个城市...) %>% 
  rename(age = V7...第5题.填空题..你的年龄.________岁..) %>% 
  rename(education = ) %>% 
  rename(sex = ) %>% 
  rename(marriage.status = ) %>% 
  rename(job.type = ) %>% 
  rename(job.company.type = ) %>% 
  rename(party.member.status = ) %>% 
  rename(cyl.status = ) %>% 
  rename(income = ) %>% 
  rename(hukou.status = ) %>% 
  rename(k1 = ) %>% 
  rename(k2 = ) %>% 
  rename(k3 = ) %>% 
  rename(k4 = ) %>%
  rename(k5 = ) %>% 
  rename(k6 = ) %>% 
  rename(k7 = ) %>% 
  rename(k8 = ) %>% 
  rename(p.pd1 = ) %>%
  rename(p.pd2 = ) %>% 
  rename(p.ic1 = ) %>% 
  rename(p.ic2 = ) %>% 
  rename(p.mf1 = ) %>% 
  rename(p.mf2 = ) %>% 
  rename(p.ua1 = ) %>% 
  rename(p.ua2 = ) %>% 
  rename(p.lo1 = ) %>% 
  rename(p.lo2 = ) %>% 
  rename(gp1 = ) %>% 
  rename(gp2 = ) %>% 
  rename(gp3 = ) %>% 
  rename(ma1 = ) %>% 
  rename(ma2 = ) %>% 
  rename(gm1 = ) %>% 
  rename(gm2 = ) %>% 
  rename(gm3 = ) %>% 
  rename(gm4 = ) %>% 
  rename(gm5 = ) %>% 
  rename(misc1 = ) %>% 
  rename(misc2 = ) %>% 
  rename(misc3 = ) %>% 
  rename(misc4 = ) %>% 
  rename(misc5 = ) %>% 
  rename(misc6 = ) %>% 
  rename(ts1 = ) %>%
  rename(ts2 = ) %>% 
  rename(ts3 = ) %>% 
  rename(ts4 = ) %>% 
  rename(track1 = ) %>% 
  rename(track2 = ) %>% 
  rename(track3 = ) %>% 
  rename(track4 = ) %>% 
  rename(track5 = ) %>% 
  rename(track6 = ) %>% 
  rename(etr1 = ) %>%
  rename(etr2 = ) %>% 
  rename(etr3 = ) %>% 
  rename(etr4 = ) %>% 
  rename(etr5 = ) %>%
  rename(etr6.shown = ) %>% 
  rename(etr6 = ) %>% 
  rename(le.group = ) %>% 
  rename(le1 = ) %>% 
  rename(le2 = ) %>% 
  rename(le3 = )
  
  
 