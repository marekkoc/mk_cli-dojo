# Instrukcja pakowania i rozpakowywania z TAR

## Podstawowa składnia
```bash
tar [opcje] [nazwa_archiwum] [pliki/katalogi]
```

## Kluczowe opcje TAR

### Operacje
- `c` - **create** (tworzenie archiwum)
- `x` - **extract** (rozpakowywanie)
- `t` - **list** (listowanie zawartości)

### Kompresja
- `z` - kompresja **gzip** (.tar.gz)
- `J` - kompresja **xz** (.tar.xz)
- `j` - kompresja **bzip2** (.tar.bz2)

### Dodatkowe
- `v` - **verbose** (szczegółowe informacje)
- `f` - określenie **pliku** archiwum
- `p` - zachowanie **uprawnień** (permissions)

---

# PAKOWANIE

## 1. Podstawowe pakowanie z kompresją gzip
```bash
tar -czf archiwum.tar.gz katalog/
```
**Objaśnienie:** Tworzy archiwum z kompresją gzip. Szybkie i uniwersalne.

## 2. Pakowanie z zachowaniem wszystkich atrybutów
```bash
tar -czpf archiwum.tar.gz --preserve-permissions --same-owner katalog/
```
**Objaśnienie:** 
- `-p` zachowuje uprawnienia plików
- `--preserve-permissions` jawnie zachowuje uprawnienia
- `--same-owner` zachowuje właściciela i grupę

## 3. Pakowanie z verbose (szczegółowe informacje)
```bash
tar -czvf archiwum.tar.gz katalog/
```
**Objaśnienie:** Pokazuje każdy pakowany plik. Przydatne do monitorowania procesu.

## 4. Pakowanie z najlepszą kompresją (xz)
```bash
tar -cJvf archiwum.tar.xz katalog/
```
**Objaśnienie:** Kompresja xz daje najlepszy współczynnik kompresji, szczególnie dla PDF-ów i tekstów.

## 5. Pakowanie z wykluczeniem plików
```bash
tar -czf archiwum.tar.gz --exclude='*.tmp' --exclude='*/cache/*' --exclude='*/node_modules/*' katalog/
```
**Objaśnienie:** Pomija pliki tymczasowe, cache i node_modules. Idealne dla projektów web.

## 6. Pakowanie z postępem dla dużych archiwów
```bash
tar -czf archiwum.tar.gz katalog/ --checkpoint=1000 --checkpoint-action=dot
```
**Objaśnienie:** Pokazuje kropkę co 1000 plików. Przydatne dla dużych zbiorów danych.

## 7. Pakowanie z zachowaniem extended attributes
```bash
tar -czf archiwum.tar.gz --xattrs --preserve-permissions --same-owner katalog/
```
**Objaśnienie:** Zachowuje wszystkie możliwe atrybuty Unix/Linux, w tym rozszerzone atrybuty.

---

# ROZPAKOWYWANIE

## 1. Podstawowe rozpakowywanie
```bash
tar -xzf archiwum.tar.gz
```
**Objaśnienie:** Rozpakuje archiwum w bieżącym katalogu.

## 2. Rozpakowywanie z zachowaniem atrybutów
```bash
tar -xzpf archiwum.tar.gz --preserve-permissions --same-owner
```
**Objaśnienie:** Przywraca oryginalne uprawnienia i właściciela plików.

## 3. Rozpakowywanie do określonego katalogu
```bash
tar -xzf archiwum.tar.gz -C /ścieżka/do/katalogu/
```
**Objaśnienie:** `-C` zmienia katalog docelowy przed rozpakowaniem.

## 4. Rozpakowywanie z verbose
```bash
tar -xzvf archiwum.tar.gz
```
**Objaśnienie:** Pokazuje każdy rozpakowywany plik.

## 5. Rozpakowywanie konkretnych plików
```bash
tar -xzf archiwum.tar.gz katalog/plik.txt katalog/subfolder/
```
**Objaśnienie:** Rozpakuje tylko określone pliki/katalogi z archiwum.

## 6. Rozpakowywanie z zachowaniem timestampów
```bash
tar -xzf archiwum.tar.gz --preserve-permissions --same-owner --preserve-order
```
**Objaśnienie:** Zachowuje oryginalne daty modyfikacji plików.

---

# OPERACJE INFORMACYJNE

## 1. Listowanie zawartości archiwum
```bash
tar -tzf archiwum.tar.gz
```
**Objaśnienie:** Pokazuje wszystkie pliki w archiwum bez rozpakowywania.

## 2. Szczegółowe listowanie z atrybutami
```bash
tar -tzvf archivum.tar.gz
```
**Objaśnienie:** Pokazuje uprawnienia, właściciela, rozmiar i daty plików.

## 3. Sprawdzenie integralności archiwum
```bash
tar -tf archiwum.tar.gz > /dev/null && echo "Archiwum OK" || echo "Archiwum uszkodzone"
```

---

# PRZYKŁADY PRAKTYCZNE

## Kompletne pakowanie projektu web z atrybutami
```bash
tar -cJvf projekt_www_$(date +%Y%m%d).tar.xz \
    --exclude='*/node_modules/*' \
    --exclude='*/cache/*' \
    --exclude='*.log' \
    --preserve-permissions \
    --same-owner \
    --xattrs \
    projekt_www/
```

## Bezpieczne rozpakowywanie z przywróceniem atrybutów
```bash
tar -xJvf projekt_www_20250630.tar.xz \
    --preserve-permissions \
    --same-owner \
    --xattrs \
    -C /var/www/
```

## Backup z weryfikacją
```bash
# Pakowanie
tar -czf backup_$(date +%Y%m%d_%H%M).tar.gz \
    --preserve-permissions \
    --same-owner \
    katalog/

# Weryfikacja
tar -tzf backup_$(date +%Y%m%d_%H%M).tar.gz | wc -l
echo "Spakowano $(tar -tzf backup_$(date +%Y%m%d_%H%M).tar.gz | wc -l) plików"
```

---

# NAJWAŻNIEJSZE WSKAZÓWKI

## ✅ Dobre praktyki
- Zawsze używaj `-v` dla ważnych operacji
- Dla projektów web używaj `--exclude` dla niepotrzebnych plików
- Stosuj `-J` (xz) dla długoterminowego przechowywania
- Używaj `-z` (gzip) dla szybkich operacji

## ⚠️ Uwagi bezpieczeństwa
- Sprawdź zawartość archiwum przed rozpakowaniem: `tar -tf archiwum.tar.gz`
- Uważaj na ścieżki bezwzględne w archiwach z nieznanych źródeł
- Używaj `-C` żeby kontrolować miejsce rozpakowania

## 🔧 Dla zachowania atrybutów zawsze używaj:
```bash
--preserve-permissions --same-owner --xattrs
```