abstract: "The results of the survey strongly suggest that, despite all of the invasive government monitoring used to attempt to control the spread of Covid, respondents were generally supportive of government invasions of their privacy. These findings cast doubt on the long-term impact of the White Paper movement protests and connect to a larger body of literature on why surveys of Chinese citizens indicate high levels of trust in their government."

Intro:
  
  The trauamtic period of the Covid-19 controls in China in 2022 lead many news commentators to believe that the Chinese regime was in deep trouble. In particular, alarm was raised in Western news and scholarly sources regarding China's increasingly (as the sources term it) dystopian digital surveillance state (for some examples of these reports, see [@vlahos2019; @intercepted2022; @ang2022]). However, existing literature also finds a deep wellspring of trust among Chinese citizens toward the state and general lack of concern regarding government surveillance of their online activities [@chen2017; @steinhardt2022]. This report seeks to examine whether the events of 2022 in China significantly altered 1) citizen's attitudes about government monitoring and 2) the overall trust in government. It does so by analyzing the results of two waves of a survey focused on Chinese citizens' attitudes toward online privacy, with one wave conducted in the spring of 2021 and the other in the spring of 2023. The results suggest that Covid-19 controls, if anything, increased respondent support for government digital monitoring and only modestly decreased trust in the state. The one major exception was the respondents in the city of Shanghai, where there was a large and significant decrease in both measures between the two waves. Taken together, these findings suggest that the type, duration, and severity of monitoring is an important variable in public acceptance of monitoring.

## Literature review {#sec-litreview}

The Covid-19 restrictions in China in 2022 were perhaps one of the most extreme forms of digital control ever enacted. Residents were required to show a digital health code to enter public spaces [@dou2022; @mcmorrow2022]. A separate app generated a travel pass code based on which cell phone towers a resident's mobile phone had connected to. City residents were required to upload regular Covid-19 tests or face bans from entering most public areas, including city parks. One relatively unique aspect of the technological controls was its public-private nature. The health code end user interface existed within the two most popular consumer app platforms in China, Alipay and WeChat. These interfaces connected with provincial or local government-run databases to log user scans and to generate current health code status. In China, these public-private technological monitoring solutions are relatively common yet how citizens react to and receive these solutions remain understudied and under-theorized [@steinhardt2022].

The overall Covid-19 control regime in China in 2022 generated significant resistance among the population. The most iconic episode of the Chinese government's attempt to control the virus was the 60 day Shanghai lockdown. Residents fumed online at being shut indoors, being denied access to vital medicines or access to medical facilities, and needing to scrounge for food [@dou2022a; @lin2022]. By November, many Chinese citizens had enough of the controls. After a number of fatalities arising from a fire in a building with all the emergency doors padlocked to prevent quarantining residents from escaping, young people reacted by launching the so-called White Paper movement. Youth around China held up blank sheets of white paper, protesting their lack of free speech to comment on the Covid-19 controls. Shortly thereafter, according to reporting from Western news sources, Xi Jinping acceded to the demands of the protesters and the Covid-19 restrictions were finally relaxed in the winter of 2022 [@huang2022].

From a theoretical perspective, one may expect that the impact of such draconian forms of control would shift public views against government monitoring and surveillance, especially in an authoritarian context. Authoritarian leaders need to solve the information dilemma presented by preference falsification - citizens are disincentivized from revealing their true thoughts on policies or the regime due to fear of punishment [@xu2021]. Therefore, many authoritarian regimes employ a large surveillance apparatus to monitor private spaces in an attempt to detect the true feelings of residents. The classic response of citizens in the countries behind the former Iron Curtain to such controls was to withdraw inward into even more private spaces [@pfaff2001]. In the long run, this heavy-handed surveillance actually worked against regime goals by decreasing regime support. One aspect of Chinese digital surveillance has been that, for most citizens, it feels like a light touch. In previous surveys, many Chinese respondents do not report feeling excessively monitored or censored in any way [@gainous2023].[^1] However, if theoretical expectation is true for the case of China, one would expect that moving from a regime of light touch surveillance to one more similar to that used in former Soviet-bloc countries would decrease support for both surveillance and the regime itself.

[^1]: This response may be due to the way digital censorship and monitoring is implemented in China. Since it is a public-private partnership, usually the first instance of control is by the platform; the hand of the state is not visible unless citizens engage in something more than simply blowing off steam [@king2013].

$H_1$: acceptance of surveillance and regime support among Chinese survey respondents decreased after the digital Covid-19 controls of 2022.

Robin Li, founder of Baidu, expresses another common expectation of Chinese citizen with regard to their attitude toward privacy, in which he claimed that, "I think that the Chinese people are more open, or not so sensitive, about the privacy issue. If they are able to exchange privacy for convenience or efficiency, they are willing to do so in many cases" @baiduch2018. Li ignited significant controversy on the Chinese internet with his claims, with most users criticizing or mocking his claims [@shen2018]. More recent scholarly research has refined this his claim, with findings that generally suggest users have a significantly greater concern for their privacy when considering private corporations compared to government entities [@zhang2002; @wang2015; @kostka2019; @steinhardt2022].

$H_2:$ concern for user's personal privacy will be greater with respect to corporations compared to government entities

If we combine $H_1$ with $H_2$, it would follow that another expectation should be that concern about government monitoring should increase, though perhaps from a low level, as citizens experience more coercive forms of digital control.

$H_3:$ concern for government monitoring should start at a low level but increase after the events of 2022

In a separate line of literature, recent research on privacy in democratic socieities has suggested that acceptance of digital surveillance is tied to the level of government trust. Respondents with high levels of trust in the government are more willing to accept government monitoring [@reddick2015; @trüdinger2017; @ioannou2021]. These theories may help explain why previous studies have found a high degree of acceptance of government monitoring, as Chinese respondents, in many different contexts and studies, have repeatedly indicated that they have a high level of trust in the Central government [@kennedy2009; @zhong2014], though with lesser levels of trust in local governments. Therefore, the decisive factor in changing attitudes toward online monitoring may be a decrease in government trust during the pandemic rather than specific views about technological controls.

$H_4:$ views regarding online monitoring should move in line with changing views of government trust in 2022

In the next section, I explore a two-wave survey to examine each of these hypotheses in turn.

Taking a wide-angle view on the government's performance, @tbl-gp.summary.data compares some different measures of government performance. While the higher level of government trust in the central government is unsurprising and consistent with previous literature, the magnitude of the gap is somewhat smaller than in previous studies. There has been a small but statistically significant decrease in trust of both since 2021. Most interestingly, though, is that there was no decrease in how residents feel the government handled their privacy information. This result is some evidence against hypothesis $H_4$, that the two measures should move together. It also calls into question $H_1$ and $H_2$, as the post-Covid controls wave does not appear to have increased concern for government monitoring.

```{r}
#| label: tbl-gp.q.text
#| tbl-cap: Government performance questions

table.text <- list()

table.text[[1]] <- c("Q1", "Overall, I’m happy with the performance of the central government")
table.text[[2]] <- c("Q2", "Overall, I’m happy with the performance of my local government")
table.text[[3]] <- c("Q3", "The government does a good job balancing the rights of citizens to be free of surveillance in their daily lives with the need to preserve order and prevent crime.")
table.text[[4]] <- c("Q4", "Government performance index of Q1 + Q2 + Q3")

gp.text <- data.frame()

for(line in table.text) {
  gp.text <- rbind(gp.text, line)
}

kbl(gp.text, col.names = NULL) %>% 
  kable_styling(latex_options = c("striped")) %>% 
  column_spec(2, width="5in", bold=FALSE)
```

```{r}
#| label: tbl-gp.summary.data
#| tbl-cap: Government performance data

gp.qs <- privacy %>% 
  mutate(gp1 = as.numeric(gp1)) %>% 
  mutate(gp2 = as.numeric(gp2)) %>% 
  mutate(gp3 = as.numeric(gp3)) %>% 
  select(`Central government performance` = gp1,
         `Local government performance` = gp2,
         `Government performance Q3` = gp3,
         `Government performance index` = gp.index,
         `Year` = year) 

datasummary_balance(~ Year, data=gp.qs, dinm_statistic = "p.value",
                    fmt=fmt_sprintf("%.2f")) %>%
  kable_styling(latex_options = c("striped", "scale_down"))
```

Turning to the issue of specific attitudes regarding monitoring, @tbl-gm.summary.data suggests that while the differences are not large, respondents in the second wave were more accepting of almost all forms of monitoring. Given the phrasing of the question - "there are good reasons for the government to monitor you", it seems likely that respondents were accepting the government's framing that such digital monitoring and control was a necessary part of the pandemic response. Not surprisingly, and consistent with previous research, respondents trust the government at significantly higher levels than private corporations. While the pandemic-era monitoring was in fact a public-private partnership, respondents seem to have a very clear delineation of which parties may acceptably gather their data and which should not. These results are in line with $H_2$, that respondents should have greater trust in the government to monitor them online compared to private corporations.

The change in these variables from 2021 to 2023 is one of the largest differences among all survey questions. In 2023, respondents felt that the central government had a significantly stronger reason to monitor them compared to 2021. Respondents also agreed that the local government had a better case to monitor them compared to 2021, though the magnitude of the change was not as dramatic. Other types of monitoring (private monitoring, biometric monitoring) also exhibited a statistically significant change in the direction of being more accepting of tracking. The most direct interpretation of this response pattern is that respondents fundamentally accepted the government's position that monitoring was necessary and justified during the pandemic. Contrary to Western popular press reports of the White Paper Revolution, it does not seem that most Chinese citizens were unhappy about Covid electronic controls due to the feeling of being monitored. The slight decrease in government trust could indicate dissatisfaction with other Covid policies (including forced quarantines), but it does not seem that app-based monitoring itself caused any great concern among the general public. These results suggest that the motivation and type of monitoring are also important factors in public acceptance of online monitoring, factors not significantly considered in previous literature.

```{r}
#| label: tbl-gm.q.text
#| tbl-cap: Government and private monitoring questions

table.text <- list()

table.text[[1]] <- c("Q1", "There are good reasons for the central government to monitor the activity of users online")
table.text[[2]] <- c("Q2", "There are good reasons for the local government to monitor the activity of users online")
table.text[[3]] <- c("Q3", "There are good reasons for private companies to monitor the activity of users online")
table.text[[4]] <- c("Q4", "It doesn’t bother me to provide the government with biometric information including my fingerprints and face details for the purposes of monitoring public places")
table.text[[5]] <- c("Q5", "It doesn’t bother me to provide private companies with biometric information including my fingerprints and face details for the purposes of monitoring public places")
table.text[[6]] <- c("Q6", "Government monitoring index of Q1 + Q2 + Q4")
table.text[[7]] <- c("Q7", "Private monitoring index of Q3 + Q5")
table.text[[8]] <- c("Q8", "Total monitoring index of Q1-Q5")

table.text[[4]] <- linebreak(table.text[[4]])
table.text[[5]] <- linebreak(table.text[[5]])

gm.text <- data.frame()

for(line in table.text) {
  gm.text <- rbind(gm.text, line)
}

kbl(gm.text, col.names = NULL, escape=F, align="l") %>% 
  kable_styling(latex_options = c("striped")) %>% 
  column_spec(2, width="5in", bold=FALSE)
```

```{r}
#| label: tbl-gm.summary.data
#| tbl-cap: Government and private monitoring data

gm.qs <- privacy %>% 
  mutate(gm1 = as.numeric(gm1)) %>% 
  mutate(gm2 = as.numeric(gm2)) %>% 
  mutate(gm3 = as.numeric(gm3)) %>% 
  mutate(gm4 = as.numeric(gm4)) %>% 
  mutate(gm5 = as.numeric(gm5)) %>% 
  select(`Central government monitoring` = gm1,
         `Local government monitoring` = gm2,
         `Private company monitoring` = gm3,
         `Government biometric monitoring` = gm4,
         `Private biometric monitoring` = gm5,
         `Government monitoring index` = gm.index.gov,
         `Private monitoring index` = gm.index.priv,
         `Total monitoring index` = gm.index.total,
         `Year` = year) 

datasummary_balance(~ Year, data=gm.qs, dinm_statistic = "p.value",
                    fmt=fmt_sprintf("%.2f")) %>% 
  kable_styling(latex_options = c("striped", "scale_down"))
```

One possible reason why respondents may believe that private corporations are less trustworthy could arise from feeling that their monitoring is more invasive. However, this turns out not to be the case - respondents feel that all three entities are roughly equally likely to monitor them. A likely interpretation of this result is that respondents are unable to precisely identify who is monitoring them and when. When the question about privacy is rephrased to further emphasize that these different groups could access their private information, trust with government sources decreases modestly compared to the previous phrasing in @tbl-gm.q.text. However, this decrease is matched by a similar decrease in comfort with private companies monitoring them. These results reinforce the results in @tbl-gm.summary.data and further support $H_2$.

What may explain the lack of increased concern about digital privacy is that respondents generally did not notice a major change in the level of online monitoring. While the increase was statistically significant, it was just barely at the edge of significance and amounts to less than 1/10th of a standard deviation increase in perceived monitoring. Given the invasiveness of the technological means of control employed to manage Covid, this result is surprising. Two reasonable explanations for this divergence are 1) respondents do not consider the Covid controls to be online monitoring and/or 2) respondents have already readjusted their frame of reference and no longer bring to mind the Covid-19 era when answering this question. While the survey results cannot arbitrate between these two explanations, both of these explanations suggest that even a massive and intrusive increase in surveillance has not made a significant impact on how intrusive people view government monitoring. If the first explanation is true, it suggests that the kinds of monitoring that Chinese citizens are worried about are drastically different than the kinds Western privacy advocates are concerned about. If a government is monitoring every location you visit and such activity is not considered to be particularly intrusive, then it suggests a very different set of ideas about what is a concerning type of monitoring. If the second explanation is true, it does suggest that respondents view somewhat time-limited surveillance and surveillance for a specific purpose as being acceptable.

```{r}
#| label: tbl-track.q.text
#| tbl-cap: Attitudes regarding tracking questions

table.text <- list()

table.text[[1]] <- c("Q1", "How closely do you think the central government tracks your online activity?")
table.text[[2]] <- c("Q2", "How closely do you think the local government tracks your online activity?")
table.text[[3]] <- c("Q3", "How closely do you think private companies track your online activity?")
table.text[[4]] <- c("Q4", "How comfortable are you with the central government knowing personal details about your activity online?")
table.text[[5]] <- c("Q5", "How comfortable are you with the local government knowing personal details about your activity online?")
table.text[[6]] <- c("Q6", "How comfortable are you with private companies knowing personal details about your activity online?")

track.text <- data.frame()

for(line in table.text) {
  track.text <- rbind(track.text, line)
}

kbl(track.text, col.names = NULL, escape=F, align="l") %>% 
  kable_styling(latex_options = c("striped")) %>% 
  column_spec(2, width="5in", bold=FALSE)
```

```{r}
#| label: tbl-track.summary.data
#| tbl-cap: Attitudes regarding tracking summary data

track.qs <- privacy %>% 
  mutate(track1 = as.numeric(track1)) %>% 
  mutate(track2 = as.numeric(track2)) %>% 
  mutate(track3 = as.numeric(track3)) %>% 
  mutate(track4 = as.numeric(track4)) %>% 
  mutate(track5 = as.numeric(track5)) %>%
  mutate(track6 = as.numeric(track6)) %>% 
  select(`Central government tracking - prevalence` = track1,
         `Local government tracking - prevalence` = track2,
         `Private company tracking - prevalence` = track3,
         `Central government tracking - comfort` = track4,
         `Local govenrment tracking - comfort` = track5,
         `Private company tracking - comfort` = track6,
         `Year` = year) 

datasummary_balance(~ Year, data=track.qs, dinm_statistic = "p.value",
                    fmt=fmt_sprintf("%.2f")) %>% 
  kable_styling(latex_options = c("striped", "scale_down"))
```

Rounding out the final section of the regular survey questions are a set of questions designed to further parse attitudes about online monitoring, the results of which are shown in @tbl-misc.summary.data. The results of these questions generally confirm and support the findings of all the previous question blocks. As with most of the survey questions, there appeared to be only a very modest change in response patterns between 2021 and 2023. Respondents generally agree that they do not notice government tracking. They strongly agree that the government protects their data better than private corporations. They strongly disagree that they are willing to give up their privacy simply to use apps for free. Finally, many respondents feel worried about having their payment data stolen. While it is unwise to place too much emphasis on any one question, given respondents can misinterpret or gloss over any specific question, respondents have repeatedly indicated that they trust the government at significantly higher rates than private corporations regarding online montoring and that most of users worries about being online are related to protection of their information from corporations.

```{r}
#| label: tbl-misc.q.text
#| tbl-cap: Attitudes on general questions

table.text <- list()

table.text[[1]] <- c("Q1", "I don’t notice government use of technology to monitor my behavior in my daily life.")
table.text[[2]] <- c("Q2", "The government is likely to securely store my online personal data and information better than private companies.")
table.text[[3]] <- c("Q3", "It doesn’t bother me if private companies sell my user data to third parties if it will allow me to use their applications for free.")
table.text[[4]] <- c("Q4", "I’m worried that my payment information might be stolen or compromised.")

misc.text <- data.frame()

for(line in table.text) {
  misc.text <- rbind(misc.text, line)
}

kbl(misc.text, col.names = NULL, escape=F, align="l") %>% 
  kable_styling(latex_options = c("striped")) %>% 
  column_spec(2, width="5in", bold=FALSE)
```

```{r}
#| label: tbl-misc.summary.data
#| tbl-cap: General questions data

misc.qs <- privacy %>% 
  mutate(misc3 = as.numeric(misc3)) %>% 
  mutate(misc4 = as.numeric(misc4)) %>% 
  mutate(misc5 = as.numeric(misc5)) %>%
  mutate(misc6 = as.numeric(misc6)) %>% 
  select(`Do not notice government tracking` = misc3,
         `Government secures data better than private` = misc4,
         `OK if apps sell my data so can use for free` = misc5,
         `Payment data stolen worries` = misc6,
         `Year` = year) 

datasummary_balance(~ Year, data=misc.qs, dinm_statistic = "p.value",
                    fmt=fmt_sprintf("%.2f")) %>% 
  kable_styling(latex_options = c("striped", "scale_down"))
```

One obvious objection to the finding that respondents have a higher degree of concern with private monitoring compared to government monitoring is that respondents are engaging in preference falsification - they may be worried about, either consciously or subconsciously, marking the government negatively in a survey. To address this concern, the end of the survey employed a list experiment to measure variation in levels of trust. The list experiment question gives respondents a list of organizations that they may trust and then asks them to report the number of organizations that they trust. Half of the respondents were given a list of organizations that included a sensitive organization (such as the central government). The other half was given a list without the sensitive organization included. The idea is that respondents may be more comfortable reporting that they do not trust an organization when they do not have to consciously mark on a survey that they do not trust it but instead is part of a mental math calculation along with other items [@blair2012]. List experiments have been used across many fields to study sensitive topics such as racism, abortion, and sexual violence [@redlawsk2010; @moseson2017; @traunmüller2019]. Since trust in corporations does not seem likely to generate preference falsification problems, they were not included as a separate list experiment. However, the contents of the list items are largely technology companies so some inference can be drawn about trust in technology companies versus the government.

The results of the list experiment are shown in @tbl-listexp.summary.data. For respondents shown the sensitive list item, one can estimate that about 60% of people selected it (given that the baseline level is about 0.6 number of items selected lower than compared to when respondents are shown the sensitive list item). While it is hard to directly compare with the Likert-scaled questions, note that the average on the Likert scale questions for various trust measure of government use of data was about 4.5 out of 7, or roughly the 65th percentile of the scale. For private corporations, consider that 3 out of the 4 list items were private technology firms and the other list item was their family. If one speculatively assumes that most people will select the trust in their family list item, that roughly indicates that respondents selected little over 1 out of 3 of the private corporations as something that they trust. This roughly accords with the average responses to trust in private corporations of 2.5 out of 7 on a Likert scale. These results are not meant to definitively confirm that there are no issues of preference falsification. That being said, the results do strongly parallel the results of the regular survey questions, adding confidence to the interpretation of the results of the previous tables.



## Additional analysis {#sec-analysis}

In order to help rule out the possibility that some of the differences observed between 2021 and 2023 in the government trust and comfortability of being monitored are driven simply by demographic changes, @tbl-basicreg reports on the results of a simple regression framework. The response variables are: 1) trust in the central government, 2) trust in the local government, 3) comfort with central government monitoring, 4) comfort with local government monitoring, and 5) comfort with private company monitoring. Included in the regression are a standard suite of demographic variables and the year variable.

The year variable magnitude matches almost exactly the simple difference in means observed in @sec-datasummary. In terms of interesting coefficients, age is consistenly positively related to acceptance of government monitoring and negatively related to private corporation monitoring. This finding may partially explain events like the White Paper Revolution, which was primarily a protest of the young. However, the magnitude of coefficient is not very impactful - changing a respondent's age from 20 to 70 changes the predicted response to the acceptance of monitoring questions by 0.5 points - less than the size of the year coefficient (0.6). Not being a party member also decreased acceptance of monitoring by about 0.2 points. Income is sometimes a relevant predictor though inconsistently so. Overall, the regressions have a very low $r^2$, indicating that most of the variation in individual responses is due to factors outside of demographic variables. So, while suggestive, the demographic variables have only limited substantive relationship to variation in attitudes on these questions.

```{r}
#| label: tbl-basicreg
#| tbl-cap: Regressions on individual question results

reg.data <- privacy %>% 
  mutate(education = factor(case_when(education=="No formal education" ~ "Less than middle",
                                      education=="Primary" ~ "Less than middle",
                                      education=="Middle school" ~ "Middle school",
                                      education=="High school" ~ "High school",
                                      education=="University" ~ "University",
                                      education=="Advanced studies/Graduate school" ~ "Advanced studies/Graduate school"), 
                            levels=c("Less than middle", 
                                     "Middle school",
                                     "High school",
                                     "University",
                                     "Advanced studies/Graduate school")))

mod1 <- lm(data=reg.data, as.numeric(gp1) ~ age + education + income + sex  
           + party.member.status + location + year)
mod2 <- lm(data=reg.data, as.numeric(gp2) ~ age + education + income + sex 
           + party.member.status + location + year)
mod3 <- lm(data=reg.data, as.numeric(gm1) ~ age + education + income + sex  
           + party.member.status + location + year)
mod4 <- lm(data=reg.data, as.numeric(gm2) ~ age + education + income + sex  
           + party.member.status + location + year)
mod5 <- lm(data=reg.data, as.numeric(gm3) ~ age + education + income + sex  
           + party.member.status + location + year)

models <- list(
  "CG Trust"     = mod1,
  "LG Trust"     = mod2,
  "CG Monitor"   = mod3,
  "LG Monitor"   = mod4,
  "PR Monitor"   = mod5
)

modelsummary(models, coef_rename = c("age" = "Age",
                                     "educationMiddle school" = "Middle school",
                                     "educationHigh school" = "High school",
                                     "educationUniversity" = "University",
                                     "educationAdvanced studies/Graduate school" = "Grad school",
                                     "income3,000-5,999" = "Income 3000-5999",
                                     "income6,000-9,999" = "Income 6000-9999",
                                     "income10,000-19,999" = "Income 10000-19999",
                                     "income20,000-49,999" = "Income 20000-49999",
                                     "income50,000-99,999" = "Income 50000-99999",
                                     "incomeMore than 100,000" = "Income > 100000",
                                     "sexMale" = "Male",
                                     "party.member.statusNo" = "Not a party member",
                                     "locationSmall city" = "Location: small city",
                                     "locationMid-sized city" = "Location: mid city",
                                     "locationBig city" = "Location: big city",
                                     "year2023" = "Year 2023"),
             gof_omit = 'AIC|BIC|RMSE|Log.Lik.|R2 Adj.',
             stars = TRUE,
             notes = list("Reference categories are Less than middle, Income 0-2999, Female, Party member, Countryside"))
```

Turning toward differences between government and private protection of privacy, @tbl-trackingreg presents regression results for tracking questions on the same suite of demographic controls. In particular, these regressions consider the question of "how closely do you think *x* tracks your online activity?" (regressions 1-3) and "How comfortable are you with *x* knowing personal details about your activity online?" (regressions 4-6). Again, it should be repeated that the $r^2$ for all regressions are also very low - most variation in question response is not accounted for in the model. However, there are a few interesting observations to make. First is that those in larger cities are more likely to notice monitoring as compared to those living small cities, even controlling for income and education. The magnitude of the coefficient is not large (0.3 for those living in big cities) but does suggest that urban surveillance is qualitatively of a different type or scale. While the year coefficient is significant in some instances, the magnitude is very small (0.1) indicating a substantively insignificant effect. Interestingly, not being a party member is associated both with less noticing of motioning and less comfort with organizations knowing their private details. Again, the coefficients are relatively small but does suggest that having some level of knowledge of what kind of surveillance is associated with more positive views of its use. Some of the other demographic variables are occasionally significant but not in a way that indicates a consistent and meaningful relationship with the response variables.

```{r}
#| label: tbl-trackingreg
#| tbl-cap: Regressions on government vs. private tracking

reg.tracking.data <- privacy %>% 
  mutate(education = factor(case_when(education=="No formal education" ~ "Less than middle",
                                      education=="Primary" ~ "Less than middle",
                                      education=="Middle school" ~ "Middle school",
                                      education=="High school" ~ "High school",
                                      education=="University" ~ "University",
                                      education=="Advanced studies/Graduate school" ~ "Advanced studies/Graduate school"), 
                            levels=c("Less than middle", 
                                     "Middle school",
                                     "High school",
                                     "University",
                                     "Advanced studies/Graduate school")))

mod1 <- lm(data=reg.tracking.data, as.numeric(track1) ~ age + education + income + sex  
           + party.member.status + location + year)
mod2 <- lm(data=reg.tracking.data, as.numeric(track2) ~ age + education + income + sex 
           + party.member.status + location + year)
mod3 <- lm(data=reg.tracking.data, as.numeric(track3) ~ age + education + income + sex  
           + party.member.status + location + year)
mod4 <- lm(data=reg.tracking.data, as.numeric(track4) ~ age + education + income + sex  
           + party.member.status + location + year)
mod5 <- lm(data=reg.tracking.data, as.numeric(track5) ~ age + education + income + sex  
           + party.member.status + location + year)
mod6 <- lm(data=reg.tracking.data, as.numeric(track6) ~ age + education + income + sex  
           + party.member.status + location + year)

models <- list(
  "CG Track" = mod1,
  "LG Track" = mod2,
  "PR Track" = mod3,
  "CG PD"    = mod4,
  "LG PD"    = mod5,
  "PR PD"    = mod6
)

modelsummary(models, coef_rename = c("age" = "Age",
                                     "educationMiddle school" = "Middle school",
                                     "educationHigh school" = "High school",
                                     "educationUniversity" = "University",
                                     "educationAdvanced studies/Graduate school" = "Grad school",
                                     "income3,000-5,999" = "Income 3000-5999",
                                     "income6,000-9,999" = "Income 6000-9999",
                                     "income10,000-19,999" = "Income 10000-19999",
                                     "income20,000-49,999" = "Income 20000-49999",
                                     "income50,000-99,999" = "Income 50000-99999",
                                     "incomeMore than 100,000" = "Income > 100000",
                                     "sexMale" = "Male",
                                     "party.member.statusNo" = "Not a party member",
                                     "locationSmall city" = "Location: small city",
                                     "locationMid-sized city" = "Location: mid city",
                                     "locationBig city" = "Location: big city",
                                     "year2023" = "Year 2023"),
             gof_omit = 'AIC|BIC|RMSE|Log.Lik.|R2 Adj.',
             stars = TRUE,
             notes = list("Reference categories are Less than middle, Income 0-2999, Female, Party member, Countryside"))
```

Finally, a look at the subset of the data for those living in Xi'an, Shanghai, and Wuhan. Both Shanghai and Xi'an suffered painful lockdowns in December of 2021 and April 2022, respectively. Wuhan was the original source of the Covid outbreak and underwent a many months long set of lockdwns and restrictions in 2021. The results for key questions broken down by city can be found in @tbl-gp.detailed.data. The set of questions relating to overall trust and whether respondents see good reasons to allow each entity to collect their data (part (a)) suggests that the only city that is significantly different from the overall pattern of cities is Shanghai, but in ways that one might expect. Shanghainese trust their local government more than cities overall (the Shanghai coefficient on LG Trust). This is not a surprising result given that Shanghai is one of the most developed cities in China. However, the results also seem to indicate that Shanghai residents saw a very substantively large decrease in trust in their local governments (the Shanghai x 2023 coefficient on CG Trust and LG Trust). Furthermore Shanghai residents also had a major decrease in agreement that the government has a good reason to monitor them in 2023 (the Shanghai x 2023 coefficient on CG Monitor and LG monitor). The size of the coefficient on all of these is also substantively very large. None of the other cities seem significantly different from the average of other cities or locations.

These results make sense given the severity of the Shanghai lockdown and the post-lockdown strict controls. For many residents, the lockdown was highly traumatic but without a sense of shared unity or purpose, as was the case in the 2020 Wuhan lockdown. Furthermore, the Shaghainese local government seriously mishandled the logistics of the lockdown, leaving many people scrambling for food and medicine. However, the results presented in part (b) complicate this story somewhat. Shanghai does not appear to be any different than other cities while respondents from Wuhan consistently are more likely to notice tracking efforts. I have no stong hypothesis as to the Wuhan results but the Shanghai findings may be suggestive that respondents are reading this set of questions as referring to the present rather than including the pandemic time period.

```{r}
#| label: tbl-gp.detailed.data
#| tbl-cap: Key questions by city
#| tbl-subcap: 
  #|    - "Trust questions"
  #|    - "Data use questions"
#| layout-ncol: 1   

attitude.detail.qs <- privacy %>% 
  mutate(gp1 = as.numeric(gp1)) %>% 
  mutate(gp2 = as.numeric(gp2)) %>% 
  mutate(gm1 = as.numeric(gm1)) %>% 
  mutate(gm2 = as.numeric(gm2)) %>% 
  mutate(gm3 = as.numeric(gm3)) %>% 
  mutate(track1 = as.numeric(track1)) %>% 
  mutate(track2 = as.numeric(track2)) %>% 
  mutate(track3 = as.numeric(track3)) %>% 
  mutate(track4 = as.numeric(track4)) %>% 
  mutate(track5 = as.numeric(track5)) %>% 
  mutate(track6 = as.numeric(track6)) %>% 
  mutate(city = factor(case_when(province=="Shanghai" ~ "Shanghai",
                                 grepl("武汉市", city) ~ "Wuhan",
                                 grepl("西安市", city) ~ "Xi'an",
                                 TRUE ~ "Other cities"),
                       levels=c("Other cities", "Shanghai", "Xi'an", "Wuhan")))

mod1 <- lm(data=attitude.detail.qs, gp1 ~ city + year + city*year)
mod2 <- lm(data=attitude.detail.qs, gp2 ~ city + year + city*year)
mod3 <- lm(data=attitude.detail.qs, gm1 ~ city + year + city*year)
mod4 <- lm(data=attitude.detail.qs, gm2 ~ city + year + city*year)
mod5 <- lm(data=attitude.detail.qs, gm3 ~ city + year + city*year)

models <- list(
  "CG Trust"     = mod1,
  "LG Trust"     = mod2,
  "CG Monitor"   = mod3,
  "LG Monitor"   = mod4,
  "PR Monitor"   = mod5
)

modelsummary(models,
             coef_rename = c("cityShanghai" = "Shanghai",
                             "cityXi'an" = "Xi'an",
                             "cityWuhan" = "Wuhan",
                             "year2023" = "2023",
                             "cityShanghai:year2023" = "Shanghai x 2023",
                             "cityXi'an:year2023" = "Xi'an x 2023",
                             "cityWuhan:year2023" = "Wuhan x 2023"),
             gof_omit = 'AIC|BIC|RMSE|Log.Lik.|R2 Adj.|R2|Num.Obs.',
             stars = TRUE)

mod1 <- lm(data=attitude.detail.qs, track1 ~ city + year + city*year)
mod2 <- lm(data=attitude.detail.qs, track2 ~ city + year + city*year)
mod3 <- lm(data=attitude.detail.qs, track3 ~ city + year + city*year)
mod4 <- lm(data=attitude.detail.qs, track4 ~ city + year + city*year)
mod5 <- lm(data=attitude.detail.qs, track5 ~ city + year + city*year)
mod6 <- lm(data=attitude.detail.qs, track6 ~ city + year + city*year)

models <- list(
  "CG Track" = mod1,
  "LG Track" = mod2,
  "PR Track" = mod3,
  "CG PD"    = mod4,
  "LG PD"    = mod5,
  "PR PD"    = mod6
)

modelsummary(models,
             coef_rename = c("cityShanghai" = "Shanghai",
                             "cityXi'an" = "Xi'an",
                             "cityWuhan" = "Wuhan",
                             "year2023" = "2023",
                             "cityShanghai:year2023" = "Shanghai x 2023",
                             "cityXi'an:year2023" = "Xi'an x 2023",
                             "cityWuhan:year2023" = "Wuhan x 2023"),
             gof_omit = 'AIC|BIC|RMSE|Log.Lik.|R2 Adj.|R2|Num.Obs.',
             stars = TRUE)
```

## Discussion and conclusion

With respect to the hypotheses posed in @sec-litreview, the only one that found unambiguous support was $H_2$, that Chinese respondents trust private corporations with their digital data at a significantly lower level than the government. This survey did find that overall trust in government decreased somewhat between 2021 and 2023 but there was no corresponding decrease in acceptance of government surveillance (as would be expected from $H_1$, $H_3$, and $H_4$). In fact, if anything, acceptance of the principle of government monitoring increased. The only exception to this pattern is the respondents located in Shanghai, which did see a significant decrease in government trust and acceptance of surveillance (as predicted by the hypotheses). A plausible interpretation of these results is that the average Covid-19 control experience for most Chinese citizens was relatively mild and did not significantly change their views of the state or of digital surveillance. Only in a place where the surveillance and controls were especially severe, like Shanghai, do we notice a significant shift in attitudes. It may be that if the relatively more mild experience were extended for a longer period of time elsewhere in China, survey responses would show a more significant attitudinal change. Overall, it suggests that acceptance of government monitoring more or less follows public trust in the government but is also impacted by the reason and need for the surveillance, a factor not given sustained attention in the literature. Contra stories of a new surveillance dystopia in China, this research suggests that even relatively invasive monitoring will not lead to significant changes in attitudes in China.
