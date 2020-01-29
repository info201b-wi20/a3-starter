# a3-using-data

# Before you get started, set your working directory using the Session menu

# Delete all variables in your workspace.
# This will make it easier to test your script.
rm(list = ls())

###################### Data Frame Manipulation (24 POINTS) #####################

# Create a vector `students` holding 1,000 values representing students
# They should have the values "Student 1", "Student 2",..., "Student 1000"


# Create a vector `math_grades` that holds 1000 random values in it
# (these represent grades in a math course)
# These values should be normally distributed with a mean of 88 and a
# standard deviation of 10
# Hint: Lookup `rnorm()`


# In the `math_grades` vector, replace any values that are above 100 with
# the number 100
# Hint: Use bracket notation


# Create a vector `spanish_grades` that holds 1000 random values in it
# (these represent grades in a spanish course)
# These values should be normally distributed with a mean of 85 and a
# standard deviation of 12
# Hint: Lookup `rnorm()`


# In the `spanish_grades` vector, replace any values that are above 100 with
# the number 100
# Hint: Use bracket notation


# Create a data frame variable named `grades` by combining
# the vectors `students`, `math_grades`, and `spanish_grades`
# Make sure to properly handle strings


# Create a variable `num_students` that counts the
# number of rows in your dataframe `grades`


# Create a variable `num_courses` that counts the number of courses stored 
# in the columns of your `grades` data frame


# Add a new column `grade_diff` to your data frame, which is equal to
# `grades$math_grades` minus `grades$spanish_grades`


# Add another column `better_at_math` as a boolean (TRUE/FALSE) variable that
# indicates that a student got a better grade in math


# Create a variable `num_better_at_math` that is the number
# (i.e., one numeric value) of students better at math


# Write your `grades` dataframe to a new .csv file inside your data/ directory
# with the filename `grades.csv`. Make sure *not* to write row names.
# (you'll need to create the `data/` directory, which you can do outside of R)


########################### Built in R Data (28 points) ########################

# In this section, you'll work with the variable `Titanic`, a data set which is 
# built into the R environment.
# This data set actually loads in a format called a *table*
# See https://cran.r-project.org/web/packages/data.table/data.table.pdf
# Use the `is.data.frame()` function to test if it is a table.


# Create a variable `titanic_df` by converting `Titanic` into a data frame;
# you can use the `data.frame()` function or `as.data.frame()`
# Hint: Be sure to **not** treat strings as factors!


# It's important to understand the _meaning_ of each column before analyzing it
# Using comments below, describe what information is stored in each column
# For categorical variables, list all possible values
# Class: YOUR ANSWER HERE
# Sex: YOUR ANSWER HERE
# Age: YOUR ANSWER HERE
# Survived: YOUR ANSWER HERE
# Freq: YOUR ANSWER HERE


# Create a variable `children` that is a data frame containing only the rows 
# from `titanic_df` with information about children on the Titanic
# Hint: Use bracket notation


# Create a variable `num_children` that is the total number of children.
# Hint: Remember the `sum()` function!


# Create a variable `most_lost` that is the *row* from `titanic_df` with the
# largest absolute number of losses (people who did not survive)
# You can use multiple lines of code if you find that helpful 
# to create this variable
# Hint: Filter for those who did not survive, then look for the row


# Define a function called `survival_rate()` that takes in two arguments which
# must be in *the following order*:
# - a ticket class (e.g., "1st", "2nd"), and
# - the dataframe itself (it's good practice to explicitly pass in data frames)
#
# This function should return a sentence that states the *survival rate* 
# (# survived / # in group) of adult men and "women and children" in that 
# ticketing class.
# It should read (for example):
# "Of Crew class, 87% of women and children survived and 22% of men survived."
#
# This is a complicated function! We recommend the following approach:
# - Filter for all rows representing the given ticketing class and save the
#   new data frame to a variable
# - Using this data frame, filter for all rows representing Adult Males
# - Find the total number of men and total number of male survivors to
#   calculate the survival rate
# - Likewise, use the data frame to filter for all Children and Adult Females
# - Perform the above calculation for this group as well
#
# Other approaches are also acceptable, please comment to explain what you do!


# Create variables `first_survived`, `second_survived`, `third_survived` and
# `crew_survived` by passing each class and the `titanic_df` data frame
# to your `survival_rate` function


# What notable differences do you observe in the survival rates across classes?
# Note at least 2 observations.
# YOUR ANSWER HERE

# What notable differences do you observe in the survival rates between the
# women and children versus the men in each group?
# Note at least 2 observations.
# YOUR ANSWER HERE


########################### Reading in Data (43 points)#########################

# In this section, you'll work with .csv data of life expectancy by country
# First, you should download a .csv file of `Life Expectancy` data from GapMinder:
# https://www.gapminder.org/data/
# You should save the .csv file into your `data` directory


# Before getting started, you should explore the GapMinder website to understand
# the *original* source of the data (e.g., who calculated these estimates)
# Place a brief summary of the each data source here (e.g., 1 - 2 sentences
# per data source)
# YOUR ANSWER HERE


# Using the `read.csv` function, read the life_expectancy_years.csv file into
# a variable called `life_exp`. Make sure not to read strings as factors


# Write a function `get_col_mean()` that takes in a column name and a data frame
# and returns the mean of that column. Make sure to properly handle NA values
# Hint: `mean()` takes in an argument called `na.rm`


# Create a list `col_means` that has the mean value of each column in the
# data frame (except the `Country` column). You should use your function above.
# Hint: Use an `*apply` function (lapply, sapply, etc.)


# Create a variable `avg_diff` that holds the difference in average country life
# expectancy between 1800 and 2018


# Create a column `life_exp$change` that is the change in life 
# expectancy from 2000 to 2018. Increases in life expectancy should
# be *positive*


# Create a variable `most_improved` that is the *name* of the country
# with the largest gain in life expectancy. Make sure to filter NA values
# Hint: `max()` takes in an argument called `na.rm`


# Create a variable `num_small_gain` that has the *number* of countries
# whose life expectance has improved less than 1 year between 2000 and 2018
# Make sure to filter NA values
# Hint: Lookup `is.na()`


# Write a function `country_change()` that takes in a country's name,
# two (numeric) years, and the `life_exp` data frame as parameters *in that order*.
# It should return the phrase:
# "Between YEAR1 and YEAR2, the life expectancy in COUNTRY went DIRECTION by
# SOME_YEARS years".
# Make sure to properly indictate the DIRECTION as "up" or "down"
# Hint: Use an if/else statement to help compute DIRECTION


# Using your `country_change()` function, create a variable `sweden_change`
# that is the change in life expectancy from 1960 to 1990 in Sweden


# Write a function `compare_change()` that takes in two country names and your
# `life_exp` data frame as parameters, and returns a sentence that describes
# their change in life expectancy from 2000 to 2018 (the `change` column)
# For example, if you passed the values "China", and "Bolivia" to you function,
# It would return this:
# "The country with the bigger change in life expectancy was China (gain=6.9),
#  whose life expectancy grew by 0.6 years more than Bolivia's (gain=6.3)."
# Make sure to round your numbers to one digit (though only after calculations!)
# Hint: Use an if/else statement to paste the countries in the correct order


# Using your `bigger_change()` function, create a variable `usa_or_france`
# that describes who had a larger gain in life expectancy (the U.S. or France)


# Write your `life_exp` data.frame to a new .csv file to your
# data/ directory with the filename `life_exp_with_change.csv`.
# Make sure not to write row names.
