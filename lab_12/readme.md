# Lab 12. Wizualizacja danych z języku R.

## 0. Środowisko.

W trakcie zajęć w laboratorium dostępne będzie środowisko RStudio w wersji 1.1.463 oraz interpreter języka R w wersji 4.2.0. Zalecam użycie nowszej wersji RStudio, ale ze względu na ograniczenia związane z wersją systemu Windows zainstalowanie nowszej wersji nie było możliwe.

## 1. Wstęp do języka R.

Jako, że w ramach przedmiotu skupiamy się na aspekcie wizualizacji danych, nie będzie tutaj przedstawionego pełnego wprowadzenia do języka R ze względu na brak odpowiedniej ilości czasu. Zamiast tego w kolejnej części materiałów przedstawione zostaną przykłady kodu wraz z komentarzami, które przybliżą trochę niektóre zagadnienia tego języka.


Godne polecenia materiały online:
* http://www.wawrowski.edu.pl/ppr/wprowadzenie-do-r.html
* https://www.w3schools.com/r/
* https://www.youtube.com/watch?v=_V8eKsto3Ug ("dobry" angielski :) )
* https://cran.r-project.org/doc/contrib/wprowadzenie_do_R.pdf (dość stare już materiały, ale po polsku)

**Instalacja i import bibiliotek**

Instalacja bibliotek odbywa się zazwyczaj z użyciem publicznego repozytorium projektu CRAN.

```R
# próba odnalezienia i instalacji biblioteki razem z zależnościami
install.packages("ggplot2")

# import biblioteki do skryptu/projektu
library(ggplot2)
```

## 2. Wybrane biblioteki do wizualizacji.

### 2.1 Wbudowana funkcje do wizualizacji.

Środowisko R posiada wbudowane metody do generowania standardowych wykresów. Chociaż nie są one zbyt efektowne wizualnie, ale pozwalają dość szybko przeprowadzić szybką analizę wstępną danych bez konieczności instalacji dodatkowych bibliotek.

**Dokumentacja:** https://www.rdocumentation.org/packages/graphics/versions/3.6.2/topics/plot

**Użyteczne przykłady:** https://www.learnbyexample.org/r-plot-function/

**Lista i opis wbudowanych datasetów:** https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/00Index.html

lub
```R
# list all datasets in the package
library(help = "datasets")
```

Wbudowana funkcja służy raczej do prostych wizualizacji, ale jest dość elastyczna jeżeli chodzi o typy obiektów jako może przyjmować na wejściu.

Przykłady na listingu poniżej.

```R
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
```

### 2.2 ggplot2

ggplot2 to pakiet wizualizacji danych dla języka programowania statystycznego R. 

Stworzony przez Hadleya Wickhama w 2005 roku, ggplot2 jest implementacją Grammar for Graphics Lelanda Wilkinsona - ogólnego schematu wizualizacji danych, który dzieli wykresy na komponenty semantyczne, takie jak skale i warstwy. 

ggplot2 może służyć jako zamiennik grafiki podstawowej w języku R i zawiera szereg ustawień domyślnych dla wyświetlania w Internecie i drukowaniu typowych skal. 

Od 2005 roku ggplot2 stał się jednym z najpopularniejszych pakietów R.

Dokumentacja: 
* https://www.rdocumentation.org/packages/ggplot2/versions/3.3.6
* referencje funkcji ggplot2: https://ggplot2.tidyverse.org/reference/

* świetne materiały, tu podrozdział wizualizacja z użyciem ggplot2: https://r4ds.had.co.nz/data-visualisation.html

#### 2.2.1 Instalacja

Instalacja została opisana w dokumentacji: https://www.rdocumentation.org/packages/ggplot2/versions/3.3.6 i sprowadza się do wykonania 2-3 linii kodu w zależności od wybranego sposobu.

## 3. Wykorzystanie języka R z Jupyter Notebook.

Możliwe jest również wykorzystanie znanego nam już środowiska Jupyter Notebook wraz z kernelem języka R. W zależności od konfiguracji na danym komputerze proces przygotowania środowiska może być inny. W trakcie zajęć nie będzie ono wykorzystywane, ale warto przetestować ten sposób pracy ze względu na pewną ciągłość pracy w warsztacie data science.

Opis przygotowania środowiska.
* https://docs.anaconda.com/anaconda/navigator/tutorials/r-lang/
* tu również jak używać plotly z językiem R: https://developers.refinitiv.com/en/article-catalog/article/setup-jupyter-notebook-r

## 4. Zadania.

Utwórz nowy projekt w środowisku RStudio i wykonaj zadania, zapisując je do oddzielnych skryptów o nazwach nawiązujących do numerów zadań.

**Zadanie 1**

Wykorzystując dataset `zamowienia.csv` wyświetl 3 różne wykresy korzystając z wbudowanych funkcji. Wybierz sensowne cechy datasetu do wykresów.

**Zadanie 2** *

Wykorzystując publiczną bazę danych GUS (najwygodniej tu: https://bdp.stat.gov.pl/) wyszukaj dane, które Cię zainteresują i wykorzystując podlinkowane materiały przygotuj analizę tych danych, używając biblioteki ggplot2 dobierając odpowiednie wykresy i dane. Sam zdecyduj, które informacje są najbardziej ciekawe, istotne. Dla każdego wykresu dopisz 1-2 zdania z wnioskami jakie z nich płyną. Stwórz minimum 5 różnych wykresów.

* można pozyskane dane oczyścić wcześniej z użyciem innego niż R środowiska.