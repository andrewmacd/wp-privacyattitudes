mod7.augmented <- augment(mod7)

ggplot(mod7.augmented, aes(x=.resid)) +
  geom_histogram(fill="blue4") +
  labs(x="Residuals", y="Count")

# Residual scatterplot  
ggplot(mod7.augmented, aes(total.track.gov.index, .resid)) + 
  geom_point() + 
  geom_hline(yintercept = 0, color = "blue", linetype='dashed') + 
  labs(y = "Residuals", x="<name of response variable>")


citizen.att <- privacy %>% 
  mutate(ts.edu.interact = ts.index * as.numeric(education.binary),
         ts.sex.interact = ts.index * as.numeric(sex),
         track.edu.interact = ts.index * as.numeric(education.binary))

mod1 <- lm(data=citizen.att, as.numeric(gm1) ~ age + education.binary
           + income.simple + sex + 
             + party.member.status + location)
mod2 <- lm(data=citizen.att, as.numeric(gm1) ~ age + education.binary 
           + income.simple + sex +  
             + party.member.status + location + year)
mod3 <- lm(data=citizen.att, as.numeric(gm1) ~ age + education.binary 
           + income.simple + sex +
             + party.member.status + location + year + ts.index)
mod4 <- lm(data=citizen.att, as.numeric(gm1) ~ age + education.binary 
           + income.simple + sex + 
             + party.member.status + location + year + ts.index + ts.edu.interact)
mod5 <- lm(data=citizen.att, as.numeric(gm1) ~ age + 
             education.binary + 
             income.simple + sex + 
             party.member.status + location + year + ts.index + ts.sex.interact)
mod6 <- lm(data=citizen.att, as.numeric(gm1) ~ age + 
             education.binary +
             income.simple + sex + 
             party.member.status + location + year + track.notice.gov.index)
mod7 <- lm(data=citizen.att, as.numeric(gm1) ~ age + 
             education.binary +
             income.simple + sex + 
             party.member.status + location + year + track.notice.gov.index + 
             track.edu.interact)

models <- list(
  "Model 1"   = mod1,
  "Model 2"   = mod2,
  "Model 3"   = mod3,
  "Model 4"   = mod4,
  "Model 5"   = mod5,
  "Model 6"   = mod6,
  "Model 7"   = mod7
)

modelsummary(models,
             gof_omit = 'AIC|BIC|RMSE|Log.Lik.|R2 Adj.',
             stars = TRUE,
             notes = list("Reference categories are Female, Party member, Countryside"))

mod1 <- lm(data=citizen.att, as.numeric(gm2) ~ age + education.binary
           + income.simple + sex + 
             + party.member.status + location)
mod2 <- lm(data=citizen.att, as.numeric(gm2) ~ age + education.binary 
           + income.simple + sex +  
             + party.member.status + location + year)
mod3 <- lm(data=citizen.att, as.numeric(gm2) ~ age + education.binary 
           + income.simple + sex +
             + party.member.status + location + year + ts.index)
mod4 <- lm(data=citizen.att, as.numeric(gm2) ~ age + education.binary 
           + income.simple + sex + 
             + party.member.status + location + year + ts.index + ts.edu.interact)
mod5 <- lm(data=citizen.att, as.numeric(gm2) ~ age + 
             education.binary + 
             income.simple + sex + 
             party.member.status + location + year + ts.index + ts.sex.interact)
mod6 <- lm(data=citizen.att, as.numeric(gm2) ~ age + 
             education.binary +
             income.simple + sex + 
             party.member.status + location + year + track.notice.gov.index)
mod7 <- lm(data=citizen.att, as.numeric(gm2) ~ age + 
             education.binary +
             income.simple + sex + 
             party.member.status + location + year + track.notice.gov.index + 
             track.edu.interact)

models <- list(
  "Model 1"   = mod1,
  "Model 2"   = mod2,
  "Model 3"   = mod3,
  "Model 4"   = mod4,
  "Model 5"   = mod5,
  "Model 6"   = mod6,
  "Model 7"   = mod7
)

modelsummary(models,
             gof_omit = 'AIC|BIC|RMSE|Log.Lik.|R2 Adj.',
             stars = TRUE,
             notes = list("Reference categories are Female, Party member, Countryside"))

mod1 <- lm(data=citizen.att, as.numeric(gm.index.gov) ~ age + education.binary
           + income.simple + sex + 
             + party.member.status + location)
mod2 <- lm(data=citizen.att, as.numeric(gm.index.gov) ~ age + education.binary 
           + income.simple + sex +  
             + party.member.status + location + year)
mod3 <- lm(data=citizen.att, as.numeric(gm.index.gov) ~ age + education.binary 
           + income.simple + sex +
             + party.member.status + location + year + ts.index)
mod4 <- lm(data=citizen.att, as.numeric(gm.index.gov) ~ age + education.binary 
           + income.simple + sex + 
             + party.member.status + location + year + ts.index + ts.edu.interact)
mod5 <- lm(data=citizen.att, as.numeric(gm.index.gov) ~ age + 
             education.binary + 
             income.simple + sex + 
             party.member.status + location + year + ts.index + ts.sex.interact)
mod6 <- lm(data=citizen.att, as.numeric(gm.index.gov) ~ age + 
             education.binary +
             income.simple + sex + 
             party.member.status + location + year + track.notice.gov.index)
mod7 <- lm(data=citizen.att, as.numeric(gm.index.gov) ~ age + 
             education.binary +
             income.simple + sex + 
             party.member.status + location + year + track.notice.gov.index + 
             track.edu.interact)

models <- list(
  "Model 1"   = mod1,
  "Model 2"   = mod2,
  "Model 3"   = mod3,
  "Model 4"   = mod4,
  "Model 5"   = mod5,
  "Model 6"   = mod6,
  "Model 7"   = mod7
)

modelsummary(models,
             gof_omit = 'AIC|BIC|RMSE|Log.Lik.|R2 Adj.',
             stars = TRUE,
             notes = list("Reference categories are Female, Party member, Countryside"))


mod1 <- lm(data=citizen.att, track.gov.accept.index ~ age + education.binary
           + income.simple + sex + 
             + party.member.status + location)
mod2 <- lm(data=citizen.att, track.gov.accept.index ~ age + education.binary 
           + income.simple + sex +  
             + party.member.status + location + year)
mod3 <- lm(data=citizen.att, track.gov.accept.index ~ age + education.binary 
           + income.simple + sex +
             + party.member.status + location + year + ts.index)
mod4 <- lm(data=citizen.att, track.gov.accept.index ~ age + education.binary 
           + income.simple + sex + 
             + party.member.status + location + year + ts.index + ts.edu.interact)
mod5 <- lm(data=citizen.att, track.gov.accept.index ~ age + 
             education.binary + 
             income.simple + sex + 
             party.member.status + location + year + ts.index + ts.sex.interact)
mod6 <- lm(data=citizen.att, track.gov.accept.index ~ age + 
             education.binary +
             income.simple + sex + 
             party.member.status + location + year + track.notice.gov.index)
mod7 <- lm(data=citizen.att, track.gov.accept.index ~ age + 
             education.binary +
             income.simple + sex + 
             party.member.status + location + year + track.notice.gov.index + 
             track.edu.interact)

models <- list(
  "Model 1"   = mod1,
  "Model 2"   = mod2,
  "Model 3"   = mod3,
  "Model 4"   = mod4,
  "Model 5"   = mod5,
  "Model 6"   = mod6,
  "Model 7"   = mod7
)

modelsummary(models,
             gof_omit = 'AIC|BIC|RMSE|Log.Lik.|R2 Adj.',
             stars = TRUE,
             notes = list("Reference categories are Female, Party member, Countryside"))

```{r}
#| label: tbl-listexp.q.text
#| tbl-cap: List experiment questions

table.text <- list()

table.text[[1]] <- c("Q1", "For the question below, please count how many of the entities listed below you would trust with your online personal information, such as details about your purchase history, your browsing habits, and your social media posts\n
• Alibaba\n
• Tencent\n
• Foreign internet companies (such as Microsoft)\n
• Your family\n
--> Sensitive item only shown to 50 per cent of respondents\n
• The central government")

table.text[[2]] <- c("Q2", "For the question below, please count how many of the entities listed below you would trust with your online personal information, such as details about your purchase history, your browsing habits, and your social media posts\n
•	Alibaba\n
•	Tencent\n
•	Foreign internet companies (such as Microsoft)\n
•	Your family\n
--> Sensitive item only shown to 50 per cent of respondents>\n
•	The local government")

listexp.text <- data.frame()

for(line in table.text) {
  listexp.text <- rbind(listexp.text, line)
}

kable(listexp.text, col.names = NULL, escape=F) %>% 
  column_spec(2, width="5in", bold=FALSE)
```

```{r}
#| label: tbl-listexp.summary.data
#| tbl-cap: List experiment summary data

listexp.qs <- privacy %>% 
  mutate(le.num = as.numeric(le.num),
         le.5th.shown = factor(le.5th.shown, labels=c("SI not shown", "SI shown"))) %>% 
  select(`Number of items selected` = le.num,
         `Group` = le.group,
         `Shown` = le.5th.shown,
         `Year` = year) 

centralgov.qs <- listexp.qs %>% 
  filter(as.numeric(Group) == 2) %>% 
  select(c(`Number of items selected`, 
           `Shown`,
           `Year`))

datasummary(`Number of items selected` ~ mean * Year * Shown,
            data=centralgov.qs,
            title="Central government list experiment",
            notes=c("SI = sensitive item")) %>% 
  kable_styling(latex_options = c("striped"))

localgov.qs <- listexp.qs %>% 
  filter(as.numeric(Group) == 3) %>% 
  select(c(`Number of items selected`, 
           `Shown`,
           `Year`))

datasummary(`Number of items selected` ~ mean * Year * Shown,
            data=localgov.qs,
            title="Local government list experiment",
            notes=c("SI = sensitive item")) %>% 
  kable_styling(latex_options = c("striped"))
```