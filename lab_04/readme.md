# Wizualizacja danych.
## Lab 4. Eksploracja danych przy użyciu narzędzi w języku Python

### 1. Środowisko pracy w laboratorium

* Python: wersja 3.8.10 (zalecana wersja 3.9+)
* IDE: PyCharm (zalecana nowa wersja, ale ze względu na obecność systemu Windows 7 konieczne będzie użycie wersji 2019.*)
* Biblioteki: numpy, pandas, matplotlib, seaborn, jupyter
* zasoby: w podfolderze `data` znadują się zbiory danych, które będa wykorzystywane w trakcie zajęć, natomiast w podfolderze `notebooks` wszystkie przegotowane wcześniej notebooki


### 2. Konfiguracja i uruchomienie środowiska pracy.

**Krok 1 - instalacja interpretera języka Python.**

Pobieramy odpowiednią wersję instalatora dla systemu operacyjnego i instalujemy w domyślnej ścieżce lub specjalnie przeznaczonym do tego celu miejscu w systemie plików.
W przypadku używania instalatora mamy również możliwość wyboru dodatkowych opcji instalacji. W zależności od tego czy chcemy, aby system traktował instalowaną właśnie wersję jako domyślną wybieramy opcję dodania odpowiedniego wpisu do zmiennej środowiskowej `PATH` lub nie.

**Krok 2 - stworzenie nowego projektu.**

Wykorzystując IDE tworzymy nowy projekt określając jego typ, gdzie możemy wybrać np. opcję`pure Python` lub `Scientific`, która to
dostarczy nam kilku dodatkowych opcji przy pracy z projektami w domenie data science oraz zapewnia pewną strukturę projektu.
Należy pamiętać o wybraniu odpowiedniego interpretera dla projektu i, co jest zdecydowanie rekomendowane, utworzeniu dedykowanego środowiska wirtualnego dla danego projektu. W zależności od dostępnych narzędzi środowisko to może być stworzone przy użyciu narzędzi `conda, pyenv, virtualenv`. Pycharm pozwala nam na uniknięcie ręcznej konfiguracji takiego środowiska.

**Krok 3 - instalacja niezbędnych pakietów.**

Aby móc używać pakietów wymienionych na wstępie musimy najpierw zainstalować je do środowiska wirtualnego. Możemy to zrobić przy użyciu wizualnego narzędzie wbudowanego w PyCharm (File | Settings | Project: [nazwa projektu] | Python Interpreter) lub poprzez narzędzie `pip` lub `pip3` uruchamiane z poziomu wiersza poleceń.
Zaleca się stworzenie pliku tekstowego z wymaganiami (zostanie stworzony jeżeli wybierzemy typ projektu `Scientific`), co pozwoli na szybsze odtworzenie niezbędnego zestawu pakietów przy przenoszeniu projektu lub udostępnianiu innym osobom.

Zaleca się również wykorzystywanie narzędzia `git` do śledzenia i zarządzania zmianami w projekcie, ale nie jest to niezbędne do wykonania zadań w trakcie laboratorium.


### Zadania

**Zadanie 1**

Przeanalizuj notebook 1_eda_with_python i

* stwórz nowy i przeprowadź analizę EDA dla pliku ...
* stwórz nowy na podstawie w/w
* zmień tu i tu (do zrobienia)
* dodaj to i to (np. zapisanie jako oddzielne pliki, jakieś dodatkowe statystyki)
* jakieś zadania z transformacji danych, preprocessingu, konwersji
* 