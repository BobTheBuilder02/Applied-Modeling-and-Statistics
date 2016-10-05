#chpt 9 HW Daniel Minor
#R^2= (variance of fitted model values)/(variance of response values), another name for R^2 is coefficent of determination
#Value of R^2 is always beteween 0 and 1. when it =0,the model accounts for none of the variance of the response values--The model is useless. when R^2 is equal,
#to 1, the model captures all of the variance

#wage~sex*married: r^2=.07, #ccf~temp : r^2=.91
#sex and marital status explain only a small fraction of the variation in wages, temp explains a lot 

#9.2 correlation coefficient: it just just "r", obviously can be both negative and positive, it can be calculated by by taking the sqaure root of R^2, obviously.

#9.3
#The higher the r value, the lower the angle is, when angle goes from 0 to 180. (angles greater than 90 give negative angles)
#Like in calc III, vectors that are at 90 degree angles are perpendicular.

#9.4 nested models
#i love daniel because Brittany loves daniel and daniel loves brittany and brittany loves daniel
#Nested models is where there are two models, one large that has all the explainatory variables, and a small model nested within the large model.
#Ex. Model 1: height~1; model 2: height~1+mother; model 3: height~1+mother+sex; model 4: height~1+mother+sex+mother:sex #model 1,2&3 are all nested within 4.

#9.5
#model subspace is the space that the two vectors project

#9.6 Computational technique 
require(mosaic)
swim = fetchData("swim100m.csv") 
mod <- lm(time~year+sex, data=swim)
withs(swim, var(fitted(mod)), var(time))
#!!!!!!#Why is this giving me a value of 82.99, not .844??? Probably still using the transformed swim, and fetchdata is not fetching the correct file for some reason
#regression report is a standard way of summarizing models. 
summary(mod)
mod2 <- lm(time~year, data=swim)
summary(mod2)
sqrt(.5965) #sqrt of r^2 which already was found to equal .5965
#the cor() function computes this directly.
with(swim,cor(time,year))
#outputs -.772


