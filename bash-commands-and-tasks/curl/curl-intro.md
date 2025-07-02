# Wyjaśnij protokół Curl. Do czego się stosuje? Jak go używać?

Curl to narzędzie wiersza poleceń służące do przesyłania danych z/do serwerów przy użyciu różnych protokołów sieciowych. Nazwa pochodzi od "Client URL" i jest jednym z najważniejszych narzędzi do pracy z API i testowania połączeń sieciowych.

## Obsługiwane protokoły

Curl obsługuje wiele protokołów, w tym:
- HTTP/HTTPS (najczęściej używane)
- FTP/FTPS
- SMTP
- POP3/IMAP
- Telnet
- LDAP
- SCP/SFTP

## Podstawowe zastosowania

**Pobieranie danych z serwerów:** Curl pozwala pobierać strony internetowe, pliki, odpowiedzi API i inne zasoby sieciowe bezpośrednio z terminala.

**Testowanie API:** To główne narzędzie do testowania RESTful API - możesz wysyłać żądania GET, POST, PUT, DELETE i inne, wraz z headerami i danymi.

**Automatyzacja zadań sieciowych:** Curl można używać w skryptach do automatycznego pobierania danych, wysyłania formularzy czy monitorowania usług.

**Debugowanie połączeń:** Pokazuje szczegółowe informacje o połączeniu, headerach HTTP i procesie komunikacji.

## Podstawowa składnia

```bash
curl [opcje] [URL]
```

## Najważniejsze opcje i przykłady

**Podstawowe pobieranie:**
```bash
# Pobierz zawartość strony
curl https://example.com

# Zapisz do pliku
curl -o plik.html https://example.com
curl -O https://example.com/plik.zip  # zachowuje oryginalną nazwę
```

**Żądania POST z danymi:**
```bash
# Wysyłanie danych JSON przez POST
curl -X POST -H "Content-Type: application/json" \
     -d '{"name":"Jan","age":30}' \
     https://api.example.com/users

# Wysyłanie formularza
curl -X POST -d "name=Jan&email=jan@example.com" \
     https://example.com/formularz
```

**Praca z headerami:**
```bash
# Dodaj własne headery
curl -H "Authorization: Bearer token123" \
     -H "User-Agent: MojaApp/1.0" \
     https://api.example.com/data

# Pokaż tylko headery odpowiedzi
curl -I https://example.com
```

**Uwierzytelnianie:**
```bash
# Basic Auth
curl -u username:password https://example.com/protected

# Bearer token
curl -H "Authorization: Bearer your_token_here" \
     https://api.example.com/protected
```

**Zaawansowane opcje:**
```bash
# Podążaj za przekierowaniami
curl -L https://example.com

# Szczegółowe informacje o połączeniu
curl -v https://example.com

# Ustaw timeout
curl --connect-timeout 10 --max-time 30 https://example.com

# Ignoruj błędy certyfikatu SSL
curl -k https://self-signed-cert.example.com
```

**Upload plików:**
```bash
# Upload pliku przez POST
curl -X POST -F "file=@document.pdf" \
     https://example.com/upload

# PUT z plikiem
curl -X PUT --data-binary @plik.txt \
     https://example.com/upload
```

## Przykłady praktyczne

**Testowanie REST API:**
```bash
# GET - pobierz listę użytkowników
curl -H "Accept: application/json" \
     https://jsonplaceholder.typicode.com/users

# POST - stwórz nowego użytkownika
curl -X POST \
     -H "Content-Type: application/json" \
     -d '{"name":"Jan Kowalski","email":"jan@example.com"}' \
     https://jsonplaceholder.typicode.com/users

# PUT - zaktualizuj użytkownika
curl -X PUT \
     -H "Content-Type: application/json" \
     -d '{"name":"Jan Nowak","email":"jan.nowak@example.com"}' \
     https://jsonplaceholder.typicode.com/users/1

# DELETE - usuń użytkownika
curl -X DELETE https://jsonplaceholder.typicode.com/users/1
```

**Monitorowanie serwisu:**
```bash
# Sprawdź status HTTP
curl -s -o /dev/null -w "%{http_code}" https://example.com

# Zmierz czas odpowiedzi
curl -s -o /dev/null -w "Czas: %{time_total}s\n" https://example.com
```

Curl to potężne narzędzie, które znajdziesz praktycznie w każdym systemie Unix/Linux oraz dostępne na Windows. Jest niezbędne dla programistów pracujących z API, administratorów systemów i wszystkich zajmujących się integracjami sieciowymi.

# czym się różni curl od wget?

Curl i wget to oba narzędzia do pobierania danych z sieci w wierszu poleceń, ale mają różne cele i możliwości:

## Główne różnice w filozofii

**Curl** to biblioteka i narzędzie do **transferu danych** - skupia się na komunikacji dwukierunkowej z serwerami przy użyciu wielu protokołów.

**Wget** to **downloader** - skupia się głównie na pobieraniu plików i całych stron internetowych.

## Obsługiwane protokoły

**Curl obsługuje znacznie więcej protokołów:**
- HTTP/HTTPS, FTP/FTPS, SMTP, POP3/IMAP, Telnet, LDAP, SCP/SFTP, DICT, FILE, GOPHER, RTSP i inne

**Wget ogranicza się głównie do:**
- HTTP/HTTPS i FTP

## Możliwości pobierania

**Wget jest lepszy do masowego pobierania:**
```bash
# Pobierz całą stronę z wszystkimi plikami
wget --mirror --page-requisites --convert-links https://example.com

# Pobierz rekurencyjnie wszystkie pliki z FTP
wget -r ftp://ftp.example.com/directory/

# Wznów przerwane pobieranie
wget -c https://example.com/duzy-plik.zip
```

**Curl skupia się na pojedynczych żądaniach:**
```bash
# Podstawowe pobieranie (trzeba ręcznie zapisać)
curl https://example.com -o strona.html
```

## Praca z API

**Curl jest znacznie lepszy do API:**
```bash
# Łatwe wysyłanie różnych metod HTTP
curl -X POST -H "Content-Type: application/json" \
     -d '{"data":"value"}' https://api.example.com

# Szczegółowe informacje o połączeniu
curl -v https://api.example.com
```

**Wget ma ograniczone możliwości API:**
```bash
# Tylko podstawowy POST
wget --post-data='data=value' https://example.com
```

## Wyjście i formatowanie

**Curl:**
- Domyślnie wyświetla zawartość na stdout
- Łatwo przekierować do innych narzędzi
- Doskonały do pipeline'ów

```bash
curl https://api.example.com/data | jq .
```

**Wget:**
- Domyślnie zapisuje do plików
- Lepszy do pobierania i archiwizowania

## Przykłady porównawcze

**Pobieranie pojedynczego pliku:**
```bash
# Wget - prościej dla pojedynczych plików
wget https://example.com/plik.zip

# Curl - trzeba określić nazwę pliku
curl -O https://example.com/plik.zip
# lub
curl https://example.com/plik.zip -o plik.zip
```

**Pobieranie wielu plików:**
```bash
# Wget - doskonały do rekurencyjnego pobierania
wget -r -np -k https://example.com/dokumenty/

# Curl - każdy plik osobno
curl https://example.com/plik1.txt -o plik1.txt
curl https://example.com/plik2.txt -o plik2.txt
```

**Testowanie API:**
```bash
# Curl - naturalny wybór
curl -X POST -H "Authorization: Bearer token" \
     -d '{"test": true}' https://api.example.com/test

# Wget - niezręczny
wget --header="Authorization: Bearer token" \
     --post-data='{"test": true}' \
     --header="Content-Type: application/json" \
     https://api.example.com/test
```

## Kiedy używać którego?

**Używaj Curl gdy:**
- Testujesz API
- Potrzebujesz wysłać dane na serwer (POST, PUT, DELETE)
- Pracujesz z różnymi protokołami
- Chcesz szczegółowe informacje o połączeniu
- Integrujesz z innymi narzędziami w pipeline

**Używaj Wget gdy:**
- Pobierasz całe strony internetowe
- Potrzebujesz rekurencyjnego pobierania
- Tworzysz lokalne kopie stron
- Pobierasz duże pliki (lepsze wznowienie)
- Chcesz prostego downloadera bez dodatkowych komplikacji

W praktyce wielu programistów używa curl do pracy z API i testowania, a wget do pobierania plików i archiwizowania stron.


# czy można używać curl z lokalnym dyskiem Synology?

Tak, można używać curl z dyskiem Synology na kilka sposobów, w zależności od tego, jak chcesz się z nim komunikować:

## 1. Przez Synology Web API

Synology udostępnia bogaty zestaw API, które można wywoływać przez curl:

**Uwierzytelnianie:**
```bash
# Zaloguj się i otrzymaj token sesji
curl -X POST "http://your-synology:5000/webapi/auth.cgi" \
  --data "api=SYNO.API.Auth" \
  --data "version=3" \
  --data "method=login" \
  --data "account=username" \
  --data "passwd=password" \
  --data "session=FileStation" \
  --data "format=sid"
```

**Operacje na plikach przez FileStation API:**
```bash
# Lista plików w folderze
curl "http://your-synology:5000/webapi/entry.cgi" \
  --data "api=SYNO.FileStation.List" \
  --data "version=2" \
  --data "method=list" \
  --data "folder_path=/path/to/folder" \
  --data "_sid=YOUR_SESSION_ID"

# Upload pliku
curl -X POST "http://your-synology:5000/webapi/entry.cgi" \
  -F "api=SYNO.FileStation.Upload" \
  -F "version=2" \
  -F "method=upload" \
  -F "path=/destination/path" \
  -F "file=@local-file.txt" \
  -F "_sid=YOUR_SESSION_ID"

# Pobierz plik
curl "http://your-synology:5000/webapi/entry.cgi" \
  --data "api=SYNO.FileStation.Download" \
  --data "version=2" \
  --data "method=download" \
  --data "path=/path/to/file.txt" \
  --data "_sid=YOUR_SESSION_ID" \
  -o downloaded-file.txt
```

## 2. Przez WebDAV

Jeśli masz włączony WebDAV na Synology:

```bash
# Lista plików
curl -X PROPFIND "http://your-synology:5005/path/to/folder/" \
  --user "username:password"

# Upload pliku
curl -X PUT "http://your-synology:5005/path/to/remote-file.txt" \
  --user "username:password" \
  --data-binary "@local-file.txt"

# Pobierz plik
curl "http://your-synology:5005/path/to/file.txt" \
  --user "username:password" \
  -o local-file.txt

# Utwórz folder
curl -X MKCOL "http://your-synology:5005/path/to/new-folder/" \
  --user "username:password"
```

## 3. Przez FTP/SFTP

**FTP:**
```bash
# Upload przez FTP
curl -T local-file.txt ftp://your-synology/ \
  --user "username:password"

# Pobierz przez FTP
curl ftp://your-synology/remote-file.txt \
  --user "username:password" \
  -o local-file.txt
```

**SFTP:**
```bash
# Upload przez SFTP
curl -T local-file.txt sftp://your-synology/path/ \
  --user "username:password"

# Pobierz przez SFTP
curl sftp://your-synology/path/file.txt \
  --user "username:password" \
  -o local-file.txt
```

## 4. Z poziomu samego Synology

Jeśli masz SSH dostęp do Synology, curl jest często zainstalowany:

```bash
# Zaloguj się przez SSH
ssh admin@your-synology

# Używaj curl lokalnie na urządzeniu
curl https://api.example.com/data -o /volume1/data/api-response.json
```

## Praktyczne przykłady zastosowań

**Automatyczne backupy:**
```bash
#!/bin/bash
# Skrypt do automatycznego uploadu backupów na Synology

SESSION_ID=$(curl -s -X POST "http://synology:5000/webapi/auth.cgi" \
  --data "api=SYNO.API.Auth&version=3&method=login&account=user&passwd=pass&session=FileStation&format=sid" \
  | jq -r '.data.sid')

curl -X POST "http://synology:5000/webapi/entry.cgi" \
  -F "api=SYNO.FileStation.Upload" \
  -F "version=2" \
  -F "method=upload" \
  -F "path=/backups" \
  -F "file=@backup-$(date +%Y%m%d).tar.gz" \
  -F "_sid=$SESSION_ID"
```

**Monitoring przestrzeni dyskowej:**
```bash
# Sprawdź informacje o systemie przez API
curl "http://synology:5000/webapi/entry.cgi" \
  --data "api=SYNO.Core.System.Utilization" \
  --data "version=1" \
  --data "method=get" \
  --data "_sid=YOUR_SESSION_ID"
```

## Uwagi bezpieczeństwa

- Używaj HTTPS zamiast HTTP w środowisku produkcyjnym
- Przechowuj dane uwierzytelniające bezpiecznie (zmienne środowiskowe, pliki konfiguracyjne z odpowiednimi uprawnieniami)
- Ogranicz dostęp do API tylko do niezbędnych adresów IP
- Używaj dedykowanych kont z minimalnymi uprawnieniami

Synology API jest bardzo rozbudowane i pozwala na praktycznie wszystkie operacje, które możesz wykonać przez interfejs webowy, więc curl staje się potężnym narzędziem do automatyzacji zadań z dyskami Synology.


# Wyjaśnij struktuę komenty curl -X -d

Wyjaśnię strukturę komendy curl z opcjami `-X` i `-d`:

## Podstawowa struktura

```bash
curl -X METHOD -d "data" URL
```

## Opcja -X (--request)

**Przeznaczenie:** Określa metodę HTTP do użycia w żądaniu.

**Składnia:**
```bash
curl -X METHOD
# lub
curl --request METHOD
```

**Obsługiwane metody:**
- `GET` (domyślna, można pominąć)
- `POST`
- `PUT`
- `DELETE`
- `PATCH`
- `HEAD`
- `OPTIONS`
- I inne metody HTTP

**Przykłady:**
```bash
curl -X GET https://api.example.com/users     # Pobierz dane
curl -X POST https://api.example.com/users    # Utwórz nowy zasób
curl -X PUT https://api.example.com/users/1   # Zaktualizuj cały zasób
curl -X PATCH https://api.example.com/users/1 # Częściowa aktualizacja
curl -X DELETE https://api.example.com/users/1 # Usuń zasób
```

## Opcja -d (--data)

**Przeznaczenie:** Wysyła dane w ciele żądania HTTP (request body).

**Składnia:**
```bash
curl -d "dane"
# lub
curl --data "dane"
```

**Automatyczne zachowania:**
- Ustawia metodę na `POST` jeśli nie określono inaczej przez `-X`
- Ustawia header `Content-Type: application/x-www-form-urlencoded`

## Różne sposoby użycia -d

**1. Proste dane tekstowe:**
```bash
curl -d "name=Jan&age=30" https://api.example.com/users
```

**2. Dane JSON (wymagany dodatkowy header):**
```bash
curl -X POST \
     -H "Content-Type: application/json" \
     -d '{"name":"Jan","age":30}' \
     https://api.example.com/users
```

**3. Dane z pliku:**
```bash
curl -d @data.json https://api.example.com/users
# Plik data.json zawiera: {"name":"Jan","age":30}
```

**4. Dane z stdin:**
```bash
echo '{"name":"Jan"}' | curl -d @- https://api.example.com/users
```

**5. Wiele parametrów -d (są łączone):**
```bash
curl -d "name=Jan" -d "age=30" https://api.example.com/users
# Równoważne z: curl -d "name=Jan&age=30" ...
```

## Kompletne przykłady

**REST API - tworzenie użytkownika:**
```bash
curl -X POST \
     -H "Content-Type: application/json" \
     -H "Authorization: Bearer token123" \
     -d '{"name":"Jan Kowalski","email":"jan@example.com","role":"user"}' \
     https://api.example.com/users
```

**Formularz HTML:**
```bash
curl -X POST \
     -d "username=jan" \
     -d "password=secret123" \
     -d "remember=true" \
     https://example.com/login
```

**Aktualizacja danych (PUT):**
```bash
curl -X PUT \
     -H "Content-Type: application/json" \
     -d '{"name":"Jan Nowak","email":"jan.nowak@example.com"}' \
     https://api.example.com/users/123
```

## Alternatywy dla -d

**--data-binary:** Wysyła dane bez przetwarzania
```bash
curl --data-binary @file.xml \
     -H "Content-Type: application/xml" \
     https://api.example.com/data
```

**--data-raw:** Jak -d, ale nie interpretuje znaku @
```bash
curl --data-raw "@special-data" https://api.example.com
# Wyśle literalnie "@special-data", a nie zawartość pliku
```

**--data-urlencode:** Automatyczne kodowanie URL
```bash
curl --data-urlencode "message=Hello World!" https://api.example.com
# Zamieni spacje na %20 itp.
```

## Częste błędy i pułapki

**1. Brak odpowiedniego Content-Type dla JSON:**
```bash
# ŹLE - serwer może nie zrozumieć JSON
curl -d '{"name":"Jan"}' https://api.example.com

# DOBRZE
curl -H "Content-Type: application/json" \
     -d '{"name":"Jan"}' https://api.example.com
```

**2. Używanie -d z GET:**
```bash
# To automatycznie zmieni metodę na POST
curl -d "query=test" https://api.example.com

# Jeśli chcesz GET z parametrami, użyj URL:
curl "https://api.example.com?query=test"
```

**3. Problemy z cudzysłowami w JSON:**
```bash
# ŹLE - problemy z escapowaniem
curl -d "{"name":"Jan"}" https://api.example.com

# DOBRZE - użyj apostrofów dla całości
curl -d '{"name":"Jan"}' https://api.example.com
```

Opcje `-X` i `-d` to fundament pracy z API przez curl - `-X` określa co chcesz zrobić, a `-d` dostarcza dane potrzebne do wykonania operacji.


# wyjaśij tę komendę

```bash
curl -X POST \
     -H "Content-Type: application/json" \
     -d '{"name":"Jan","age":30}' \
     https://api.example.com/users
```
Wyjaśnię krok po kroku tę komendę curl:

## Analiza komendy

```bash
curl -X POST \
     -H "Content-Type: application/json" \
     -d '{"name":"Jan","age":30}' \
     https://api.example.com/users
```

## Rozbicie na części

**1. `curl`** - uruchomienie narzędzia curl

**2. `\`** - znak kontynuacji linii (backslash) - pozwala zapisać długą komendę w wielu liniach dla lepszej czytelności

**3. `-X POST`** - ustawia metodę HTTP na POST (tworzenie nowego zasobu)

**4. `-H "Content-Type: application/json"`** - dodaje nagłówek HTTP informujący serwer, że wysyłane dane są w formacie JSON

**5. `-d '{"name":"Jan","age":30}'`** - dane do wysłania w ciele żądania (JSON z informacjami o użytkowniku)

**6. `https://api.example.com/users`** - docelowy URL endpoint API

## Co się dzieje

Ta komenda wysyła żądanie HTTP POST do API, które:

1. **Tworzy nowego użytkownika** w systemie
2. **Wysyła dane JSON** z imieniem "Jan" i wiekiem 30 lat
3. **Informuje serwer** o formacie danych przez nagłówek Content-Type
4. **Oczekuje odpowiedzi** od serwera (prawdopodobnie potwierdzenie utworzenia użytkownika)

## Przykładowa odpowiedź serwera

```json
{
  "id": 123,
  "name": "Jan",
  "age": 30,
  "created_at": "2025-05-30T10:30:00Z",
  "status": "active"
}
```

## Alternatywne zapisy tej samej komendy

**W jednej linii:**
```bash
curl -X POST -H "Content-Type: application/json" -d '{"name":"Jan","age":30}' https://api.example.com/users
```

**Z danymi z pliku:**
```bash
# Plik user.json zawiera: {"name":"Jan","age":30}
curl -X POST -H "Content-Type: application/json" -d @user.json https://api.example.com/users
```

**Z dodatkowymi nagłówkami (autoryzacja):**
```bash
curl -X POST \
     -H "Content-Type: application/json" \
     -H "Authorization: Bearer your-token-here" \
     -d '{"name":"Jan","age":30}' \
     https://api.example.com/users
```

## Testowanie w praktyce

Możesz przetestować podobne żądanie na publicznym API testowym:

```bash
curl -X POST \
     -H "Content-Type: application/json" \
     -d '{"name":"Jan","age":30,"email":"jan@example.com"}' \
     https://jsonplaceholder.typicode.com/users
```

## Częste modyfikacje

**Dodanie więcej danych:**
```bash
curl -X POST \
     -H "Content-Type: application/json" \
     -d '{"name":"Jan","age":30,"email":"jan@example.com","city":"Warszawa"}' \
     https://api.example.com/users
```

**Z verbose output (szczegóły połączenia):**
```bash
curl -v -X POST \
     -H "Content-Type: application/json" \
     -d '{"name":"Jan","age":30}' \
     https://api.example.com/users
```

**Zapisanie odpowiedzi do pliku:**
```bash
curl -X POST \
     -H "Content-Type: application/json" \
     -d '{"name":"Jan","age":30}' \
     https://api.example.com/users \
     -o response.json
```

To typowy przykład tworzenia zasobu przez REST API - podstawowa operacja CRUD (Create) używana do dodawania nowych danych do systemu.

