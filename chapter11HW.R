#Applied Modeling and Statistics--Chapter 11: Modeling Randomness, HW, Daniel Minor
#11.1 Describing Pure Randomness:
#Consider an Event whose ougcome is completely random. For example, a coin flip. 
#probability: a value between 0 and 1.
#Probability model: assigns a probability to each member of the outcome set.
#frequentist view: basing a probability proportional to how many times an outcome happens after a large number of trials.
require(mosaic)
coin <- c("H", "T")
resample(coin, 5)

die <- seq(1,6)
die
resample(die, 2)

resample(coin, 10, prob=c(.9,.1))
samps <-rnorm(15, mean=1000, sd=75)
samps
mean(samps)
sd(samps)

samps <-rnorm(100000, mean=1000, sd=75)

#More trials, the more the mean becomes closer to what we set.
mean(samps)
sd(samps)

samps <-rbinom(40, size=3, prob=.63)
samps

tally(samps)
#
rpois(25, lambda=15)
rexp(15, rate=.03)

rbinom() #randomly picks values from a binomial distribution
qnorm(c(0,.025, .975), mean=0, sd=1) #
qbinom(.5, size=500, prob=.5) #input qantiles, and outputs values.
pbinom(270, 500, prob = .5) #put values in, and you get the quantile out, kind of the inverse of the qbinom (500 trials, 270 heads gives 230 tails(230+270=500; 270-230=40 head difference))
qpois(c(.025, .975), lambda = 15) #lamda is the average number of customers in any given hour
qexp(c(.025, .975), rate=.03)
qexp(.25, rate=.03)


samps <- rnorm(10000, mean=0, sd=1)
#Had to change around the order of the arguments
qdata( samps, c(.025, .975))

pnorm(670, mean=600, sd=100)

qnorm(.85, mean=600, sd=100)

head(cps)

truckeragestuff <- lm(earnings ~ sex+age, data=truckingjobs)
coef(truckeragestuff)=
  
critical <- rpois(1000, lamda=1/20)
tally(critical)
