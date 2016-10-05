require(mosaic)
cps <- read.csv("http://tiny.cc/mosaic/cps.csv")
head(cps)
cps

utils <- read.csv("http://tiny.cc/mosaic/utilities.csv")
head(utils)

xyplot(ccf ~ temp, data = utils)
xyplot(ccf ~ temp, data = utils, xlab = "Temperature (deg F)", ylab = "Natural Gas Usage (ccf)")
bwplot(wage ~ sex, data = cps)
bwplot(wage ~sector, data = cps, ylim = c(0,30))
bwplot(wage ~sector, data = cps)
densityplot( ~wage, groups = sex, data = cps, auto.key = TRUE)
densityplot( ~wage, groups = sector, data = cps, auto.key = TRUE)
densityplot( ~educ, groups = sex, data = cps, auto.key = TRUE)
densityplot( ~educ, groups = sector, data = cps, auto.key = TRUE)
densityplot( ~wage, groups = educ, data = cps, auto.key = TRUE)
densityplot( ~educ, groups = wage, data = cps, auto.key = TRUE)
#bwplot(wage ~educ, data = cps)#, ylim = c(0,45))
#mean(cps$wage)
bwplot(educ ~wage, data = cps)#, ylim = c(0,30))
max(cps$educ)
xyplot(wage ~age, groups = sex, data = cps, auto.key= TRUE)
#see line 249
xyplot(wage ~age | sex, data = cps)

swim <- read.csv("http://tiny.cc/mosaic/swim100m.csv")
head(swim)
mod1 = lm(time ~ 1, data = swim)
fitted(mod1)
mod1

xyplot(time + fitted(mod1) ~ year, data = swim)
mod2 = lm(time ~ 1 + year, data = swim)
#adding 1 adds the intercept into it.
#lm operator is the linear model funciton. It fits a linear line of best fit to the model
mod3 = lm(time ~ 1 + sex, data = swim)
#to the right of the tilde, is the response variable. To the left of the tilde is the explainatory variable.
mod4 = lm(time ~ 1 + sex + year, data = swim)
mod5 = lm(time ~ 1 + year + sex + year:sex, data = swim)
#year:sex means to multiply. Another way of writing this would be to right: year * sex
xyplot( fitted(mod5) + fitted(mod3) ~ year, data = swim)
#Plots mod, #could use auto.key=true to make the lines of the graph into different colors.

#xyplot( fitted(mod5) + fitted(mod3) ~ year, data = swim)
mod7 = lm(time ~ year + I(year^2) + sex, data = swim)
#by making it "I", it creates a unit. 
coef(mod7)
# time= 10,274-10.2y+.0025y^(2)-9.65sexM (Sex is the indicator variable)
xyplot( time + fitted(mod7) ~ year, data = swim)

#model value is the value that is output by the model
#residuals can be both negative and positive, and are difference between model values and the actual data.  

#interaction terms: