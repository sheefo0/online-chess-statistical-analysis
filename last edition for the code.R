par(bg = "white",        # Background color
    fg = "black",        # Foreground (borders) color
    col.axis = "black",  # Axis numbers color
    col.lab = "black",   # Axis labels (x, y) color
    col.main = "black",  # Title color
    col.sub = "black")   # Subtitle color


library("readxl")
chess_games <- read.csv("C:\\Users\\Admin\\Downloads\\games.csv")
View(chess_games)

chess_games$rated <- toupper(chess_games$rated)
rated <- chess_games$rated
id <- chess_games$id
turns <- chess_games$turns
victory_status <- chess_games$victory_status
winner <- chess_games$winner
increment_code <- chess_games$increment_code
white_id <- chess_games$white_id
white_rating <- chess_games$white_rating
black_id <- chess_games$black_id
black_rating <- chess_games$black_rating
moves <- chess_games$moves
opening_name <- chess_games$opening_name
chess_games$rating <- (chess_games$white_rating + chess_games$black_rating) / 2

## Quantitative Statistics (for each of the Numeric Variables)## 
#measures of central tendency
m_white_rating <- mean(white_rating)
med_white_rating <- median(white_rating)
#meausres of variation
Range_white_rating <- max(white_rating)-min(white_rating)
variance_white_rating <- var(white_rating)
sd_white_rating <- sd(white_rating)
iqr_white_rating <- IQR(white_rating)
# The 5-number Summary:
min_white_rating <- min(white_rating)
q1_white_rating <- quantile(white_rating, 0.25) #Q1 is the 25th percentile
q2_white_rating <- quantile(white_rating, 0.5) #Median = Q2 is the 50th percentile
q3_white_rating <- quantile(white_rating, 0.75) #Q3 is the 75th percentile
max_white_rating <- max(white_rating)
summary(white_rating)
# Suitable Graph (Boxplot and Histogram and Ogive):
boxplot(white_rating, horizontal = TRUE, main= "boxplot of White Rating")

hist_data <- hist(white_rating, main="Histogram of White Rating")

# 2. Get the *counts* from the histogram and calculate cumulative frequency
cum_freq <- cumsum(hist_data$counts)

# 3. Get the *upper bounds* from the histogram.
# hist_data$breaks[-1] means "give me all the breaks except the first one"
upper_bounds <- hist_data$breaks[-1]

# 4. Plot the upper bounds (x-axis) against the cumulative frequency (y-axis)
plot(upper_bounds, cum_freq, 
     type='o',  # 'o' means "overplotted" (points and lines)
     pch=19,    # 'pch' is the plot symbol (19 is a solid circle)
     col='blue',
     main="Ogive Plot for White Rating",
     xlab="White Rating", 
     ylab="Cumulative Frequency")
m_black_rating <- mean(black_rating)
med_black_rating <- median(black_rating)
#meausres of variation
Range_black_rating <- max(black_rating)-min(black_rating)
variance_black_rating <- var(black_rating)
sd_black_rating <- sd(black_rating)
iqr_black_rating <- IQR(black_rating)
# The 5-number Summary:
min_black_rating <- min(black_rating)
q1_black_rating <- quantile(black_rating, 0.25) #Q1 is the 25th percentile
q2_black_rating <- quantile(black_rating, 0.5) #Median = Q2 is the 50th percentile
q3_black_rating <- quantile(black_rating, 0.75) #Q3 is the 75th percentile
max_black_rating <- max(black_rating)
summary(black_rating)
boxplot(black_rating, horizontal = TRUE,main="boxplot of Black Rating")

hist_data <- hist(black_rating, main="Histogram of black Rating")

# 2. Get the *counts* from the histogram and calculate cumulative frequency
cum_freq <- cumsum(hist_data$counts)

# 3. Get the *upper bounds* from the histogram.
# hist_data$breaks[-1] means "give me all the breaks except the first one"
upper_bounds <- hist_data$breaks[-1]

# 4. Plot the upper bounds (x-axis) against the cumulative frequency (y-axis)
plot(upper_bounds, cum_freq, 
     type='o',  # 'o' means "overplotted" (points and lines)
     pch=19,    # 'pch' is the plot symbol (19 is a solid circle)
     col='red',
     main="Ogive Plot for black Rating",
     xlab="black Rating", 
     ylab="Cumulative Frequency")

m_turns <- mean(turns)
med_turns <- median(turns)
#meausres of variation
Range_turns <- max(turns)-min(turns)
variance_turns <- var(turns)
sd_turns <- sd(turns)
iqr_turns <- IQR(turns)
# The 5-number Summary:
min_turns <- min(turns)
q1_turns <- quantile(turns, 0.25) #Q1 is the 25th percentile
q2_turns <- quantile(turns, 0.5) #Median = Q2 is the 50th percentile
q3_turns <- quantile(turns, 0.75) #Q3 is the 75th percentile
max_turns <- max(turns)
summary(turns)

boxplot(turns, horizontal = TRUE, main="boxplot of Turns") 
hist_data <- hist(turns, main="Histogram of turns")


# 2. Get the *counts* from the histogram and calculate cumulative frequency
cum_freq <- cumsum(hist_data$counts)

# 3. Get the *upper bounds* from the histogram.
# hist_data$breaks[-1] means "give me all the breaks except the first one"
upper_bounds <- hist_data$breaks[-1]

# 4. Plot the upper bounds (x-axis) against the cumulative frequency (y-axis)
plot(upper_bounds, cum_freq, 
     type='o',  # 'o' means "overplotted" (points and lines)
     pch=19,    # 'pch' is the plot symbol (19 is a solid circle)
     col='green',
     main="Ogive Plot for turns",
     xlab="turns", 
     ylab="Cumulative Frequency")



####################################################################
## Qualitative Statistics for 'winner'
####################################################################
# Frequency table
f_winner <- table(winner)
print(f_winner)

# Proportions (%)
prop_winner <- prop.table(f_winner) * 100
print(prop_winner)

# Mode (most frequent category)
# Just look for the highest number in f_winner

# Suitable Graph (Bar Chart and Pie Chart):
barplot(f_winner, main="Bar Chart of Game Winner")
pie(f_winner, main="Pie Chart of Game Winner")



####################################################################
## Qualitative Statistics for 'rated'
####################################################################
# Frequency table
f_rated <- table(rated)
print(f_rated)

# Proportions (%)
prop_rated <- prop.table(f_rated) * 100
print(prop_rated)

# Mode (most frequent category)
# Just look for the highest number in f_rated

# Suitable Graph (Bar Chart and Pie Chart):
barplot(f_rated, main="Bar Chart of rated players")
pie(f_rated, main="Pie Chart of rated players")

####################################################################
## Qualitative Statistics for 'increment_code'
####################################################################
# Frequency table
f_increment_code <- table(increment_code)
print(f_increment_code)

# Proportions (%)
prop_increment_code <- prop.table(f_increment_code) * 100
print(prop_increment_code)

# Mode (most frequent category)
# Just look for the highest number in f_increment_code

# Suitable Graph (Bar Chart and Pie Chart):
barplot(f_increment_code, main="Bar Chart of increment_code")
####################################################################
## Qualitative Statistics for 'victory_status'
####################################################################
# Frequency table
f_victory_status <- table(victory_status)
print(f_victory_status)

# Proportions (%)
prop_victory_status <- prop.table(f_victory_status) * 100
print(prop_victory_status)

# Mode (most frequent category)
# Just look for the highest number in f_victory_status

# Suitable Graph (Bar Chart and Pie Chart):
barplot(f_victory_status, main="Bar Chart of victory_status")
pie(f_victory_status, main="Pie Chart of victory_status")


# phase 2


# 1. Test if the mean White Rating is equal to 1500
t.test(white_rating, mu=1500, alternative ="two.sided")

# 2. Test if the mean number of Turns is equal to 60
t.test(turns, mu=60, alternative ="two.sided")


#for each categorical variables with only two categories test proportions of the two groups are equal or not

# 3. Test if the proportion of White wins is equal to 0.5 (50%)
x_white = sum(winner == "white")
n_winner = length(winner)
x_white
prop.test(x_white, n_winner, p=0.5, alternative = "two.sided", correct = FALSE)

# 4. Test if the proportion of games ending in "Resign" is equal to 0.5 (50%)
x_resign = sum(victory_status == "resign")
n_status = length(victory_status)
x_resign
prop.test(x_resign, n_status, p=0.5, alternative = "two.sided", correct = FALSE)


#phase 3
v=aov(white_rating~winner,data=chess_games)
summary (v)


regression_model <- lm(chess_games$black_rating ~ chess_games$white_rating)

# 2. View the Key Statistics (Slope and R-squared)
summary(regression_model)

# 3. Create the Visualization (Scatter Plot with Line)
plot(chess_games$white_rating[1:1000], chess_games$black_rating[1:1000],
     main = "Regression: White Rating vs. Black Rating",
     xlab = "White Rating",
     ylab = "Black Rating",
     pch = 19, col = "gray",
     cex = 0.5) # cex makes the dots smaller so it looks neater

# 4. Add the Regression Line (Red)
abline(regression_model, col = "orange", lwd = 2)

regression_model <- lm(chess_games$turns ~ chess_games$rating)

# 2. View the Key Statistics (Slope and R-squared)
summary(regression_model)

# 3. Create the Visualization (Scatter Plot with Line)
plot(chess_games$rating[1:1000], chess_games$turns[1:1000],
     main = "Regression: Rating vs. Turns",
     xlab = "Rating",
     ylab = "Turns",
     pch = 19, col = "gray",
     cex = 0.5) # cex makes the dots smaller so it looks neater

# 4. Add the Regression Line (Red)
abline(regression_model, col = "orange", lwd = 2)


# Select only the numerical variables
numerical_vars <- chess_games[, c("white_rating", "black_rating", "turns")]

# Calculate the correlation matrix
cor_matrix <- cor(numerical_vars)

# Print it
print(cor_matrix)