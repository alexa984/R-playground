data = read.csv("data.csv", header=TRUE)

#gender
plot(data$Gender, col=c('bisque', 'antiquewhite')) # distribution male/female
    
#age
histogram <- hist(data$Age, breaks=30, main="Age", xlab="Age", col="tomato", labels=levels(data$Age), xaxt='n')
axis(1, at=unique(data$Age), labels=levels(data$Age))

# activity level
barplot(table(data$Activity.level),main="Activity level", xlab="activity level", col="darkmagenta", space=0)

my_max <- function(x) ifelse( !all(is.na(x)), max(x, na.rm=T), NA)
my_min <- function(x) ifelse( !all(is.na(x)), min(x, na.rm=T), NA)

#with norm curve
xfit <- seq(my_min(data$Activity.level), my_max(data$Activity.level), length=50)
yfit <- dnorm(xfit, mean=mean(data$Activity.level, na.rm=T), sd=sd(data$Activity.level, na.rm=T))
yfit <- yfit * diff(histogram$mids[1:2]) * length(data$Activity.level)
lines(xfit, yfit, col="red", lwd=3)

#check distribution
emp <- data$Activity.level
d <- rnorm(n = 10^3, mean = mean(emp), sd = sd(emp))
qqplot(emp, d, ylab = "theoretical distribution", main = "Check for normal distr")
abline(a = 0, b = 1)

shapiro.test(data$Activity.level)

#activity level of people under 30
younger_group <- data[data$Age < 30, c("Activity.level")]
barplot(table(younger_group), col='springgreen', xlab = "Activity level of younger group", ylab="People")
print(mean(younger_group, na.rm = TRUE))

#activity level of people over 30
older_group <- data[data$Age > 30, c("Activity.level")]
barplot(table(older_group), col='springgreen',  xlab = "Activity level of older group", ylab="People")
print(mean(older_group, na.rm = TRUE))

#taking pills
num_taking <- length(data$Take.pills[data$Take.pills==TRUE])
num_not_taking <- length(data$Take.pills[data$Take.pills==FALSE])
slices <- c(num_taking, num_not_taking)
labels <- c("Yes", "No")
pielabels <- sprintf("%s = %3.1f%s", labels, 100*slices/sum(slices), "%")
pie(slices, labels = pielabels, main="Pie chart of sleeping pills intake")

barplot(table(data$Gender[data$Take.pills==TRUE]), col='cornflowerblue') # women are more likely to take pills

#sleeping hours
plot(data$Sleep.hours, col='aquamarine')
  
#stress levels
barplot(table(data$Stress.level), main='Stress level', xlab='Stress level', col='mediumvioletred', space=0)

# sleeping hours to stress levels
four_to_six <- data$Sleep.hours == "4 до 6 часа (но по-малко от 6)"
four_to_six_group <- data[four_to_six, ]
tN <- table(four_to_six_group$Stress.level)
barplot_4_to_6 <- barplot(tN, main="Stress levels of people, sleeping 4 to 6 hours", xlab='Stress level', ylab='Number of people')
lines(barplot_4_to_6, tN, col = "red", lwd = 2)
#average
print(mean(four_to_six_group$Stress.level, na.rm = TRUE))

six_to_eight <- data$Sleep.hours == "6 до 8 часа (но по-малко от 8)"
six_to_eight_group <- data[six_to_eight, ]
tM <- table(six_to_eight_group$Stress.level)
barplot_6_to_8 <- barplot(tM, main="Stress levels of people, sleeping 6 to 8 hours", xlab="Stress level", ylab="Number of people")
lines(barplot_6_to_8, tM, col="red", lwd=2)
print(mean(six_to_eight_group$Stress.level, na.rm = TRUE))

# we can notice that the more sleep person gets, the more stress levels are dropping

#caffeine intake
hist(data$Caffeine.drinks.per.day, main='Caffeine drinks', xlab='Caffeine drinks per day', ylab='Number of People', col='gold', breaks=10)
abline(v = mean(data$Caffeine.drinks.per.day), lwd = 2, lty = 4)
abline(v = median(data$Caffeine.drinks.per.day), lwd = 2, lty = 3, col = "blue")


ggplot(data,aes(x=data$Stress.level, fill=data$Gender)) + geom_histogram(bins=30) # women are with higher stress levels

#correlations
vector = data[, c(3,4,7, 8)]
cor(vector)
library(corrplot)
corrplot(res, type = "upper", order = "hclust", tl.col = "black", tl.srt = 45)
