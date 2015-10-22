# This script shows some of the basic functions in the dplyr package
library(datasets)
library(dplyr)

data()
?airquality

nyAirQM <- airquality
class(nyAirQM)

# Let's see some of the characteristics
head(nyAirQM)
dim(nyAirQM)
str(nyAirQM)

# Let's overview names of our variable
names(nyAirQM)

# tbl_df from dplyr is same class as data frame
# the only difference that it shows only first
# ten observations when printed on the console
nyAirQM <- tbl_df(airquality)
nyAirQM # same as head(data.frame(nyAirQM))
class(nyAirQM)

# Select only a subset of nyAirQM: Ozone, Month, Day
ozoneChange <- select(nyAirQM, c(Ozone, Month:Day))
print(ozoneChange)

# Alternatively you can omit columns using "-" sign
solarVsTempChange <- select(nyAirQM, -c(Ozone, Wind))
print(solarVsTempChange)

# filter: take all values where Temp is greater than 86 F
over86 <- filter(nyAirQM, Temp > 86)
over86orUnder69 <- filter(nyAirQM, Temp < 69 | Temp > 86)
monthMay <- filter(nyAirQM, Month == 5)

# arrange()
?LifeCycleSavings
lcs <- LifeCycleSavings
print(lcs)

# Arrange $lcs$ by aggregate personal savings
aggregatePersSave <- arrange(lcs, sr)
head(select(aggregatePersSave, sr, dpi), 5)

aggregatePersSave <- arrange(lcs, desc(sr))
head(select(aggregatePersSave, sr, dpi), 5)

subsetPop <- arrange(lcs, desc(pop15 - pop75))
head(select(subsetPop, sr, dpi, pop15, pop75), 5)

# mutate()
# the savings ratio (aggregate personal saving divided by disposable income)
lcs <- mutate(lcs, savingsRatio = sr/dpi)
head(lcs)

lcs <- transmute(lcs, savingsRatio = sr/dpi)
head(lcs)

# pipe: %>%
# Using @airquality@ dataset show min, max, mean and median
# Ozone ppb for months May and June
airquality %>%
  filter(Month == 5 | Month == 6, !is.na(Ozone)) %>%
  select(c(Ozone, Month:Day)) %>%
  group_by(Month) %>%
  summarise(med = median(Ozone),
            mean = mean(Ozone),
            max = max(Ozone),
            min = min(Ozone))
  
