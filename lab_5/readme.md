# Lab 5. Czyszczenie i transformacja danych z użyciem środowiska Python.

1. Przeanalizuj notebook [2_etl_with_python.ipynb](2_etl_with_python.ipynb) i wykonaj zadania zawarte na jego końcu.

2. Korzystając z przykładów z pkt. 1 oraz szukając nowych możliwości poprzez eksplorację zasobów w Internecie (dokumentacja, fora) dokonaj oczyszczenia pliku [BL-Flickr-Images-Book.csv](data/BL-Flickr-Images-Book.csv). Możesz dokonać poniższych zmian:
* usunięcie kolumn, które zawierają wiele wartości pustych
* zmiana domyślego indeksu na identyfikator (upewnij się, że się nada)
* przekształcenie kolumny `Date of publication` tak, aby zawierała tylko jedną wartość, niech to będzie pierwsza wartość czterocyfrowa z danego wiersza. Możesz wykorzystać w tym celu możliwość użycia wyrażenia regularnego i funkcji `extract()` klasy `str`. Zmień typ tej kolumny na typ numeryczny.
* przeanalizowanie wartości w kolumnie `Place of publication` (sprawdź ile jest unikalnych wartości) i wstawienie tylko nazwy miasta. Sprawdź możliwość wykorzystania:
    * `str.contains()` lub podobne (ogólnie maski Boolowskie) w połączeniu z `np.where()`
    * `pandas.DataFrame.applymap()` do zastosowania funkcji dla całej ramki danych lub wybranego jej wycinka 

Zapisz oczyszczone dane do nowego pliku.