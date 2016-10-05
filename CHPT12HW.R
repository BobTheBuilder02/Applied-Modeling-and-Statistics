#Daniel Minor Chapter 12 HW
#resampling distribution: sampling the data collected 
#regression report: provides estimate for standard error.
#Confidence interval is given in the regression report
#point estimate: the cetner of the confidence interval
#margin of Error: half of the width of the confidence interval.
#confidence level: the percentage of the coverage interval. 
#12.4 confidence in predictions: Prediction confidence interval: takes into account the spread of the cases around their model values: the residuals. 
#standard error of B: residuals || 1/b*(1/sin(theta))*1/sqrt(n) * sqrt(n/n-m)
#to have good models, use lots of data, unclude terms that account for variation in response, avoid collinearity.
mod <- lm(time~year+sex, data=swim)
summary(mod)
#margin of error tells you about the precision. doesn't tell you about accuracy, though.
confint(mod)
require(mosaic)

s <- do(500) * lm(time~year+sex, data=resample(swim))
s
#to find standard error of coefficents, do:
sd(s)
confint(s, method="stderr")
feet <-read.csv("http://tiny.cc/mosaic/kidsfeet.csv")
names(feet)

with(data=feet, levels(sex))
mod <- lm(width~length+sex,data=feet)

#makes your linear model into a function so one can use it to make predictions
f <- makeFun(mod)

#how to use new function
f(length=25, sex="G")



#standard error: is the standard deviation of the sampling distribution of a statistic, most commonly of the mean.
#confidence interval: 