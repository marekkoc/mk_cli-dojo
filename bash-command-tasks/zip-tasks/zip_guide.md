# Komendy ZIP - Pakowanie, Rozpakowywanie i Testowanie

## Pakowanie archiwów

### Podstawowe pakowanie
```bash
# Spakuj pliki do archiwum
zip archiwum.zip plik1.txt plik2.txt plik3.txt

# Spakuj wszystkie pliki z bieżącego katalogu
zip archiwum.zip *

# Spakuj katalog rekurencyjnie
zip -r archiwum.zip katalog/

# Spakuj wiele katalogów
zip -r archiwum.zip katalog1/ katalog2/ katalog3/
```

### Zaawansowane opcje pakowania
```bash
# Maksymalna kompresja
zip -9 -r archiwum.zip katalog/

# Bez kompresji (tylko archiwizacja)
zip -0 -r archiwum.zip katalog/

# Dodaj pliki do istniejącego archiwum
zip -u archiwum.zip nowy_plik.txt

# Usuń plik z archiwum
zip -d archiwum.zip niepotrzebny_plik.txt

# Wyłącz określone typy plików
zip -r archiwum.zip katalog/ -x "*.tmp" "*.log"

# Szyfrowanie hasłem
zip -e -r archiwum.zip katalog/

# Podział na części (każda max 100MB)
zip -r -s 100m archiwum.zip duzy_katalog/
```

### Opcje z wyświetlaniem postępu
```bash
# Pokaż szczegóły podczas pakowania
zip -v -r archiwum.zip katalog/

# Tryb cichy (bez komunikatów)
zip -q -r archiwum.zip katalog/

# Pokaż tylko nazwy dodawanych plików
zip -r archiwum.zip katalog/ | grep "adding:"
```

## Rozpakowywanie archiwów

### Podstawowe rozpakowywanie
```bash
# Rozpakuj archiwum do bieżącego katalogu
unzip archiwum.zip

# Rozpakuj do określonego katalogu
unzip archiwum.zip -d /ścieżka/do/katalogu/

# Rozpakuj z nadpisaniem bez pytania
unzip -o archiwum.zip

# Rozpakuj bez nadpisywania istniejących plików
unzip -n archiwum.zip
```

### Selektywne rozpakowywanie
```bash
# Rozpakuj tylko określone pliki
unzip archiwum.zip plik1.txt plik2.txt

# Rozpakuj pliki pasujące do wzorca
unzip archiwum.zip "*.txt"

# Rozpakuj wszystko oprócz określonych plików
unzip archiwum.zip -x "*.log" "temp/*"

# Rozpakuj tylko pliki z określonego katalogu
unzip archiwum.zip "katalog/*"
```

### Opcje rozpakowywania
```bash
# Zachowaj oryginalne znaczniki czasu
unzip -o archiwum.zip

# Konwertuj nazwy plików na małe litery
unzip -L archiwum.zip

# Utwórz katalogi jeśli nie istnieją
unzip -j archiwum.zip

# Rozpakuj z hasłem
unzip -P hasło archiwum.zip

# Tryb cichy
unzip -q archiwum.zip

# Pokaż szczegóły
unzip -v archiwum.zip
```

## Testowanie i sprawdzanie archiwów

### Testowanie integralności
```bash
# Sprawdź integralność archiwum
unzip -t archiwum.zip

# Testuj z szczegółowymi informacjami
unzip -tv archiwum.zip

# Sprawdź tylko określone pliki
unzip -t archiwum.zip "*.txt"
```

### Przeglądanie zawartości
```bash
# Wyświetl listę plików w archiwum
unzip -l archiwum.zip

# Szczegółowa lista z rozmiarami i datami
unzip -ll archiwum.zip

# Lista z dodatkowymi informacjami
zipinfo archiwum.zip

# Krótka lista tylko nazw plików
zipinfo -1 archiwum.zip

# Sprawdź czy plik istnieje w archiwum
zipinfo archiwum.zip | grep "plik.txt"
```

### Informacje o archiwum
```bash
# Pokaż szczegółowe informacje
zipinfo -v archiwum.zip

# Statystyki kompresji
zipinfo -h archiwum.zip

# Sprawdź czy archiwum jest zaszyfrowane
zipinfo archiwum.zip | grep -i encrypt
```

## Przydatne kombinacje

### Backup z datą
```bash
# Utwórz archiwum z aktualną datą
zip -r backup_$(date +%Y%m%d_%H%M%S).zip /ścieżka/do/danych/

# Backup z wykluczeniem plików tymczasowych
zip -r backup_$(date +%Y%m%d).zip projekt/ -x "*.tmp" "*.log" "node_modules/*" ".git/*"
```

### Weryfikacja przed rozpakowaniem
```bash
# Sprawdź i rozpakuj jeśli OK
if unzip -t archiwum.zip; then
    echo "Archiwum jest poprawne, rozpakowuję..."
    unzip archiwum.zip
else
    echo "Archiwum jest uszkodzone!"
fi
```

### Masowe operacje
```bash
# Sprawdź wszystkie archiwa zip w katalogu
for zip_file in *.zip; do
    echo "Sprawdzam: $zip_file"
    unzip -t "$zip_file"
done

# Rozpakuj wszystkie archiwa do osobnych katalogów
for zip_file in *.zip; do
    dir_name="${zip_file%.zip}"
    mkdir -p "$dir_name"
    unzip "$zip_file" -d "$dir_name"
done
```

## Przykłady praktyczne

### Archiwizacja projektu
```bash
# Spakuj projekt z wykluczeniem niepotrzebnych plików
zip -r projekt_backup.zip projekt/ \
    -x "*/node_modules/*" \
    -x "*/.git/*" \
    -x "*/tmp/*" \
    -x "*.log" \
    -x "*.tmp"
```

### Bezpieczne rozpakowywanie
```bash
# Utwórz katalog i rozpakuj tam
mkdir -p rozpakowane_archiwum
cd rozpakowane_archiwum
unzip ../archiwum.zip
```

### Aktualizacja archiwum
```bash
# Dodaj nowe pliki bez duplikowania istniejących
zip -u archiwum.zip nowe_pliki/*

# Odśwież pliki które zostały zmienione
zip -f archiwum.zip
```

## Kody błędów
- `0` - sukces
- `1` - jeden lub więcej plików było pominiętych
- `2` - nieoczekiwany koniec archiwum
- `3` - ogólny błąd formatu
- `4` - niewystarczająca pamięć
- `9` - określony plik nie został znaleziony
- `11` - nie znaleziono żadnych plików do spakowania