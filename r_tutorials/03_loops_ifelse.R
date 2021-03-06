# This lesson is based on SCW's 
# R for Reproducible Scientific Analysis, lesson 07
# http://swcarpentry.github.io/r-novice-gapminder/07-control-flow/index.html

# Explain the basics components of a loop and what it's doing
# Loops take an empty variable, define it as en element from a list/vector
for(i in 1:10){
  print(i)
}

# Loops can be inside loops
for(i in 1:3){
  for(j in c('a','b','c')){
      print(paste(i,j)) #Because of datatype limitations, 
                        #we need to use the paste function, 
                        #which converts data to characters concatinates it with a space between elements
}
}

#Quick for loop example
gapminder <- read.csv("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder_data.csv", stringsAsFactors = FALSE)

for(cont in unique(gapminder$continent)){
  life.min <- min(gapminder[gapminder$continent == cont, 'lifeExp'])
  life.max <- max(gapminder[gapminder$continent == cont, 'lifeExp'])
  print(paste0('The life expectancy in ',cont,' is ',life.min,' to ',life.max))
}
#Here we are taking each element in unique(gapminder$continent) and 
#sequentially assigning it to the variable cont (which is completely arbitrary; it could easibly be continent, cont, x, y, z). 
#The variable cont is then used in the code to perform a function.

#Let's use a different variable and see if we get the same results.
for(blah in unique(gapminder$continent)){
  life.min <- min(gapminder[gapminder$continent == blah, 'lifeExp'])
  life.max <- max(gapminder[gapminder$continent == blah, 'lifeExp'])
  print(paste0('The life expectancy in ',blah,' is ',life.min,' to ',life.max))
}


#Let's try out a for loop 
#In this exercise, we want to make a vector that contains the square of the integers from a vector 
m <- c()
m
for (i in 1:5){
  m = c(m,i^2)
  print(m)
}
print(m)


#When coding sometimes you want a particular function to be applied if a condition is true and 
#sometimes a different function if it is not. To do this you need to use an if or if...else statement

#Basic structor of "if ... else" is
# if (test_expression) {
#   statement1
# } else {
#   statement2
# }

#In a simple if statement, a function is executed if the test expression is true while it is ignored entirely if it is false.
x <- 5
if (x > 0) {
  print('Positive number')
}


#Here the else statement is only used if the first test expression is false, 
#if the first test expression is true then statement1 will be run.

x <- -5
if(x > 0) {
  print('Positive number')
} else {
  print('Negative number')
}
#Here, `x > 0` is `FALSE`, so the if statement is not executed and instead the else statement is executed.


#You can nest as many if...else statements as you want.
x <- 0
if(x > 0) {
  print('Positive number')
} else if (x < 0) {
  print('Negative number')
} else {
  print('Zero')
}

# We can combine loops with if else statments to help filter for specific data
for(x in c(-5,-3,0,1,5)){
  if(x > 0) {
    print(paste(x,'Positive number'))
  } else if (x < 0) {
    print(paste(x,'Negative number'))
  } else {
    print(paste(x,'Zero'))
  }
}

# Multiple choice and an exercise

# What would be the output of the following code:
# x <- -6
# if(x > 0){
#   print('x is greater than zero')
# }

# A. x is greater than zero
# B. x is less than zero
# C. nothing
# D. an error message

# How could you change the code so that if x is less than 0 you get a message saying 'x is
# less than zero'? 



#Here, `x > 0` is `TRUE`, so the if statement is executed, and the statement is printed.
#Let's try this with the gapminder dataset. The world mean life expectancy is 71.5 years. 


#Combining loops with if ... else
meanLifeExp <- mean(gapminder$lifeExp)
#Let's have a `'Greater than avg.'` statement returned if the value within the 'lifeExp' col exceeds that.
for(x in gapminder$lifeExp){
  if(x > meanLifeExp){
    print(paste0(x, ' is greater than avg.'))
  }
}


# Challenge
# Write a script that loops through the gapminder data by continent and prints out whether the mean life expectancy 
# is smaller or larger than 50 years.

# Answer
for(cont in unique(gapminder$continent)){
  if(mean(gapminder[gapminder$continent == cont, 'lifeExp']) > 50){
    print(paste(cont, 'lifeExp is above average'))
  }
  else if (mean(gapminder[gapminder$continent == cont, 'lifeExp']) < 50){
    print(paste(cont, 'lifeExp if below average'))
  }
  else{
    print(paste(cont, 'lifeExp is average'))
  }
}


# Cool exercise if we have time
# Or maybe make as part of the Day 2 Challange?
# We can use grep in R!
grep("^B", unique(gapminder$country))
# The above shows us where country's start with (the "^") a capital B (the "B") are in 
# the gapminder$country vector

grep("^B", unique(gapminder$country), value=TRUE)
# Here we see the actual countries that grep finds






