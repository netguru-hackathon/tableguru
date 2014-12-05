# TableGuru

Calculate the best places for your guests to sit at.


TableGuru

Ogólny flow:
- zdefiniuj geometrię pokoju (gdzie stoły, jakie duże itd.)
- wczytaj listę ludzi
- ustal relacje pomiędzy nimi (czy się lubią, czy nie)
- zaznacz dostępne miejsca (krzesła) na planie pomieszczenia
- poproś serwer o optymalizację

Algorytm optymalizacji (wstępny pomysł):
- ustawiamy ludzi losowo na kilkadziesiąt różnych sposobów
- dla każdego ustawienia obliczamy punkty (“jakość” ustawienia)
- wybieramy najbardziej optymalny układ (albo kilka układów)
- w ramach każdego układu próbujemy (wiele razy) zamieniać ze sobą miejscami
- losowe osoby i obliczamy nową “punktację” dla takiego układu 
- po np. 1000 iteracjach wybieramy ustawienie, które ma najwięcej punktów i zwracamy do klienta jako JSON

Interfejs użytkownika:
- ludzie jako kółka w odcieniach tęczy (kolejność as loaded)
- opcjonalnie - avatary z załączonych obrazków (np. team ze strony NG)
- potrzebny jakiś patent na łatwe dodawanie stołów, przeskalowywanie, wyrównywanie
do siatki itp
- UX: grupowanie ludzi - np. rodzina1, rodzina2, małżeństwa - fajnie, jakby łatwo
można było je zaznaczać (żeby “masowo” dodawać relacje lubienia się) 

Dodatkowe ficzery:
- punkty mobilne (goście) vs punkty stabilne (okno, obiad, para młoda)
- przeszkody w formie linii 2D - różne współczynniki osłabiania interakcji (ściany
= 0.1 / przeszklone = 0.3 / ekrany dźwiękowe = 0.7)

Scenariusze:
- wesele
- nowe biuro NG
- (przyszłość: automatyczne ustawianie stołów w jadalni?)

Jak to można zaimplementować?
odpychanie = `-A*exp(-d)`
[ d = odleglosc miedzy wybranymi osobami ]
przyciąganie = `A*exp(-d)` 

