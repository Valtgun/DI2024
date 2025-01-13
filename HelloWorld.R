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







