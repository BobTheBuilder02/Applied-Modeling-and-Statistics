#Daniel Minor, Chapter 13 HW
#Remark from Takata: Read very carefully
#Test Static: a number that is calculated from the data and summarizes the observed patterns of the data. 
#Hypothesis test:
#step 1: construct hypothetical world where you conjecture is true, and generating data from the simulation.
#13.2 inductive and deductive reasoning:
#deductive: hypothesis tester makes an assumption about how the world works and draws out the consequences of this
#assumtion: What the observed value of the rest statsisti should be if the hypothesis is true. 
#Inductive: tester compares actual observations to the deduced consequences of the assumptions and decides whether the obserations are consistent with them.
#Deductive reasoning: involves a series of rules that bring you from a given assumtion toto the consequences of those assumtions. 
#contrapositive: way of recasting in a new form tha twill be true so long as the orginal assumption is true. 
#null hypothesis: If hypothesis is true, then the statistic S will be drawn from a prob. dist. 
#P value: measure of the the plausability of an outcome.small value means its suprising, large value means not suprising.
#13.5 Rejecting by mistake: rejecting the null hypothesis is a mistake called type I error. 
#significance level: Threshold value of teh p-value below which the null should be rejected is a prob.: the prob. of rejecting the null in a world where the null 
#hypothesis is true. Note: significant level is a conditional prob. 
#13.6: failing to reject: Alternative hypothesis: pet idea of what the world is like if the null hypothesis is wrong. 
#POWER: prob. of rejecting the null in a world where the alternative is true is called the power of the hypothesis test.
require(mosaic)

dog <- c(1,2,3)
dog
#HW problem 2 for friday 4/29
earthquake <- rexp(100000, rate=.03)
sum(earthquake<= 10)/ 100000


#class notes: 
qnorm(c(.025, .975), mean=0, sd=1)
rm(galton2, mod, mod0, mod1, mod2, mod3, mod4, mod5, mod7)

#possible quiz question: 
qbinom(c(.1, .9), 162, prob=.6)

qexp(c(0.0,.25), rate=.03)

sample_norm <- rnorm(1000, mean=0,sd=1)
qdata(sample_norm, c(.025, .975))
