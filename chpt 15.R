#Daniel Minor, Chpt. 15 HW
#Covariates, the other variables in a model that the modeler wants in there. 
#explainatiion of variables: when the covariates are correlated with the explainatory variable, as they often are, including the covariates in a model will change
#the coefficents on the explanatory variable. 
#what remains unexplained: including covariates raises the r^2 of a model. 
require(mosaic)
sec15.1 <- lm(height~nkids+sex+father+mother, data=Galton)
anova(sec15.1)
swim
marriage <- read.csv("http://tiny.cc/mosaic/marriage.csv")
names(marriage)
sec15.2 <- lm(Age~Person, data=marriage)
summary(sec15.2)
anova(sec15.2)
sec15.2.2 <- lm(Age~Person+BookpageID, data=marriage)
anova(sec15.2.2)
wageRace <- lm(wage~race,data=cps)
summary(wageRace)
anova(wageRace)
wageRace2 <- lm(wage~race+educ+sector,data=cps)
anova(wageRace2)
sec15.3 <- lm(height~1,data=Galton)
anova(sec15.3)
sec15.3.2 <- lm(height~1+nkids,data=Galton)
anova(sec15.3.2)
sec15.3.3 <- lm(height~1+nkids+sex,data=Galton)
anova(sec15.3.3)
sec15.3.4 <- lm(height~1+nkids+sex+father,data=Galton) #Could do explan. var. in any order in the anova report
anova(sec15.3.4)
sec15.3.5 <- lm(height~1+nkids+father+mother,data=Galton)
anova(sec15.3.5)
sec15.4 <- lm(nkids~+father+mother+sex,data=Galton)
anova(sec15.4)
wagerace <- lm(wage~race+educ+sector,data=cps)
anova(wagerace)
wagerace2 <- lm(wage~educ+sector+race,data=cps)
anova(wagerace2)
wagerace3 <- lm(wage~educ+race+sector,data=cps)
anova(wagerace3)
sec15.5 <- lm(height~nkids+sex+mother+father,data=Galton)
anova(sec15.5)

mod1 <- lm(wage~married+age+educ, data=cps)
anova(mod1)
#married     1   142.4  142.40   6.7404  0.009687 ** 
mod2 <- lm(wage~age+educ+married,data=cps)
 anova(mod2)
#arried     1    36.0   36.01   1.7046    0.1923    
#p value is .19, so this suggests that much of the variation in wage that is associated with married can also be accounted for by age and educ
anova( lm(time~year*sex,data=swim) )
#P value here is very small, might want to check whether this result might be influenced by the shape of the distrib. 
mod <- lm(rank(time)~rank(year)*sex, data=swim)
anova(mod)
#with the rank-transformed datda, the p-value on the interaction term is much larger: no evidence for an interaction between year and sex. You can see this directly from a plot.

#F statistic, when it is near 1, it's not that good of a value.
#R^2 does not take into account the number of explan. variables, but adjusted does. 
# Adj r^2    | f-stat           | p-value | interpretation
#not near r2 |  low(eg near 1)  | high    | explan. var not that good at explaining response var.
#near r^2    |  high            | low     | opposite of line 23

#in summary: std-error is the percent of deviations from the mean, estimate std is even further the the left in terms of std. dev.
#and then the t-value is the value you want to find 
#p value is the probability that some value accurs. 
#t-value is the value that's greater than the t-value's std. dev from the means.
#coeff of variable from a linear model/std error=t-value
#permutation test: must shuffle response var. in a linear model, and then use the do() function to do it a few hundred times. 
#then find the values that were GREATER than the coeff you found on the original model, as we're interested in finding out how likely it is for something to 
#happen randomly i.e. shuffling. 

Inclass <- lm(wage~married+age+educ,data=cps)
coef(Inclass)
anova(Inclass)
inclass2 <- lm(wage~age+educ+married,data=cps) #linear model, order does not matter, order does matter for anova
coef(inclass2)
anova(inclass2)
Inclass <- lm(wage~married+age+educ,data=cps)
coef(Inclass)
Inclass3 <- lm(wage~married+educ+age,data=cps)
anova(Inclass3)