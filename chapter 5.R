require(mosaic)
head(Whickham)
#use the " + " operator to get both of the data things.
mea(outcome=="Alive"~smoker+ageGroups, data=whickham)
histogram(mean(outcome=="Alive"~smoker, data=Whickham),break=c(0,10,20,30,40,50,60,70,80,90,100))
resid()
gwm