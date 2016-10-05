
#Problem 1:
require(mosaic)
Galton
mean(height, data=Galton)
median(height, data=Galton)
sd(height, data=Galton)
var(height, data=Galton)


#Problem 2: What does pdata do?
#gives you the percentile a given input is in 
pdata(height, 63, data=Galton)


#problem 3:
pdata(height, 63, data=Galton)
#had to switch height and 63 to get it to work
mean(height<=63,data=Galton)
#note sure how these came out to be the same, maybe they're calculated similarly. 

#Problem 4: Find mean between 63 and 65
mean((height>=63) & (height <=65), data=Galton)
#returns zero, feels wrong. 

#problem 5
qdata(height, 0.192, data=Galton)
#Pretty much undoes the pdata

#problem 6:Explain the output of the code below
qdata(height, c(0.25, 0.75), data = Galton)
qdata(height, c(0.25, 0.5, 0.75), data = Galton)
#tells you values that are at each quartile

#problem 7:
qdata(height, c(seq(.1, 1, .1)), data=Galton)
#Problem 8: Describe what's going on
range(height, data=Galton)
qdata(height, c(0,1), data=Galton)
#A: This returns the smallest and largest heights, which are 56 and 79. Note how this information
#is also output with the quantile function qdata() if we input 0 and 1

#problem 9: Use the qdata() function to find the median of the data
qdata(height, .5, data=Galton)
median(height, data=Galton)

#problem 10
daniel <- c(2,10)
diff(daniel)
#subtracts 10-2=8, i.e the difference

#problem 11: output the difference in values between the 1st quartile and the third
qdata(height, c(0.25,0.75), data=Galton,[1])
diff( qdata(height, c(0.25, 0.75), data=Galton,[1]))
vector <- qdata(height, c(0.25, 0.75), data=Galton)$quantile
diff(vector)
#won't work
dog <-  qdata(height, c(0.25, 0.75), data=Galton)
diff(quantile)
#still doesn't work


#problem 12: Can diff take in a vector of more than 3 values?
diff(c(2,5,10))
#outputs the difference between every two numbers 

#problem 13: Out put the differnce in heights for each dicile
#each of ten equal groups into which a population can be divided according to the distribution of values of a particular variable.


#14: describe a histogram and what code to do one
#A histogram is a graph that shows for every set of values how many/what percentage of the values are in whatever range you choose

#15: Do bins in a histogram need to be the same size? Not necessarily, but it does add clarity, but there are probably advantages to wanting different sized bins. 

#problem 16: Explain the following code
histogram( ~height, data= Galton)
#make a histogram of all the data. remark: it looks roughly like a bell curve

#problem 17: How do you think r selects bin size? 
#Looks like the bin size is chosen to best fit a bell curve
histogram( ~c(seq(1,300,1)))

#Problem 18: NO TIME MR. TAKATA

#Problem 19: What is the difference between the two historgrams below?
histogram( ~height, data= Galton)
histogram( ~height, data= Galton, type = "count")
#The histogram that takes in an extra argument changes the variable that will be listed on the y-axis

#problem 20: What's the difference between the two lines of code?
histogram( ~height, data= Galton)
histogram( ~height, data= Galton, type = "density")
#I'm not seeing any difference here. 

#Problem 21: What does the code below do?
histogram( ~height, data= Galton, type = "density",xlab="Height (inches)", main="Distribution of Heights", col="gray")
#takes in heights, sets the y-axis to be density, changes the x-axis to display what it says, main lets you name the graph, and col lets you pick the color of the fill

#Problem 22: Compare the histogram and density plot
densityplot(~height, data=Galton)
#makes density/rug plot that has little slashes at the bottom
densityplot(~height, data=Galton, plot.points=FALSE)
#same thing, but the little slashes at the bottom do not appear meow

#Problem 23: Describe probability density functions for the height of participants in the Galton experiment. 
#There are two properties that it must have. What are they?          

#Problem 24: Explain what a box and whisker plot is.
#made with the commmand bwplot(~height, data=Galton)
#the median is represented by a head dot. Outliers if any, are marked by dots outside the whiskers.
#Good for comparing distributions. Shows the differfent quartiles of data.

#Problem 25: Compare the output of the two lines of code below.
qdata(height, c(0.25, 0.5, 0.75), data=Galton)
bwplot( ~height, data=Galton)
#The qdata is shows the exact values at the 1st, 2nd(median), and 3rd quartile, 
#whereas the bwplot is a graph with similar data that also shows outliers and min and max

#Problem 26: Explain, in informal terms, what an outlier is. How are outliers represented in box and whisker plots?
#Outliers are values that are far outside variance. This sometimes leads to them being excluded in calculations. 
#Outliers on a bwplot are represented by empty circles beyond the whiskers of the plot.

#Problem 27: True
#In constructing the box and whiskers plot, R determines where the dotted lines to the far left and
#right in the plot using the following criterion: the 2nd percentile and the 98th percentile.
#After 20 minutes of searching, I could not find data on the answer online. But it would appear to be true based off of what I can see from the examples of bwplot in previous problems.

#problem 28: Describe the output
bwplot( height ~sex, data=Galton)
#puts height on the y-axis, and creates two plots, one for m and one for F
bwplot( sex ~height, data=Galton)
#puts the height on the x-axis, and creates two plots, one for M and one for F

#Problem 29: Describe the output
bwplot( nkids~height, data=Galton)
#Creates 12 bwplots for each number of kids, puts height on the x axis- and nkids on the y-axis

#problem 30: Describe the output of the code
bwplot( height ~nkids, data=Galton)
#Guess before execution of code: Swaps the axis of data
#answer: correct, also note how skinny the plots got.

#problem 31: Different families had different numbers of children. We might be interested in knowing how the height of the mother had some affect on the number of children. Find the type of family
#that had the largest average height of mother. Also the type of family that had the largest difference between the first and third quartile. 
#A for first part of Question: That would be a the set of mothers that had 11 kids. The largest average height was 66.5
Galton
max(median(mother~family, data=Galton))
#part 2: Unclear wording, but I think this is what is being asked of me.
data <- qdata(height~family, c(.25,.75), data=Galton)
diff( .25 ,data=data)
bwplot(nkids~mother, data=Galton)
#Problem 32: One expects that the height of the father and of the mother will have some effect on
#the height of the children. Create a new variable, parentHeight, which is the sum of the heights of
#the father and mother, and plot parentHeight against the height of the children.
sum(father~height, data=Galton)
parentHeight <- +sum()
Galton
require(mosaic)
Galton
percent<-pdata(height, 70, data=Galton)
takata<-1-percent
takata
