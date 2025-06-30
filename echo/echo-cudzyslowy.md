W bash istnieje kilka sposobów używania cudzysłowów z komendą `echo` i wypisywaniem zmiennych. Oto szczegółowe wyjaśnienie:

## Pojedyncze cudzysłowy (') - literal string

```bash
zmienna="Hello World"
echo 'Wartość zmiennej: $zmienna'
# Wynik: Wartość zmiennej: $zmienna
```

Pojedyncze cudzysłowy traktują wszystko dosłownie - żadne zmienne nie są rozwijane, żadne znaki specjalne nie są interpretowane.

## Podwójne cudzysłowy (") - interpretacja zmiennych

```bash
zmienna="Hello World"
echo "Wartość zmiennej: $zmienna"
# Wynik: Wartość zmiennej: Hello World

echo "Aktualna ścieżka: $PWD"
# Wynik: Aktualna ścieżka: /home/username
```

Podwójne cudzysłowy pozwalają na:
- Rozwijanie zmiennych (`$zmienna`, `${zmienna}`)
- Wykonywanie podstawienia komend (`` `komenda` `` lub `$(komenda)`)
- Interpretację niektórych znaków specjalnych

## Bez cudzysłowów - word splitting

```bash
zmienna="Hello World Test"
echo $zmienna
# Wynik: Hello World Test

# Ale uwaga na spacje:
zmienna="  Hello    World  "
echo $zmienna        # Usuwa dodatkowe spacje
echo "$zmienna"      # Zachowuje oryginalne formatowanie
```

## Przykłady praktyczne:

```bash
# Zmienne do testów
nazwa="Jan Kowalski"
wiek=25
ścieżka="/home/user/documents"

# Różne sposoby wypisania:
echo 'Imię: $nazwa'                    # Imię: $nazwa
echo "Imię: $nazwa"                    # Imię: Jan Kowalski
echo Imię: $nazwa                      # Imię: Jan Kowalski

# Z wieloma zmiennymi:
echo "Użytkownik $nazwa ma $wiek lat"  # Użytkownik Jan Kowalski ma 25 lat

# Zabezpieczenie przed word splitting:
echo "Ścieżka: $ścieżka"              # Bezpieczne
echo Ścieżka: $ścieżka                # Może się rozdzielić jeśli są spacje
```

## Znaki specjalne w podwójnych cudzysłowach:

```bash
echo "Dzisiaj jest: $(date)"           # Wykonuje komendę date
echo "Pliki w katalogu: $(ls -1 | wc -l)"

# Escape characters:
echo "Cena: \$100"                     # Cena: $100 (escaped $)
echo "Ścieżka: \"$HOME\""             # Ścieżka: "/home/username"
```

## Concatenation (łączenie):

```bash
prefix="log"
suffix=".txt"
echo "$prefix-$(date +%Y%m%d)$suffix"  # log-20241230.txt
```

## Najlepsze praktyki:

1. **Używaj podwójnych cudzysłowów** gdy chcesz rozwijać zmienne
2. **Używaj pojedynczych cudzysłowów** dla literalnych stringów
3. **Zawsze używaj cudzysłowów** wokół zmiennych z potencjalnymi spacjami: `"$zmienna"`
4. **Używaj `${zmienna}`** gdy nazwa zmiennej graniczy z innymi znakami: `"${prefix}_suffix"`

```bash
# Dobra praktyka:
file_name="my document.txt"
echo "Przetwarzam plik: '$file_name'"

# Zła praktyka (może się rozdzielić):
echo Przetwarzam plik: $file_name
```
