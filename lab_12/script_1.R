# skrypt 1 - wbudowane funkcje wykresów
install.packages('dplyr')
library(dplyr)


# ******************************************
# scatter plot, line plot
# sekwencja wartości
x = 1:10
plot(x)

# sekwencja liczb - jak range() w Pythonie
x1 = seq(1,10,2)
plot(x1)

# wykorzystamy jeden z wbudowanych datasetów
# lista dostępnych datasetów
library(help = "datasets")
# załadowanie datasetu
data(iris)
# opis datasetu
str(iris)
# "wymiary" datasetu
dim(iris)
# ilość poziomów dla danej cechy
levels(iris$Species)
# kilka pierwszych rekordów
head(iris)

# uniwersalność funkcji plot pozwala na użycie bez zbędnej 
# konfiguracji cały data frame jako argument funkcji
plot(iris)

# teraz pojedyncza kolumna
plot(iris$Sepal.Length)

# lub dwie
plot(iris$Sepal.Length, iris$Sepal.Width)

# *****************************************
# barplot
data <- c(styczen=2, luty=1, marzec=8, kwiecień=12, maj=15)
barplot(data)

# inny przykład
data <- iris %>% count(Species)
data
barplot(data$n, 
        legend.text = data$Species,
        col=c("dodgerblue3", "skyblue1"))
# lub
barplot(data$n, 
        names = data$Species)
# lub
barplot(t(as.matrix(data$n)), 
        names = data$Species,
        beside=TRUE)


# *****************************************
# boxplot - rozkład cech datasetu iris
# opis boxplot: https://www.learnbyexample.org/r-box-whisker-plot-base-graph/
# inny przykład: https://miro.medium.com/max/1400/1*2c21SkzJMf3frPXPAR_gZA.png
# wycinek data frame'a
boxplot(iris[, 1:4])

# ********************************
# histogram
usa = USArrests

head(usa)
hist(usa$Assault)
# wyświetlenie wbudowanego helpa
?hist

# wyświetlenie rozkładu prawdopodobieństwa zamiast częstości
# wraz z funkcją rozkładu
hist(usa$Assault, freq = F)
lines(density(usa$Assault),
      col="dodgerblue3",
      lwd=2)

# *******************************
# piechart

zawodnicy <- c(Adam=10, Marek=20, Zibi=15, Olaf=8)
?pie
pie(zawodnicy)

# jak wczytać plik z danymi z lokalnego folderu (ścieżka względem working directory)
zamowienia <-read.csv("zamowienia.csv", sep=';', header=TRUE)
head(zamowienia)



