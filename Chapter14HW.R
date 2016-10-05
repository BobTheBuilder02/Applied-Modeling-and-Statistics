#Hypothesis Testing on Whole Models
#The null hypothesis is about the population.
#null hypothesis is that the explan. variables are unlinked with the response variables.
#each possible order for the left halves is a permuation. Hypothesis tests conducted this way are permutation tests.
#step 1: Calculate values of the test statistics on the original data.
#step 2: permute the data and caculate the test stat again. repeat many times collecting the results. 
#step 3: read off p values as the fraction of the results in (2) that are more extreme than the value in (1).
#14.2 R^2 and the f statistic
#F stat compares the size of the fitted model values to the size of the residuals. f= slope of model segment(r^2/m-1)/slope of residual segment(1-r^2/n-m)
#14.3 The ANOVA Report: Analysis of variance.
require(mosaic)
Galton
mod <- lm(height~sex+mother, data=Galton)
coefficients(mod)

#why use a permutation test? shuffle the exp. variable, and then look at p values, and if it is small, that means it doesn't happen often at random, so it might be true.
#if adjusted r squared is close to r squared, then the explan. variables are good model values. 
#for permutation test, do not randomize whole data frame. instead, shuffle only the response variable.

do(5)* lm(shuffle(height)~sex+mother, data=Galton)

nullTrials <- do(500)* lm(shuffle(height)~sex+mother, data=Galton)
nullTrials
tally(~r.squared > .5618, nullTrials)

#first principle test
mod <- lm(height~sex+mother, data=Galton)
summary(mod)

1-pf(574.2, 2,895)
#p value must be less than .05, which is about two standard deviations.


