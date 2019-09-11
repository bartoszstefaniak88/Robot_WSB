Status testu Travis-CI:
[![Build Status](https://travis-ci.org/bartoszstefaniak88/Robot_WSB.svg?branch=master)](https://travis-ci.org/bartoszstefaniak88/Robot_WSB)

I. Przypadek testowy
Tytuł: Sprawdzenie treści nagłówka
**ID: test_login_header**
Środowisko: Windows 10, Python 2.7, PyCharm 2019.1.2 (plugin Robot Framework), Chrome wersja 76.0.3809.132,
Warunek wstępny: Narzędzie Robot Framework, ChromeDriver (chromedriver.exe ) dla odpowiedniej wersji przeglądarki rozpakowane w folderze z Robot Framework, biblioteka SeleniumLibrary
Kroki:
1. Wejdź na stronę " https://autodemo.testoneo.com/en/login?back=my-account /"
2. Sprawdź czy nagłówek „Log in to your account” występuje na stronie logowania
Oczekiwany rezultat:
Nagłówek znajduje się na stronie logowania. Brak błędu asercji.
**ID: test_incorrect_login**
Warunek wstępny: Narzędzie Selenium WebDriver dla odpowiedniej wersji przeglądarki rozpakowane W folderze: C:\TestFile\ (poprawna ścieżka do pliku: C:\TestFile\chromedriver.exe). Utworzone konto na portalu https://autodemo.testoneo.com.
Kroki:
1. Wejdź na stronę " https://autodemo.testoneo.com/en/login?back=my-account /"
2. Wprowadź login
3. Wprowadź niepoprawne hasło
Oczekiwany rezultat:
Użytkownik nie został zalogowany. Użytkownik dostaje informację o nie poprawnie wprowadzonych danych „Authentication failed.”
Tytuł: Błędne logowanie
**ID: test_correct_login**
Środowisko: Windows 10, Python 2.7, PyCharm 2019.1.2 (plugin Robot Framework), Chrome wersja 76.0.3809.132,
Warunek wstępny: Narzędzie Robot Framework, ChromeDriver (chromedriver.exe ) dla odpowiedniej wersji przeglądarki rozpakowane w folderze z Robot Framework, biblioteka SeleniumLibrary
Kroki:
1. Wejdź na stronę " https://autodemo.testoneo.com/en/login?back=my-account /"
2. Wprowadź poprawny login
3. Wprowadź poprawne hasło
Oczekiwany rezultat:
Użytkownik został zalogowany. Użytkownik został przekierowany https://autodemo.testoneo.com/en/my-account.
Tytuł: Sprawdzenie czy możliwe jest zalogowanie się na stronie przy pomocy poprawnego loginu i hasła
**ID: test_correct_login**
Środowisko: Windows 10, Python 2.7, PyCharm 2019.1.2 (plugin Robot Framework), Chrome wersja 76.0.3809.132,
Warunek wstępny: Narzędzie Robot Framework, ChromeDriver (chromedriver.exe ) dla odpowiedniej wersji przeglądarki rozpakowane w folderze z Robot Framework, biblioteka SeleniumLibrary.
Utworzone konto na portalu https://autodemo.testoneo.com.
Kroki:
1. Wejdź na stronę " https://autodemo.testoneo.com/en/login?back=my-account /"
2. Wprowadź poprawny login
3. Wprowadź poprawne hasło
Oczekiwany rezultat:
Użytkownik został zalogowany. Użytkownik został przekierowany https://autodemo.testoneo.com/en/my-account.
Tytuł: Sprawdzenie czy produkt posiada poprawną nazwę HUMMINGBIRD PRINTED T-SHIRT
**ID: test_name_product**
Środowisko: Windows 10, Python 2.7, PyCharm 2019.1.2 (plugin Robot Framework), Chrome wersja 76.0.3809.132,
Warunek wstępny: Narzędzie Robot Framework, ChromeDriver (chromedriver.exe ) dla odpowiedniej wersji przeglądarki rozpakowane w folderze z Robot Framework, biblioteka SeleniumLibrary.
Utworzone konto na portalu https://autodemo.testoneo.com.
Użytkownik jest zalogowany
Kroki:
1. Wejdź na stronę " https://autodemo.testoneo.com/en/men/1-1-hummingbird-printed-t-shirt.html/"
2. Sprawdź poprawność nazwy produktu (HUMMINGBIRD PRINTED T-SHIRT)
Oczekiwany rezultat:
Nazwa produktu zgadza się z wymaganą nazwą: HUMMINGBIRD PRINTED T-SHIRT
Tytuł: sprawdzenie czy produkt posiada aktualną cenę PLN23.52
**ID: test_price_product**
Środowisko: Windows 10, Python 2.7, PyCharm 2019.1.2 (plugin Robot Framework), Chrome wersja 76.0.3809.132,
Warunek wstępny: Narzędzie Robot Framework, ChromeDriver (chromedriver.exe ) dla odpowiedniej wersji przeglądarki rozpakowane w folderze z Robot Framework, biblioteka SeleniumLibrary.
Utworzone konto na portalu https://autodemo.testoneo.com.
Użytkownik jest zalogowany
Kroki:
1. Wejdź na stronę " https://autodemo.testoneo.com/en/men/1-1-hummingbird-printed-t-shirt.html/"
2. Sprawdź poprawność ceny PLN23.52
Oczekiwany rezultat:
Cena produktu zgadza się z wymaganą: PLN23.52