## **Wyjaśnienie plików tworzonych przez `create-vim-sample-files.sh`**

### **📖 PLIKI TEKSTOWE DO PODSTAWOWEJ PRAKTYKI**

#### **`alice.txt`** - Główny plik do nauki VIM
- **Cel**: Podstawowy materiał do wszystkich zadań VIM 000-079
- **Zawartość**: Fragment "Alice's Adventures in Wonderland" (domena publiczna)
- **Znaczenie**: 
  - ~10 akapitów z różnorodnymi słowami do wyszukiwania
  - Zawiera popularne słowa: "Alice", "rabbit", "book", "hole", "the"
  - Struktura zdań idealna do ćwiczenia text objects
  - Znany tekst - łatwo sprawdzić poprawność edycji
- **Używany w zadaniach**: 000-079 (wszystkie podstawowe operacje)

#### **`alice_modified.txt`** - Wersja zmodyfikowana
- **Cel**: Praktyka vimdiff i merge conflicts
- **Różnice od oryginału**:
  - "Alice" → "Alice Smith" (pierwszy wiersz)
  - "bank" → "riverbank" 
  - "Rabbit" → "Bunny"
  - "Oh dear!" → "Oh my!"
- **Używany w zadaniach**: 073-074 (diff mode, merge changes)

#### **`quotes_example.txt`** - Text objects i nawiasy
- **Cel**: Praktyka text objects (di", da(, ci[)
- **Zawartość**: 
  - Różne typy cudzysłowów: "double", 'single'
  - Nawiasy: (), [], {}
  - Tagi HTML: `<div>content</div>`
  - Zmienne: $HOME, $PATH
- **Używany w zadaniach**: 027-029 (text objects)

#### **`large_document.txt`** - Nawigacja i folding
- **Cel**: Praktyka folding i nawigacji w długich dokumentach
- **Struktura**: 5 rozdziałów z nagłówkami
- **Używany w zadaniach**: 052 (folding), nawigacja gg/G

### **💻 PLIKI KODU DO SYNTAX HIGHLIGHTING**

#### **`sample_code.py`** - Python z pełną strukturą
- **Cel**: Syntax highlighting, folding, quickfix
- **Zawartość**:
  - Funkcje (recursive i iterative)
  - Klasa z metodami
  - Docstrings i komentarze
  - Main function
- **Używany w zadaniach**: 
  - 035 (indentation ==)
  - 037 (bracket matching %)
  - 052 (code folding)
  - 058 (syntax highlighting)
  - 076 (quickfix :make)

#### **`sample.html`** - Web development
- **Cel**: Praktyka z tagami HTML, CSS, JavaScript
- **Struktura**:
  - Kompletny HTML document
  - CSS styling
  - JavaScript event handlers
- **Używany w zadaniach**: 
  - 029 (text objects dla tagów HTML)
  - 058 (syntax highlighting)
  - Multiple file editing

#### **`config_sample.conf`** - Plik konfiguracyjny
- **Cel**: Edycja typowych plików konfiguracyjnych
- **Format**: INI-style z sekcjami [server], [database]
- **Używany w zadaniach**: General editing practice

### **🛠️ PLIKI UŻYTKOWE DO SPECYFICZNYCH FUNKCJI**

#### **`todo_list.txt`** - Lista do sortowania
- **Cel**: Praktyka sortowania (:sort)
- **Zawartość**: 20 słów (nazwy zwierząt) z duplikatami
- **Używany w zadaniach**: 070 (:sort, :sort u)

#### **`numbers.txt`** - Liczby do modyfikacji
- **Cel**: Praktyka increment/decrement
- **Format**: "Version 1.0.0", "Port 8080", "Build 100"
- **Używany w zadaniach**: 071 (Ctrl+a, Ctrl+x)

#### **`data_table.txt`** - Tabela danych
- **Cel**: Visual block mode i column editing
- **Format**: Tabela z kolumnami Name, Age, City, Salary
- **Używany w zadaniach**: 026 (Ctrl+v visual block)

### **🔧 PLIKI WSPARCIA DLA ZAAWANSOWANYCH FUNKCJI**

#### **`Makefile`** - Kompilacja i quickfix
- **Cel**: Praktyka quickfix list (:make, :copen)
- **Targety**: lint, pep8, test, clean, backup
- **Używany w zadaniach**: 076 (quickfix workflow)

### **⚙️ SZABLONY KONFIGURACJI VIM**

#### **`vimrc_basic`** - Podstawowa konfiguracja
- **Cel**: Gotowy szablon dla początkujących
- **Zawiera**:
  - Basic settings (number, tabstop, syntax)
  - Search settings (ignorecase, hlsearch)
  - Key mappings (F2 save, jk escape)
  - Autocommands (remove trailing spaces)
- **Używany w zadaniach**: 060-062 (.vimrc configuration)

#### **`vimrc_advanced`** - Zaawansowana konfiguracja
- **Cel**: Template dla doświadczonych użytkowników
- **Dodatkowo zawiera**:
  - Plugin management (pathogen)
  - Persistent undo, backups
  - Advanced mappings (leader key)
  - Custom functions
  - Enhanced status line
- **Używany w zadaniach**: 063-064 (plugins, functions)

### **📁 KATALOGI ROBOCZE**

#### **`backup_files/`** - Operacje na plikach
- **Cel**: Praktyka :r, :w, file operations
- **Używany w zadaniach**: 055-056 (file operations)

#### **`test_splits/`** - Window management
- **Cel**: Praktyka split windows
- **Używany w zadaniach**: 040-042 (splits, windows)

## **🎯 MAPA UŻYCIA PLIKÓW W ZADANIACH**

| Zadania | Główne pliki | Funkcje VIM |
|---------|--------------|-------------|
| 000-019 | alice.txt | Podstawy, nawigacja, editing |
| 020-039 | alice.txt, quotes_example.txt | Search/replace, visual mode, text objects |
| 040-059 | wszystkie pliki | Windows, buffers, registers, macros |
| 060-079 | vimrc templates, Makefile | Konfiguracja, quickfix, zaawansowane |

## **💡 LOGIKA DOBORU PLIKÓW**

1. **Progresywność**: Od prostego tekstu do złożonych struktur
2. **Różnorodność**: Tekst, kod, konfiguracja, dane
3. **Praktyczność**: Rzeczywiste scenariusze użycia
4. **Kompletność**: Pokrycie wszystkich funkcji VIM
5. **Bezpieczeństwo**: Pliki bez wrażliwych danych

Każdy plik ma **konkretny cel edukacyjny** i wspiera **określone zadania VIM** w systematyczny sposób!
