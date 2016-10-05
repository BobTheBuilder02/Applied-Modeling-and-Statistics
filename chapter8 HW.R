#8.4
require(mosaic)
swim <- fetchData("swim100m.csv")
#cross-function: only works on categorical variables, grosses two variables. Ex: ~cross(sex,race)
mod1 <- lm(time~ year +sex, data=swim)
coef(mod1)
fitted(mod1)
#8.5
mean(fitted(mod1))
var(resid(mod1))
sd(resid(mod1))
summary(resid(mod1))
#How to calculate sum or squares for response values, the fitted model values, and the residuals.
sum(swim$time^2)
sum(fitted(mod1)^2)
sum(resid(mod1))

#Don't forget the squaring stage of operation! the sum of the residuals (without squaring) is much different from the sum of the squares of the residuals
sum(resid(mod1))
sum(resid(mod1)^2)

#8.5 redundancy
swim <- transform(swim, afterwar= year-1945)
#here is the model that doesn't involve redundancy
mod1 = lm(time~year+sex,data=swim)
coef(mod1)
#when the redundant variable is added in, LM successfully detects the redundancy and handles it. This is indicated by a coefficient 
mod2 <- lm(time ~ year+sex+afterwar, data=swim)
coef(mod2)
#identifies year as the redundant variable
mod3 <- lm(time~afterwar+year+sex, data=swim)
coef(mod3)

fitted(mod2)
fitted(mod3)
#note whenver you use a categorical and an intercept term in a model, there is redundancy
lm(time~sex-1, data=swim)

#classnotes: lm(temp~as.factor(month), data=utils)
#correlation between height of mother and father and the child they have. How to get this?
#when you make a linear model, the coefficient infront of males was larger. 

#you get intercept of 46.7, and mother= .31
#so the response variable is height, so the formula is: height=46.7+.31(mom)

#mod3= lm(height~mother+father+mother*father+1, height=galton)
#this is an example of an interaction term, the multiplication thing. 

mean(height~sex, data=Galton)
diff(mean(height~sex, data=Galton))
#how many terms will this have?
mod7=lm(height~mother*father*sex+1, data=Galton)
# 7 terms plus the intercept. mother, father, sex, mother:father, mother:sexM, father:sexM, mother:father:sex.

#how would we write code that returns something like this equation? lm(height~father+1, data=galton)
#how does R get the values for a lm? It tests which line is the best based off of minimizing the residuals.
#response variable=y, explainatory variable=x
require(mosaic)
mean(wage~sector, data=cps)
mod1 <- lm(wage~sector+1, data=cps)
coef(mod1)
lm(wage~educ+1, data=education)



#in class stuff
sat <- read.csv("http://tiny.cc/mosaic/sat.csv")
head(sat)
mod5 <- lm(sat~frac+1, data=sat)
coef(mod5)
sat
max(sat$frac)
mean(fitted(mod1))
mean(swim$time)

#variance(actual) > variance(model)

Galton
galton2 <- lm(height~sex, data=Galton)
model <-fitted(galton2)
coef(galton2)
var(Galton$height)
var(model)
var(resid(model))
