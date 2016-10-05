#Chapter 10, Total and Partial Relationships
#experiment: causing one explanatory variable to vary, hold all other conditions constant, and observe the response.
#10.1 Total and Partial Relationships
#"All other things being equivolent"=ceteris paribus 
#additional variables are called covariates, or confounders
#partial relationships: describes a relationship with one or more covariates being held constant. 
#total relationship: How an explanatory variable is related to a response variable letting those other explanatory variables change as they will. (Latin: Mutatis mutandis)
#simpson's paradox example: this year, golden state shoots 49% from 2(1000/2128), and 45% from 3 (1000/2223), the spurs shoot 48%(2000/4167)  from 2, and 44%(600/1364).
#Golden state shoots better from 2 and 3, but The spurs have a better field goal percentage due to simpsons rule. GS: 46% (2000/4351): Spurs 47% (2600/5531)
#10.2: Explicityly Holding Covaraites Constant
#10.3 Adjustment and Truth
#The alignment of model vectors and covariates is called collinearity.
#10.5 Computational Technique
require(mosaic)
mod0 <- lm(wage~sex,data=cps)
summary(mod0)
mod1 <- lm(wage~age+sex+educ+sector,data=cps)
summary(mod1)
small <- subset(cps,age <=35 & age >= 30 & educ >=10 & educ <=12 & sector == "sales")
mod4 <- lm(wage~sex, data=small)
summary(mod4)
#how are covariates dealt with in the experimental method? holding all the covariates the same. 
truckingjobs <- read.csv("http://tiny.cc/mosaic/truckingjobs.csv")
head(truckingjobs)
mod3 <- lm(earnings~age+sex, data=truckingjobs)
truckermen <- subset(truckingjobs, sex=="M")
truckerwomen <- subset(truckingjobs, sex=="F")
lm(earnings~age, data=truckermen)
lm(earnings~age, data=truckerwomen)



used_honda <- read.csv("http://tiny.cc/mosaic/used-hondas.csv")
head(used_honda)

lm(Price ~ Mileage, data=used_honda)
xyplot(Price ~Mileage, data=used_honda)
#hold other variables constant, and look at how one of the other ariables change. 
