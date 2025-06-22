# Skróty i symbole bash/Linux - Kompletny przewodnik

## Spis treści
1. [Nawigacja i zastępowanie ścieżek](#nawigacja-i-zastępowanie-ścieżek)
2. [Przekierowania i rurki](#przekierowania-i-rurki)
3. [Wildcards (globbing)](#wildcards-globbing)
4. [Zmienne i podstawienia](#zmienne-i-podstawienia)
5. [Podstawienia komend](#podstawienia-komend)
6. [Zmienne specjalne](#zmienne-specjalne)
7. [Historia komend](#historia-komend)
8. [Operatory logiczne i łączenie](#operatory-logiczne-i-łączenie)
9. [Cudzysłowy i escape](#cudzysłowy-i-escape)
10. [Porównania w testach](#porównania-w-testach)
11. [Testy plików](#testy-plików)
12. [Specjalne znaki w regex](#specjalne-znaki-w-regex)

---

## Nawigacja i zastępowanie ścieżek
- `~` - katalog domowy użytkownika (~/ = /home/username/)
- `~user` - katalog domowy określonego użytkownika
- `-` - poprzedni katalog (cd -)
- `.` - bieżący katalog
- `..` - katalog nadrzędny
- `/` - katalog główny (root)

## Przekierowania i rurki
- `>` - przekierowanie stdout do pliku (nadpisanie)
- `>>` - przekierowanie stdout do pliku (dopisanie)
- `<` - przekierowanie stdin z pliku
- `|` - pipe (przekazanie wyjścia jako wejście)
- `2>` - przekierowanie stderr do pliku
- `&>` lub `>&` - przekierowanie stdout i stderr
- `2>&1` - przekierowanie stderr do stdout
- `<<` - here document
- `<<<` - here string
- `|&` - pipe stdout i stderr

## Wildcards (globbing)
- `*` - dowolny ciąg znaków (zero lub więcej)
- `?` - jeden dowolny znak
- `[abc]` - jeden ze znaków a, b lub c
- `[a-z]` - jeden znak z zakresu a-z
- `[!abc]` lub `[^abc]` - dowolny znak oprócz a, b, c
- `{a,b,c}` - rozwinięcie nawiasów (brace expansion)
- `{1..10}` - sekwencja liczb od 1 do 10
- `{a..z}` - sekwencja liter od a do z

## Zmienne i podstawienia
- `$var` lub `${var}` - wartość zmiennej
- `${var:-default}` - użyj wartości lub default jeśli pusta
- `${var:=default}` - ustaw i użyj default jeśli pusta
- `${var:?error}` - wyświetl błąd jeśli zmienna pusta
- `${var:+alt_value}` - użyj alt_value jeśli var niepusta
- `${#var}` - długość zmiennej
- `${var%pattern}` - usuń najkrótsze dopasowanie z końca
- `${var%%pattern}` - usuń najdłuższe dopasowanie z końca
- `${var#pattern}` - usuń najkrótsze dopasowanie z początku
- `${var##pattern}` - usuń najdłuższe dopasowanie z początku
- `${var/pattern/replacement}` - zamień pierwsze wystąpienie
- `${var//pattern/replacement}` - zamień wszystkie wystąpienia

### Mnemonik dla usuwania wzorców:
- `#` jest **przed** $ na klawiaturze → usuwa z **początku**
- `%` jest **po** $ na klawiaturze → usuwa z **końca**
- Podwójny znak (`##`, `%%`) = **najdłuższe** dopasowanie
- Pojedynczy znak (`#`, `%`) = **najkrótsze** dopasowanie

## Podstawienia komend
- `$(command)` - podstawienie komendy (nowoczesne)
- `` `command` `` - podstawienie komendy (starsze)
- `$((expression))` - arytmetyka całkowitoliczbowa
- `$[expression]` - arytmetyka (przestarzałe)

## Zmienne specjalne
- `$0` - nazwa skryptu/shella
- `$1, $2, $3...` - argumenty pozycyjne
- `$#` - liczba argumentów
- `$@` - wszystkie argumenty jako oddzielne słowa
- `$*` - wszystkie argumenty jako jedno słowo
- `$$` - PID bieżącego procesu
- `$!` - PID ostatniego procesu w tle
- `$?` - kod wyjścia ostatniej komendy
- `$_` - ostatni argument poprzedniej komendy

## Historia komend
- `!!` - ostatnia komenda
- `!n` - komenda numer n z historii
- `!string` - ostatnia komenda zaczynająca się od string
- `!?string` - ostatnia komenda zawierająca string
- `^old^new` - zamień old na new w ostatniej komendzie
- `!$` - ostatni argument ostatniej komendy
- `!^` - pierwszy argument ostatniej komendy
- `!*` - wszystkie argumenty ostatniej komendy

## Operatory logiczne i łączenie
- `&&` - AND (wykonaj jeśli poprzednia komenda się powiodła)
- `||` - OR (wykonaj jeśli poprzednia komenda się nie powiodła)
- `;` - separator komend (wykonaj niezależnie)
- `&` - uruchom w tle
- `()` - grupowanie komend w subshell
- `{}` - grupowanie komend w bieżącym shell

## Cudzysłowy i escape
- `'single'` - dosłowny tekst (bez interpretacji)
- `"double"` - interpretacja zmiennych ale nie globbing
- `\` - escape pojedynczego znaku
- `$'string'` - interpretacja sekwencji escape (\n, \t, itp.)

## Porównania w testach
- `-eq` - równe (liczby)
- `-ne` - różne (liczby)
- `-lt` - mniejsze (liczby)
- `-le` - mniejsze lub równe (liczby)
- `-gt` - większe (liczby)
- `-ge` - większe lub równe (liczby)
- `=` lub `==` - równe (stringi)
- `!=` - różne (stringi)
- `=~` - dopasowanie regex
- `-z` - string pusty
- `-n` - string niepusty

## Testy plików
- `-f` - plik regularny
- `-d` - katalog
- `-e` - istnieje
- `-r` - można czytać
- `-w` - można pisać
- `-x` - można wykonać
- `-s` - niepusty
- `-L` - link symboliczny

## Specjalne znaki w regex
- `.` - dowolny znak
- `^` - początek linii
- `$` - koniec linii
- `+` - jeden lub więcej
- `*` - zero lub więcej
- `?` - zero lub jeden
- `\` - escape

---

## Praktyczne przykłady użycia

### Zmienne i podstawienia
```bash
# Podstawowe użycie
echo ${HOME:-/tmp}              # użyj HOME lub /tmp
file=${1:-default.txt}          # pierwszy argument lub default
echo ${#PATH}                   # długość zmiennej PATH

# Usuwanie wzorców (przykład z %%)
filename="script.sh.backup"
echo ${filename%.*}             # script.sh (usuń .backup)
echo ${filename%%.*}            # script (usuń .sh.backup)

file="/home/user/docs/file.tar.gz"
echo ${file%.*}                 # /home/user/docs/file.tar (usuń .gz)
echo ${file%%.*}                # /home/user/docs/file (usuń .tar.gz)

# Usuwanie z początku
path="/usr/local/bin/command"
echo ${path#*/}                 # usr/local/bin/command (usuń pierwszy /)
echo ${path##*/}                # command (usuń wszystko do ostatniego /)

# Zamiana
text="hello world hello"
echo ${text/hello/hi}           # hi world hello (pierwsza zamiana)
echo ${text//hello/hi}          # hi world hi (wszystkie zamiany)
```

### Historia komend
```bash
sudo !!                         # powtórz ostatnią komendę z sudo
echo !$                         # ostatni argument ostatniej komendy
!grep                           # ostatnia komenda zaczynająca się od grep
^old^new                        # zamień old na new w ostatniej komendzie
cp !$ !$.bak                    # skopiuj ostatni plik z kopią zapasową
```

### Globbing i rozwijanie
```bash
rm *.{jpg,png}                  # usuń pliki .jpg i .png
cp file{,.bak}                  # skopiuj file do file.bak
echo {1..5}                     # wypisze: 1 2 3 4 5
ls [A-Z]*                       # pliki zaczynające się wielką literą
mv file{.txt,.backup}           # zmień rozszerzenie z .txt na .backup
mkdir {dir1,dir2,dir3}          # utwórz trzy katalogi
```

### Przekierowania
```bash
command 2>/dev/null             # przekieruj błędy do /dev/null
command &>/dev/null             # przekieruj wszystko do /dev/null
command > output.txt 2>&1       # stdout i stderr do pliku
cat << EOF > file.txt           # here document
To jest zawartość pliku
EOF

# Zaawansowane przekierowania
exec 3< input.txt               # otwórz deskryptor 3 do czytania
read line <&3                   # czytaj z deskryptora 3
exec 3<&-                       # zamknij deskryptor 3
```

### Operatory logiczne
```bash
make && make install            # install tylko jeśli make się powiedzie
cd /tmp || exit 1               # wyjdź jeśli cd się nie powiedzie
(cd /tmp; ls)                   # wykonaj w subshell
{ cd /tmp; ls; }                # wykonaj w bieżącym shell
command1 && command2 || command3 # jeśli 1 OK to 2, inaczej 3
```

### Podstawienia komend
```bash
files=$(ls *.txt)               # przypisz listę do zmiennej
echo "Dzisiaj: $(date)"         # wstaw wynik komendy
result=$((5 + 3))               # arytmetyka
echo `date`                     # podstawienie (starsze)
today=$(date +%Y-%m-%d)         # sformatowana data

# Zagnieżdżone podstawienia
backup_dir="/backup/$(date +%Y%m%d)/$(whoami)"
```

### Testy i warunki
```bash
# Testy plików
[[ -f "$file" ]] && echo "Plik istnieje"
[[ -d "$dir" ]] || mkdir "$dir"
[[ -x "$script" ]] && ./"$script"

# Testy stringów
[[ -z "$var" ]] && echo "Zmienna pusta"
[[ "$str1" == "$str2" ]] && echo "Identyczne"
[[ "$text" =~ ^[0-9]+$ ]] && echo "Tylko cyfry"

# Testy liczbowe
[[ $num -gt 10 ]] && echo "Większe od 10"
[[ $value -eq 0 ]] || echo "Niezerowe"
```

### Zaawansowane przykłady
```bash
# Backup z datą
cp important.txt{,.backup.$(date +%Y%m%d)}

# Pętla z sekwencją
for i in {1..10}; do echo "Iteration $i"; done

# Warunki z krótkimi operatorami
[[ -f ~/.bashrc ]] && source ~/.bashrc

# Grupowanie i przekierowania
{
    echo "Start: $(date)"
    ls -la
    echo "End: $(date)"
} > report.txt 2>&1

# Historia z modyfikacją
!ls:s/txt/bak/                  # ostatnia komenda ls, zamień txt na bak
```

---

*Ten przewodnik zawiera wszystkie najważniejsze skróty i symbole bash/Linux używane w codziennej pracy administratora systemu i programisty.*