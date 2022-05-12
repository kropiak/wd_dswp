# Lab 11. Biblioteka plotly część 2 - wykresy interaktywne.

Wykresy interaktywne pozwalają na dodanie dynamiki do prezentacji danych, zwłaszcza w czasie rzeczywistym, kiedy pojawia się potrzeba spojrzenia na wycinek danych, na inną ich miarę co w statycznym podejściu wymagało modyfikacji kodu generującego wykres lub stworzenia nowego wykresu z innymi parametrami. Wraz ze wzrostem ilości parametrów rośnie też ilość kombinacje, które, byc może, przyszłoby nam zaimplementować lub dostarczyć osobom zainteresowanym.

Wyjściem z tej sytuacji jest sparametryzowanie funkcji generujących wykres i przeniesienie kontroli nad parametrami do odpowiedniej biblioteki z kontrolkami (widgetami). Jako że korzystamy już z Jupyter notebooka i jest to podstawowe środowisko pracy każdego badacza danych, wykorzystamy je do opracowania takich wykresów.

Biblioteka plotly współpracuje z biblioteką ipywidgets, z której skorzystamy. 

> Dokumentacja ipywidgets: https://ipywidgets.readthedocs.io/en/latest/

Jeżeli biblioteka `plotly` jest już zainstalowana w używanym środowisku pythona instalacja `ipywidgets` nie będzie konieczna.

## 1. Krótkie wprowadzenie do `ipywidgets`

> **UWAGA** Notebooki należy pobrać na komputer lokalny i zaleca się je uruchamiać z poziomu przeglądarki internetowej (poprzez PyCharm część kontrolek może nie wyświetlać się poprawnie)

**Zadanie 1** 

Przeanalizuj dokumentację pod adresem: https://ipywidgets.readthedocs.io/en/latest/examples/Widget%20Basics.html jako materiał wprowadzający.

**Zadanie 2**

Przeanalizuj notebook [11_intro_to_ipywidgets.ipynb](11_intro_to_ipywidgets.ipynb).

Następnie możesz przeglądnąć (lub mieć pod ręką) dokumentację prezentującą listę dostępnych widgetów oraz ich przykładowe wykorzystanie. Adres: https://ipywidgets.readthedocs.io/en/latest/examples/Widget%20List.html

Oprócz typowych widgetów takich jak suwaki, listy rozwijane, pola tekstowe znajdują się tu również widgety, które są odpowiedzialne za organizację widgetów (hbox, vbox). Każdy z widgetów wymaga zadeklarowania jego instancji i często zawiera już sensowne wartości domyślne podstawowych atrybutów. 

**Zadanie 3**

Przeanalizuj notebook [11_test_plotly_interactive.ipynb](11_test_plotly_interactive.ipynb) pochodzący z oficjalnej dokumentacji plotly (adres: https://plotly.com/python/figurewidget-app/), a następnie przygotuj własne rozwiązanie z interaktywnym wykresem na podstawie datasetu [zamowienia](../lab_10/data/zamowienia.csv). Używając kontrolek uwzględnij:
* możliwość wyboru roku do wyświetlenia - rok pobierany dynamicznie z danych
* możliwość wyboru sprzedawcy - lista sprzedawców również dynamiczne
* możliwość wyboru kraju - również dynamicznie
* możliwość wyboru funkcji agregującej - dopuszczalne wartości (suma, średnia), domyślnie suma

Dla uproszczenia przyjmijmy, że dane na wykresie wyświetlane są w postaci wykresu słupkowego, gdzie każdy słupek to dane dla jednego sprzedawcy (można po grupowaniu zamienić dataframe na dataframe niezgrupowany, co ułatwi przekazanie danych do plotly).





