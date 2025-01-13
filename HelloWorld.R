print("HelloWorld")
# Vektori
#v <- rep(c(11,22,33), times = c(2,3,4))
#v1 <- c("asd", "grgtrgtrgt", "er g eg")
#append(v, 23)

# Saraksti, lists
#s1 <- list("asd", "grgtrgtrgt", "er g eg")
#length(s1)
#x <- list(values=sin(1:3), ids=letters[1:3], sub=list(foo=42,bar=13))

# Matrica
#m3 <- matrix(1:9, nrow = 3, ncol = 3)
#m3
#m4 <- c(m3)

# Array

# Tabulas / DataFrame
df <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)
df
summary(df)
df[1]
df["Training"]
df[["Training"]]
df[,1]
sum(df$Pulse)
which.max(df$Pulse)

library(dplyr)
tb1 <- tibble(df)
tb1
names(tb1)
glimpse(tb1)

tt1 <- skim(df)
tt1

install.packages("MASS")
library(MASS)
dfCars <- Cars93
View(dfCars)
table(dfCars$AirBags)
dfC_fr1 <- table(dfCars$Type, dfCars$Origin)
dfC_fr1
prop.table(dfC_fr1)
filter(dfCars, AirBags == "Driver only")
filter(dfCars, AirBags == "Driver only" & Make %in% c("Audi"))

# PIPES

dfCars %>% head()
# ==
head(dfCars)
# ==
dfCars |> head()

dfCars |> tail() |> nrow()

dfCars |> dplyr::select(Type, Origin)

dfCars |> summarize(PriceMean = mean(Price, na.rm = TRUE))

dfCars |> 
  group_by(Make) |> 
  summarize(PriceMean = mean(Price, na.rm = TRUE))

# NA vērtības
x <- c(2, NA, 3, 4)
sum(x, na.rm = TRUE)
is.na(x)

x[!is.na(x)]
x[is.na(x)] <- 0
x

# FACTORS
# Create a factor
music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))

# Print the factor
music_genre
levels(music_genre)

.Random.seed
set.seed(Sys.Date())
y <- sample(x = 1:12, size=1)
y

# ----------------------------------------------- Jan 13

plot(sin((1:40)/pi), main = "grafks", xlab = "x", ylab = "y", col = "blue")
plot(sin((1:40)/pi), main = "grafks", xlab = "x", ylab = "y", col = "blue", cex = 0.75, pch = 3)

plot(sin((1:40)/pi), main = "grafks", xlab = "x", ylab = "y", col = "blue", cex = 0.75, pch = 3, type = "l")
plot(sin((1:40)/pi), main = "grafks", xlab = "x", ylab = "y", col = "blue", cex = 0.75, pch = 3, type = "l", lwd = 2, lty = 2)

plot(sin((1:40)/pi),cos((1:40)/pi), main = "grafks", xlab = "x", ylab = "y", col = "blue", cex = 0.75, pch = 3, type = "l", lwd = 2)

l1 <- c(1,2,3,5,7,15)
l2 <- c(4,3,2,1,5,4)
plot(l1, l2, type = "l", col = "blue")
lines(l1*1.5, l2, type = "l", col = "green")

pie(l2, labels = c("a", "b", "c", "d", "e", "f"), col = "blue")
legend("bottomright", c("a", "b", "c", "d", "e", "f"), fill = "blue")


x1 = c("AA", "BB", "CC", "DD")
y1 = c(1, 3, 7, 5)
barplot(y1, names.arg = x1)
barplot(y1, names.arg = x1, density = 10, width = y1, horiz = TRUE)

# ----
library(ggplot2)
library(MASS)
df <- Cars93

ggplot(df, aes(x = Horsepower, y = Make)) + geom_point() + 
  labs(title = "HP / Make", caption = "(zs)")

ggplot(Cars93, aes(x = Horsepower)) +
  geom_histogram()

ggplot(df, aes(x = Price, y = Horsepower)) + geom_point() + geom_smooth()
ggplot(df, aes(x = Price, y = MPG.city))  + geom_point() + geom_smooth()

head(mtcars)

ggplot(mtcars, aes(x = hp)) +
  geom_histogram()

which.max(mtcars$hp)
mtcars[31,]

min(mtcars$hp)
max(mtcars$hp)
mean(mtcars$hp)
median(mtcars$hp)
quantile(mtcars$hp)

quantile(mtcars$hp, c(0.2,0.8))

# ------------------------------------------









