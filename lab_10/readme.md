# Lab 10. Wprowadzenie do biblioteki plotly.

## 1. Podstawowe informacje i instalacja.

Plotly jest biblioteką open source, która może być używana z językiem Python, Julia, R, Javascript, F# oraz środowiskami MATLAB, Dash i ggplot2. Wyróżnia ją możliwość tworzenia interaktywnych wykresów oraz uruchamianie jako samodzielnej aplikacji (Python).

Plotly i cały ekosystem, który funkcjonuje wokół tej biblioteki, jest dość rozbudowany i w początkowej fazie eksploracji jej możliwości i punktu, w którym warto zacząć, można się nieco zagubić.

**Dokumentacja online*

* Dokumentacja dla języka Python wraz z przykładowymi wykresami znajduje się pod adresem: https://plotly.com/python/.
* Dedykowany tutorial dla plotly oraz Jupyter notebook: https://plotly.com/python/ipython-notebook-tutorial/#installation
* Na początek warto jednak zacząć od przykładów z wykorzystaniem plotly express. Dokumentacja: https://plotly.com/python/plotly-express/

**Instalacja**

Sam pakiet plotly instalujemy poprzez wybranego menedżera pakietów, w przypadku pip jest to komenda `pip install plotly`.

**Przykłady**

Przykładowe wykresy i ich wykorzystanie znajdują się w notatniku o nazwie [10_plotly_czesc_1.ipynb](10_plotly_czesc_1.ipynb).


**Zadania**


**Zadanie 1**

Wykorzystując zbiór danych `zamówienia`, wyświetl strukturę wartości zamówień dla sprzedawców z Polski używając jednego z wykresów z rozdziału https://plotly.com/python/funnel-charts/ w dokumentacji biblioteki plotly.


**Zadanie 2**

Bazując na przykładzie w podrozdziale 1.3, stwórz wykres konturowanej mapy ciepła z podrozdziału https://plotly.com/python/2d-histogram-contour/ z dokumentacji biblioteki plotly.

**Zadanie 3**

Wykorzystując wykres typu icycle (https://plotly.com/python/icicle-charts/) wygeneruj wykres dla datasetu Fifa22 z użyciem kolumn `Name, Nationality, Club, Value`. Przed wyświetleniem wykresu należy dokonać preprocessingu danych:
* dane należy ograniczyć tylko do dwóch krajów: Polska i Hiszpania
* w kolumnie `Value` należy dokonać oczyszczenia wartości z symbolu waluty oraz konwertować na typ float a wcześnie uzupełnić brakujące wartości zerami
* w kolumnie `Club` również mogą występować puste wartości, usuń je z dataframe użytego do wyświetlenia na wykresie (ale nie z oryginału).






