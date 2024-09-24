library(psy)

cronbach.test.ts <- privacy %>% 
  select(ts1, ts2, ts3) %>% 
  mutate(ts1 = as.numeric(ts1),
         ts2 = as.numeric(ts2),
         ts3 = as.numeric(ts3))

cronbach(cronbach.test.ts)

cronbach.test.gp <- privacy %>% 
  select(gp1, gp2) %>% 
  mutate(gp1 = as.numeric(gp1),
         gp2 = as.numeric(gp2))

cronbach(cronbach.test.gp)

cronbach.test.gm <- privacy %>% 
  select(gm1, gm2) %>% 
  mutate(gm1 = as.numeric(gm1),
         gm2 = as.numeric(gm2))

cronbach(cronbach.test.gm)

cronbach.test.track <- privacy %>% 
  select(track1, track2) %>% 
  mutate(track1 = as.numeric(track1),
         track2 = as.numeric(track2))

cronbach(cronbach.test.track)

cronbach.test.gov.track <- privacy %>% 
  select(track4, track5) %>% 
  mutate(track4 = as.numeric(track4),
         track5 = as.numeric(track5))

cronbach(cronbach.test.gov.track)

cronbach.total.track <- privacy %>% 
  select(gm1, gm2, track4, track5) %>% 
  mutate(track4 = as.numeric(track4),
         track5 = as.numeric(track5),
         gm1 = as.numeric(gm1),
         gm2 = as.numeric(gm2))

cronbach(cronbach.total.track)


mod8 <- lm(data=citizen.att, total.track.gov.index ~ age + 
             education.binary +
             income.simple + sex + 
             party.member.status + location + year + track.notice.gov.index + 
             track.edu.interact + 
             gp.index)

summary(mod8)

mod8.augmented <- augment(mod8)


ggplot(mod8.augmented, aes(x=.resid)) +
  geom_histogram(fill="blue4") +
  labs(x="Residuals", y="Count")

# Residual scatterplot  
ggplot(mod8.augmented, aes(total.track.gov.index, .resid)) + 
  geom_point() + 
  geom_hline(yintercept = 0, color = "blue", linetype='dashed') + 
  labs(y = "Residuals", x="<name of response variable>")