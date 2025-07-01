## Komenda `awk`

`awk` to potężny język programowania i narzędzie do przetwarzania tekstu w systemach Unix/Linux. Nazwa pochodzi od nazwisk twórców: Aho, Weinberger i Kernighan. `awk` działa według wzorca "pattern-action" - dla każdej linii wejścia sprawdza wzorce i wykonuje odpowiednie akcje.

### Podstawowa składnia:
```bash
awk 'pattern { action }' input
```

### Wbudowane zmienne:
- `NR` - numer aktualnej linii
- `NF` - liczba pól w aktualnej linii  
- `$0` - cała linia
- `$1, $2, $3...` - poszczególne pola (domyślnie oddzielone spacjami/tabulatorami)
- `FS` - separator pól (Field Separator)

## Przykłady od najprostszych

### 1. Podstawowe wyświetlanie
```bash
# Wyświetl wszystkie linie (jak cat)
echo -e "linia1\nlinia2\nlinia3" | awk '{print}'

# Wyświetl tylko numery linii
echo -e "tekst1\ntekst2\ntekst3" | awk '{print NR}'

# Wyświetl numer linii i zawartość
echo -e "jabłko\ngruszka\nśliwka" | awk '{print NR ": " $0}'
```

### 2. Praca z polami
```bash
# Wyświetl tylko pierwsze pole
echo -e "Jan Kowalski 30\nAnna Nowak 25" | awk '{print $1}'

# Wyświetl pierwsze i drugie pole
echo -e "Jan Kowalski 30\nAnna Nowak 25" | awk '{print $1, $2}'

# Policz liczbę pól w każdej linii
echo -e "jeden dwa\ntrzy cztery pięć\nsześć" | awk '{print NF}'
```

### 3. Z komendami systemowymi
```bash
# Wyświetl tylko nazwy plików z ls -l (bez uprawnień, właścicieli itp.)
ls -l | awk '{print $9}'

# Pokaż procesy i ich PID
ps aux | awk '{print $2, $11}'

# Wyświetl użycie dysku dla konkretnych katalogów
df -h | awk '{print $1, $5}'

# Pokaż tylko IP z ifconfig/ip
ip addr show | awk '/inet / {print $2}'
```

### 4. Filtrowanie według wzorców
```bash
# Wyświetl tylko linie zawierające określony tekst
echo -e "kot pies\nptak ryba\nkot mysz" | awk '/kot/ {print}'

# Wyświetl linie gdzie pierwsze pole to konkretna wartość
echo -e "Jan 30\nAnna 25\nJan 35" | awk '$1 == "Jan" {print}'

# Wyświetl linie gdzie drugie pole jest większe niż 30
echo -e "Jan 30\nAnna 25\nPiotr 35" | awk '$2 > 30 {print}'
```

### 5. Operacje matematyczne
```bash
# Suma drugiej kolumny
echo -e "produktA 100\nproduktB 200\nproduktC 150" | awk '{sum += $2} END {print "Suma:", sum}'

# Średnia z wartości
echo -e "10\n20\n30\n40" | awk '{sum += $1; count++} END {print "Średnia:", sum/count}'

# Znajdź maksymalną wartość
echo -e "5\n15\n3\n25\n8" | awk 'BEGIN {max=0} {if($1>max) max=$1} END {print "Max:", max}'
```

### 6. Zmiana separatora pól
```bash
# Dla danych rozdzielonych dwukropkiem (jak /etc/passwd)
echo -e "user1:x:1001:1001:User One:/home/user1:/bin/bash" | awk -F: '{print $1, $5}'

# Dla danych CSV
echo -e "Jan,Kowalski,30\nAnna,Nowak,25" | awk -F, '{print $1 " " $2 " ma " $3 " lat"}'
```

### 7. Formatowanie wyjścia
```bash
# Printf dla lepszego formatowania
echo -e "Jan 1500\nAnna 2300\nPiotr 1800" | awk '{printf "%-10s %6d PLN\n", $1, $2}'

# Dodawanie tekstu
echo -e "plik1.txt\nplik2.txt" | awk '{print "Przetwarzam: " $0}'
```

### 8. Warunki i pętle
```bash
# Różne akcje dla różnych warunków
echo -e "5\n15\n25\n3" | awk '{
    if ($1 < 10) 
        print $1 " jest małe"
    else if ($1 < 20) 
        print $1 " jest średnie"
    else 
        print $1 " jest duże"
}'
```

### 9. Z potokikami (pipes)
```bash
# Kombinacja z innymi komendami
ps aux | head -10 | awk '{print $1, $11}' | sort

# Analiza logów systemowych
dmesg | awk '/error/ {print NR ": " $0}' | tail -5

# Statystyki użycia pamięci
free -h | awk '/^Mem:/ {print "Używane:", $3, "z", $2}'
```

### 10. Grupowanie i zliczanie
```bash
# Zlicz wystąpienia pierwszego pola
echo -e "Jan\nAnna\nJan\nPiotr\nAnna\nJan" | awk '{count[$1]++} END {for (name in count) print name, count[name]}'

# Grupuj i sumuj
echo -e "sprzedaż 100\nmarketing 50\nsprzedaż 200\nmarketing 75" | awk '{sum[$1] += $2} END {for (dept in sum) print dept, sum[dept]}'
```

Te przykłady pokazują najczęstsze zastosowania `awk` w codziennej pracy z terminalem. Komenda ta jest szczególnie przydatna do szybkiej analizy i przetwarzania danych tekstowych bez potrzeby pisania skomplikowanych skryptów.
# Wyrazenia regularne
```text
1. wyjaśnij znaczenie slashy: /kot/
2. wyjaśnij '{sum += $2} END {print "Suma:", sum}'
3. wyjaśnij '{sum += $1; count++} END {print "Średnia:", sum/count}'
4. wyjaśnij 'BEGIN {max=0} {if($1>max) max=$1} END {print "Max:", max}'
```




## 1. Znaczenie slashy: `/kot/`

Slashe `/kot/` w `awk` definiują **wyrażenie regularne** (regex) - wzorzec do wyszukiwania tekstu.

```bash
awk '/kot/ {print}'
```

To oznacza: "dla każdej linii, która **zawiera** słowo 'kot', wykonaj akcję `{print}`"

Przykłady:
```bash
echo -e "mam kota\npies szczeka\nkot miauczy\nptaki śpiewają" | awk '/kot/ {print}'
# Wynik:
# mam kota
# kot miauczy
```

Inne wzorce regex:
```bash
# Linie zaczynające się od "kot"
awk '/^kot/ {print}'

# Linie kończące się na "kot"  
awk '/kot$/ {print}'

# Linie zawierające cyfry
awk '/[0-9]/ {print}'
```

## 2. Wyjaśnienie `{sum += $2} END {print "Suma:", sum}`

Ta konstrukcja składa się z dwóch części:

**`{sum += $2}`** - wykonuje się dla **każdej linii**:
- `sum += $2` to skrót od `sum = sum + $2`
- Dodaje wartość z drugiego pola (`$2`) do zmiennej `sum`

**`END {print "Suma:", sum}`** - wykonuje się **tylko raz na końcu**:
- `END` to specjalny wzorzec - uruchamia się po przetworzeniu wszystkich linii
- Wyświetla końcową sumę

Przykład krok po kroku:
```bash
echo -e "jabłka 10\ngruszki 20\nśliwki 15" | awk '{sum += $2} END {print "Suma:", sum}'

# Przetwarzanie:
# Linia 1: sum = 0 + 10 = 10
# Linia 2: sum = 10 + 20 = 30  
# Linia 3: sum = 30 + 15 = 45
# END: wyświetl "Suma: 45"
```

## 3. Wyjaśnienie `{sum += $1; count++} END {print "Średnia:", sum/count}`

**`{sum += $1; count++}`** - dla każdej linii:
- `sum += $1` - dodaje wartość pierwszego pola do sumy
- `;` - separator komend (można też użyć nowej linii)
- `count++` - zwiększa licznik o 1 (skrót od `count = count + 1`)

**`END {print "Średnia:", sum/count}`** - na końcu:
- Dzieli sumę przez liczbę elementów i wyświetla średnią

Przykład:
```bash
echo -e "10\n20\n30" | awk '{sum += $1; count++} END {print "Średnia:", sum/count}'

# Przetwarzanie:
# Linia 1: sum = 0 + 10 = 10, count = 0 + 1 = 1
# Linia 2: sum = 10 + 20 = 30, count = 1 + 1 = 2
# Linia 3: sum = 30 + 30 = 60, count = 2 + 1 = 3
# END: średnia = 60/3 = 20
```

## 4. Wyjaśnienie `BEGIN {max=0} {if($1>max) max=$1} END {print "Max:", max}`

Ta konstrukcja ma **trzy sekcje**:

**`BEGIN {max=0}`** - wykonuje się **przed** przetwarzaniem jakiejkolwiek linii:
- Inicjalizuje zmienną `max` wartością 0
- `BEGIN` to specjalny wzorzec uruchamiany na początku

**`{if($1>max) max=$1}`** - dla każdej linii:
- `if($1>max)` - sprawdza czy wartość pierwszego pola jest większa od aktualnego maksimum
- `max=$1` - jeśli tak, to zapisuje tę wartość jako nowe maksimum

**`END {print "Max:", max}`** - na końcu:
- Wyświetla znalezione maksimum

Przykład krok po kroku:
```bash
echo -e "5\n15\n3\n25\n8" | awk 'BEGIN {max=0} {if($1>max) max=$1} END {print "Max:", max}'

# Przetwarzanie:
# BEGIN: max = 0
# Linia 1 (5): 5 > 0? TAK → max = 5
# Linia 2 (15): 15 > 5? TAK → max = 15  
# Linia 3 (3): 3 > 15? NIE → max = 15
# Linia 4 (25): 25 > 15? TAK → max = 25
# Linia 5 (8): 8 > 25? NIE → max = 25
# END: wyświetl "Max: 25"
```

**Uwaga**: Jeśli wszystkie liczby są ujemne, lepiej zainicjalizować `max` pierwszą wartością:
```bash
awk 'NR==1 {max=$1} {if($1>max) max=$1} END {print "Max:", max}'
```

# czy wzrorzec zawsze jest pomiędzy //?

**Nie**, wzorzec nie zawsze jest pomiędzy slashami `/`. Slashe są używane tylko dla **wyrażeń regularnych**.

## Rodzaje wzorców w `awk`:

### 1. **Wyrażenia regularne** - między slashami `/pattern/`
```bash
# Linie zawierające "kot"
awk '/kot/ {print}'

# Linie zaczynające się od cyfry
awk '/^[0-9]/ {print}'
```

### 2. **Wyrażenia logiczne** - bez slashów
```bash
# Drugie pole równe "Jan"
awk '$2 == "Jan" {print}'

# Pierwsze pole większe niż 100
awk '$1 > 100 {print}'

# Liczba pól równa 3
awk 'NF == 3 {print}'

# Numer linii większy niż 5
awk 'NR > 5 {print}'
```

### 3. **Kombinacje logiczne**
```bash
# Drugie pole większe niż 30 I trzecie pole równe "aktywny"
awk '$2 > 30 && $3 == "aktywny" {print}'

# Pierwsza linia LUB linie zawierające "error"
awk 'NR == 1 || /error/ {print}'

# NIE zawiera "test"
awk '!/test/ {print}'
```

### 4. **Zakresy** - między dwoma wzorcami
```bash
# Od linii zawierającej "START" do linii zawierającej "END"
awk '/START/,/END/ {print}'

# Od 5 linii do 10 linii
awk 'NR >= 5 && NR <= 10 {print}'
```

### 5. **Specjalne wzorce**
```bash
# Na początku (przed pierwszą linią)
awk 'BEGIN {print "Nagłówek"}'

# Na końcu (po ostatniej linii)  
awk 'END {print "Koniec"}'

# Brak wzorca = wszystkie linie
awk '{print NR, $0}'
```

### 6. **Wzorce z funkcjami**
```bash
# Długość linii większa niż 50 znaków
awk 'length($0) > 50 {print}'

# Zawiera podciąg (bez regex)
awk 'index($0, "tekst") > 0 {print}'
```

## Przykłady porównawcze:

```bash
# Z regex (między slashami)
echo -e "Jan123\nAnna456\nPiotr" | awk '/[0-9]/ {print}'
# Wynik: Jan123, Anna456

# Z wyrażeniem logicznym (bez slashów)  
echo -e "Jan 25\nAnna 30\nPiotr 20" | awk '$2 > 25 {print}'
# Wynik: Anna 30

# Kombinacja obu
echo -e "Jan 25\nAnna 30\nPiotr 20" | awk '/Anna/ && $2 > 25 {print}'
# Wynik: Anna 30
```

**Podsumowanie**: Slashe `/` używaj tylko dla wyrażeń regularnych (wyszukiwanie tekstu według wzorca). Dla porównań liczbowych, logicznych czy sprawdzania pól używaj wyrażeń bez slashów.


# wypisz ważne wzorce

## Ważne wzorce w `awk`

### **1. Wzorce specjalne**
```bash
BEGIN          # Wykonuje się przed przetwarzaniem pierwszej linii
END            # Wykonuje się po przetworzeniu ostatniej linii
```

### **2. Wyrażenia regularne `/pattern/`**
```bash
/text/         # Linie zawierające "text"
/^start/       # Linie zaczynające się od "start"
/end$/         # Linie kończące się na "end"
/^$/           # Puste linie
/[0-9]/        # Linie zawierające cyfry
/[a-zA-Z]/     # Linie zawierające litery
/[0-9]+/       # Linie zawierające jedną lub więcej cyfr
/^[a-zA-Z]/    # Linie zaczynające się od litery
/\./           # Linie zawierające kropkę (escaped)
```

### **3. Porównania pól**
```bash
$1 == "text"   # Pierwsze pole równe "text"
$2 != "text"   # Drugie pole różne od "text"
$3 > 100       # Trzecie pole większe niż 100
$4 >= 50       # Czwarte pole większe lub równe 50
$5 < 10        # Piąte pole mniejsze niż 10
$6 <= 20       # Szóste pole mniejsze lub równe 20
```

### **4. Wzorce z numerami linii (NR)**
```bash
NR == 1        # Tylko pierwsza linia
NR > 5         # Linie od 6 wzwyż
NR <= 10       # Pierwsze 10 linii
NR % 2 == 0    # Linie parzyste (2, 4, 6...)
NR % 2 == 1    # Linie nieparzyste (1, 3, 5...)
```

### **5. Wzorce z liczbą pól (NF)**
```bash
NF == 3        # Linie z dokładnie 3 polami
NF > 2         # Linie z więcej niż 2 polami
NF == 0        # Puste linie (bez pól)
```

### **6. Operatory logiczne**
```bash
$1 == "Jan" && $2 > 30     # I (AND)
$1 == "Jan" || $1 == "Anna" # LUB (OR)
!($1 == "Jan")             # NIE (NOT)
!/error/                   # Linie NIE zawierające "error"
```

### **7. Zakresy**
```bash
/START/,/END/  # Od linii z "START" do linii z "END"
NR==5,NR==10   # Od linii 5 do linii 10
$1=="BEGIN",$1=="FINISH"  # Od pierwszego pola "BEGIN" do "FINISH"
```

### **8. Wzorce z funkcjami**
```bash
length($0) > 80        # Linie dłuższe niż 80 znaków
length($1) == 5        # Pierwsze pole o długości 5 znaków
substr($1,1,1) == "A"  # Pierwsze pole zaczyna się od "A"
index($0,"error") > 0  # Linia zawiera "error"
match($0,/[0-9]+/)     # Linia zawiera liczby
```

### **9. Wzorce matematyczne**
```bash
$2 % 2 == 0    # Drugie pole jest parzyste
$3 / $2 > 1.5  # Stosunek trzeciego do drugiego pola > 1.5
int($1) == $1  # Pierwsze pole to liczba całkowita
$1 ~ /^[0-9]+$/  # Pierwsze pole to tylko cyfry
```

### **10. Wzorce z operatorem dopasowania `~`**
```bash
$1 ~ /^[A-Z]/  # Pierwsze pole zaczyna się od wielkiej litery
$2 ~ /[0-9]/   # Drugie pole zawiera cyfry  
$0 ~ /error/   # Cała linia zawiera "error" (jak /error/)
$3 !~ /test/   # Trzecie pole NIE zawiera "test"
```

## Przykłady praktyczne:

```bash
# Przetwarzaj tylko linie z danymi (nie puste, nie komentarze)
awk '!/^#/ && NF > 0 {print}'

# Linie gdzie pierwszy i ostatni znak to litera
awk '/^[a-zA-Z].*[a-zA-Z]$/ {print}'

# Drugie pole to prawidłowy email (uproszczony)
awk '$2 ~ /@.*\./ {print}'

# Suma tylko dla linii zawierających liczby w pierwszym polu
awk '$1 ~ /^[0-9]+$/ {sum += $1} END {print sum}'

# Linie z datą w formacie YYYY-MM-DD
awk '/^[0-9]{4}-[0-9]{2}-[0-9]{2}/ {print}'
```

Te wzorce pokrywają większość typowych przypadków użycia `awk` w codziennej pracy z przetwarzaniem tekstu.


# a linia która nie zawiera wzorca?

## Linia która nie zawiera wzorca

Używasz operatora **negacji `!`** przed wzorcem.

### **1. Dla wyrażeń regularnych**
```bash
# Linie NIE zawierające "error"
awk '!/error/ {print}'

# Linie NIE zaczynające się od "#" (pomijanie komentarzy)
awk '!/^#/ {print}'

# Linie NIE będące pustymi
awk '!/^$/ {print}'

# Linie NIE zawierające cyfr
awk '!/[0-9]/ {print}'
```

### **2. Dla wyrażeń logicznych**
```bash
# Linie gdzie pierwsze pole NIE równa się "Jan"
awk '!($1 == "Jan") {print}'
# lub krócej:
awk '$1 != "Jan" {print}'

# Linie gdzie drugie pole NIE jest większe niż 100
awk '!($2 > 100) {print}'
# lub krócej:
awk '$2 <= 100 {print}'
```

### **3. Z operatorem dopasowania `!~`**
```bash
# Pierwsze pole NIE zawiera cyfr
awk '$1 !~ /[0-9]/ {print}'

# Cała linia NIE zawiera "test"
awk '$0 !~ /test/ {print}'

# Drugie pole NIE jest emailem
awk '$2 !~ /@/ {print}'
```

### **4. Przykłady praktyczne**

```bash
# Pomiń linie z komentarzami i puste linie
echo -e "# komentarz\ndata1\n\ndata2\n# inny komentarz" | awk '!/^#/ && !/^$/ {print}'

# Wyświetl tylko linie bez słowa "błąd"
echo -e "OK: operacja\nBŁĄD: problem\nOK: sukces" | awk '!/[Bb]łąd/ {print}'

# Linie które nie są nagłówkami (nie zaczynają się od wielkiej litery)
echo -e "NAGŁÓWEK\nzwykły tekst\nINNY NAGŁÓWEK\ndalszy tekst" | awk '!/^[A-Z]/ {print}'

# Filtruj procesy (usuń nagłówek z ps)
ps aux | awk 'NR > 1 && !/grep/ {print $2, $11}'
```

### **5. Kombinacje z innymi wzorcami**

```bash
# Linie które NIE zawierają "test" I mają więcej niż 2 pola
awk '!/test/ && NF > 2 {print}'

# Linie które NIE są puste I NIE są komentarzami
awk '!/^$/ && !/^#/ {print}'

# Od linii 5 wzwyż, ale pomijające linie z "skip"
awk 'NR >= 5 && !/skip/ {print}'
```

### **6. Przydatne wzorce negacji**

```bash
!/^$/          # NIE puste linie
!/^#/          # NIE komentarze zaczynające się od #
!/^;/          # NIE komentarze zaczynające się od ;
!/^[[:space:]]*$/  # NIE linie zawierające tylko białe znaki
!/TODO/        # NIE linie z TODO
!/DEBUG/       # NIE linie debugowe
!/^\./         # NIE linie zaczynające się od kropki
```

**Przykład porównawczy:**
```bash
# Zawiera "error"
echo -e "OK\nERROR: problem\nSUCCESS" | awk '/error/ {print}'
# Wynik: ERROR: problem

# NIE zawiera "error"  
echo -e "OK\nERROR: problem\nSUCCESS" | awk '!/error/ {print}'
# Wynik: OK, SUCCESS
```

**Uwaga**: `!/wzorzec/` to skrót od `!($0 ~ /wzorzec/)` - negacja dopasowania całej linii do wzorca.


# a linia która zawiera więcej niż 3 cyfty?

## Linie zawierające więcej niż 3 cyfry

Istnieje kilka sposobów na sprawdzenie tego wzorca:

### **1. Wyrażenie regularne z `{n,}` (n lub więcej)**
```bash
# Więcej niż 3 cyfry (czyli 4 lub więcej)
awk '/[0-9]{4,}/ {print}'

# Przykład:
echo -e "123\n1234\n12345\nabc123def\nxy12z" | awk '/[0-9]{4,}/ {print}'
# Wynik: 1234, 12345
```

### **2. Zliczanie cyfr w linii**
```bash
# Zlicz wszystkie cyfry w linii
awk 'gsub(/[0-9]/, "&") > 3 {print}'

# Przykład:
echo -e "a1b2c3\na1b2c3d4\n12xy34z56\ntext" | awk 'gsub(/[0-9]/, "&") > 3 {print}'
# Wynik: a1b2c3d4, 12xy34z56
```

### **3. Używając funkcji match() z licznikiem**
```bash
# Bardziej złożone podejście
awk '{
    count = 0
    for(i=1; i<=length($0); i++) {
        if(substr($0,i,1) ~ /[0-9]/) count++
    }
    if(count > 3) print
}'
```

### **4. Praktyczne przykłady**

```bash
# Linie z długimi numerami (więcej niż 3 cyfry pod rząd)
echo -e "tel: 123\ntel: 1234567\nkod: 12\npesel: 98765432101" | awk '/[0-9]{4,}/ {print}'

# Linie z dużą liczbą cyfr ogółem
echo -e "a1b2c3\na1b2c3d4e5\n12-34-56\ntext only" | awk 'gsub(/[0-9]/, "&") > 3 {print}'

# Kombinacja: linie zawierające słowo "numer" I więcej niż 3 cyfry
echo -e "numer: 123\nnumer: 12345\nkod: 1234\ntext" | awk '/numer/ && /[0-9]{4,}/ {print}'
```

### **5. Różne warianty wzorców**

```bash
# Dokładnie więcej niż 3 cyfry pod rząd
awk '/[0-9]{4,}/ {print}'

# Więcej niż 3 cyfry w całej linii (niekoniecznie pod rząd)
awk 'gsub(/[0-9]/, "&") > 3 {print}'

# Więcej niż 3 cyfry w konkretnym polu
awk 'gsub(/[0-9]/, "", $2) && length($2) < length($2"-original") - 3 {print}'

# Prostszy sposób dla konkretnego pola:
awk '{temp=$2; if(gsub(/[0-9]/, "", temp) && length($2)-length(temp) > 3) print}'
```

### **6. Testowanie różnych przypadków**

```bash
# Przygotuj dane testowe
echo -e "123\n1234\n12345\na1b2c3d4\nxy12z34w56q\nno digits\n12-34-56-78" > /tmp/test

# Metoda 1: cyfry pod rząd
awk '/[0-9]{4,}/ {print "Pod rząd:", $0}' /tmp/test

# Metoda 2: wszystkie cyfry w linii  
awk 'gsub(/[0-9]/, "&") > 3 {print "Ogółem:", $0}' /tmp/test
```

### **7. Z innymi komendami**

```bash
# Znajdź pliki z numerami wersji (więcej niż 3 cyfry)
ls -la | awk '/[0-9]{4,}/ {print $9}'

# Logi z długimi ID
dmesg | awk '/[0-9]{4,}/ {print}'

# IP adresy (każdy oktet to max 3 cyfry, ale całość to więcej)
ip addr | awk 'gsub(/[0-9]/, "&") > 3 {print}'
```

**Najczęściej używane podejścia:**
- `/[0-9]{4,}/` - dla cyfr występujących pod rząd
- `gsub(/[0-9]/, "&") > 3` - dla zliczenia wszystkich cyfr w linii

Wybór zależy od tego, czy chcesz cyfry pod rząd, czy łączną liczbę cyfr w całej linii.

