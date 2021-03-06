gapminder <- read.csv("gapminder_clean.csv", stringsAsFactors = FALSE)

#How to install a new package
install.packages("dplyr")

#Don't forget to load the package so we can use its functionality
library(dplyr)


# The five main Dplyr commands

# select() chooses columns/variables. This will keep only the variables you select.
# select()
select(gapminder, lifeExp)
select(gapminder, lifeExp, year, country, continent)

# filter()  chooses rows/observations based on conditions
# filter()

filter(gapminder, continent == "Asia")
filter(gapminder, year > 2000)

#We can also use outside information to help subset data.
two.countries <- c('Kenya', 'Gibon')
filter(gapminder, country %in% two.countries)

#%in% will enable you to search all lines in the column country for all character strings in the two.countries file 
#and will return a TRUE if it finds an one of them.



# dplyr works by piping commands, like you learned to do in the command line.  
# Instead of the pipe `|`, we use `%>%`.
gapminder %>% select(lifeExp) %>% min()
#How we would do it without dplyr
min(gapminder[,'lifeExp'])

#But we can do more complex things with dplyr
gapminder %>% select(-pop, -gdpPercap) %>% filter(continent == "Asia",year == 2007) 


# mutate()
# If we want to make a new column, use `mutate`.  Don't forget we have to assign it if we want to keep the changes
gapminder <- gapminder %>% mutate(NewColumn = lifeExp * 12)
gapminder


#Challenge 1
# Write a single command (which can span multiple lines and includes pipes) that will produce a 
# dataframe that has the African values for lifeExp, country and year, but not for other Continents. 
# How many rows does your dataframe have and why?
year_country_lifeExp_Africa <- gapminder %>%
  filter(continent == "Africa") %>%
  select(year, country, lifeExp)  
  

# Group_by() divides the dataframe into multiple data frames for each group value.
# Group_by() is much more exciting in conjunction with summarize(). This will allow 
# us to create new variable(s) by using functions that repeat for each of the continent-specific 
# data frames. That is to say, using the group_by() function, we split our original dataframe into 
# multiple pieces, then we can run functions (e.g. mean() or sd()) within summarize().
gapminder %>% 
  group_by(continent)
# gives us a data frame grouped by continent

# but that's not particularly useful. How about we get the mean life expectancy by continent? 
 gapminder %>% 
   group_by(continent) %>% 
   summarize(MeanLife = mean(lifeExp))

# How about by continent and year? 
gapminder %>% 
  group_by(continent, year) %>% 
  summarize(MeanLife = mean(lifeExp))

# Let's add on the standard deviation as well and save the dataframe  
continent_year <- gapminder %>% 
  group_by(continent, year) %>%
  summarize(MeanLife = mean(lifeExp),
            SdLife = sd(lifeExp)/sqrt(n()))

# let's plot this!
require(ggplot2)
ggplot(data = continent_year, 
         mapping = aes(x = year, y = MeanLife, color=continent)) + 
   geom_line() + 
   geom_errorbar(mapping = aes(ymin = MeanLife - SdLife, 
                                  ymax = MeanLife + SdLife,
                                  width = 0.3))



# Challenge 2 
# Create a new dataframe that contains the minimum (MinExp) and maximum (MaxExp) life 
# expectancies for each country.

MinMaxExp <- gapminder %>% 
  group_by(country) %>% 
  summarize(MinExp = min(lifeExp),
            MaxExp = max(lifeExp))

# Challenge 3
# Calculate the average life expectancy per country. Which has the longest average life 
# expectancy and which has the shortest average life expectancy?

lifeExp_bycountry <- gapminder %>%
  group_by(country) %>%
  summarize(mean_lifeExp = mean(lifeExp))
lifeExp_bycountry %>%
  filter(mean_lifeExp == min(mean_lifeExp) | mean_lifeExp == max(mean_lifeExp))
  






