# Lista 155 najważniejszych komend bash/Linux

## Podsumowanie
**Łączna liczba komend: 155**

---

## 1. Podstawowe operacje na plikach i katalogach (11 komend)
- `ls` - listowanie plików i katalogów
- `cd` - zmiana katalogu
- `pwd` - wyświetlenie bieżącego katalogu
- `mkdir` - tworzenie katalogów
- `rmdir` - usuwanie pustych katalogów
- `rm` - usuwanie plików i katalogów
- `cp` - kopiowanie plików/katalogów
- `mv` - przenoszenie/zmiana nazwy plików
- `find` - wyszukiwanie plików i katalogów
- `locate` - szybkie wyszukiwanie plików
- `which` - lokalizacja programów

## 2. Przeglądanie i edycja plików (11 komend)
- `cat` - wyświetlenie zawartości pliku
- `less` - przeglądanie długich plików
- `more` - przeglądanie długich plików (starsze)
- `head` - wyświetlenie pierwszych linii pliku
- `tail` - wyświetlenie ostatnich linii pliku
- `grep` - wyszukiwanie tekstu w plikach
- `sed` - edycja tekstu ze strumienia
- `awk` - przetwarzanie tekstu i danych
- `sort` - sortowanie linii
- `uniq` - usuwanie duplikatów
- `wc` - liczenie linii, słów, znaków

## 3. Uprawnienia i właściciele (4 komendy)
- `chmod` - zmiana uprawnień plików
- `chown` - zmiana właściciela plików
- `chgrp` - zmiana grupy plików
- `umask` - ustawienie domyślnych uprawnień

## 4. Procesy i system (9 komend)
- `ps` - wyświetlenie uruchomionych procesów
- `top` - monitorowanie procesów w czasie rzeczywistym
- `htop` - ulepszona wersja top
- `kill` - kończenie procesów
- `killall` - kończenie procesów po nazwie
- `jobs` - wyświetlenie zadań w tle
- `bg` - praca z zadaniami w tle
- `fg` - praca z zadaniami w pierwszym planie
- `nohup` - uruchamianie procesów niezależnie od terminala

## 5. Informacje o systemie (8 komend)
- `df` - wykorzystanie przestrzeni dyskowej
- `du` - rozmiar katalogów i plików
- `free` - informacje o pamięci
- `uname` - informacje o systemie
- `whoami` - bieżący użytkownik
- `id` - informacje o użytkowniku i grupach
- `uptime` - czas działania systemu
- `date` - data i czas systemowy

## 6. Sieć podstawowe (5 komend)
- `wget` - pobieranie plików z internetu
- `curl` - pobieranie plików z internetu (zaawansowane)
- `ssh` - zdalne połączenie
- `scp` - kopiowanie plików przez SSH
- `rsync` - synchronizacja plików

## 7. Archiwizacja i kompresja (5 komend)
- `tar` - archiwizacja plików
- `gzip` - kompresja plików
- `gunzip` - dekompresja plików gzip
- `zip` - tworzenie archiwów ZIP
- `unzip` - rozpakowywanie archiwów ZIP

## 8. Zarządzanie historią i sesją (4 komendy)
- `history` - historia komend
- `alias` - tworzenie aliasów komend
- `export` - ustawianie zmiennych środowiskowych
- `source` - wykonanie skryptu w bieżącej sesji

## 9. Przekierowania i rurki (2 elementy)
- `tee` - zapis do pliku i wyświetlenie na ekranie
- `|` - przekazanie wyjścia jako wejście (pipe)

## 10. Kontrola zadań (4 komendy)
- `crontab` - harmonogram zadań
- `at` - jednorazowe zadania
- `screen` - sesje terminala
- `tmux` - zaawansowane sesje terminala

## 11. Sieć zaawansowane (16 komend)
- `ping` - testowanie połączenia sieciowego
- `netstat` - wyświetlanie połączeń sieciowych i portów
- `ss` - nowoczesna alternatywa dla netstat
- `nmap` - skanowanie portów i sieci
- `telnet` - testowanie połączenia z konkretnym portem
- `nc` (netcat) - uniwersalne narzędzie sieciowe
- `lsof` - wyświetlanie otwartych plików i portów
- `iptables` - konfiguracja firewalla
- `route` - wyświetlanie i modyfikacja tabeli routingu
- `ip` - nowoczesne narzędzie do konfiguracji sieci
- `ifconfig` - konfiguracja interfejsów sieciowych
- `dig` - zapytania DNS
- `nslookup` - zapytania DNS (starsze)
- `host` - proste zapytania DNS
- `traceroute` - śledzenie trasy pakietów
- `mtr` - kombinacja ping i traceroute

## 12. Struktura katalogów (1 komenda)
- `tree` - wyświetlanie struktury katalogów w formie drzewa

## 13. Zaawansowane operacje na tekście (6 komend)
- `cut` - wycinanie kolumn z tekstu
- `tr` - zamiana/usuwanie znaków
- `paste` - łączenie linii z plików
- `join` - łączenie plików po wspólnych polach
- `diff` - porównywanie plików
- `patch` - aplikowanie poprawek

## 14. Monitorowanie i diagnostyka (9 komend)
- `iostat` - statystyki I/O
- `vmstat` - statystyki pamięci wirtualnej
- `sar` - zbieranie statystyk systemowych
- `strace` - śledzenie wywołań systemowych
- `ltrace` - śledzenie wywołań bibliotek
- `dmesg` - komunikaty kernela
- `lscpu` - informacje o procesorze
- `lsblk` - informacje o urządzeniach blokowych
- `fdisk` - zarządzanie partycjami

## 15. Zarządzanie użytkownikami (6 komend)
- `su` - zmiana użytkownika
- `sudo` - wykonanie komendy jako inny użytkownik
- `passwd` - zmiana hasła
- `useradd` - dodawanie użytkowników
- `usermod` - modyfikacja użytkowników
- `groups` - wyświetlenie grup użytkownika

## 16. Zaawansowane narzędzia (5 komend)
- `xargs` - przekazywanie argumentów do komend
- `parallel` - równoległe wykonywanie komend
- `watch` - cykliczne wykonywanie komendy
- `timeout` - wykonanie komendy z limitem czasu
- `yes` - generowanie nieskończonego strumienia tekstu

## 17. Systemowe i diagnostyczne (13 komend)
- `systemctl` - zarządzanie usługami systemd
- `service` - zarządzanie usługami (starsze systemy)
- `mount` - montowanie systemów plików
- `umount` - odmontowywanie systemów plików
- `lsmod` - wyświetlanie załadowanych modułów kernela
- `modprobe` - ładowanie/wyładowywanie modułów kernela
- `dstat` - wszechstronne statystyki systemowe
- `iotop` - monitorowanie I/O procesów
- `nethogs` - monitorowanie użycia sieci przez procesy
- `lshw` - informacje o sprzęcie
- `hwinfo` - szczegółowe informacje o sprzęcie
- `sensors` - temperatury i napięcia sprzętu
- `parted` - zaawansowane zarządzanie partycjami

## 18. Edytory tekstu (4 komendy)
- `nano` - prosty edytor tekstu
- `vim` - zaawansowany edytor tekstu
- `vi` - podstawowy edytor tekstu
- `emacs` - zaawansowany edytor tekstu

## 19. Zaawansowane narzędzia tekstowe (8 komend)
- `column` - formatowanie tekstu w kolumny
- `fold` - zawijanie długich linii
- `expand` - konwersja tabulatorów na spacje
- `unexpand` - konwersja spacji na tabulatory
- `nl` - numerowanie linii
- `pr` - formatowanie tekstu do druku
- `fmt` - formatowanie akapitów
- `split` - dzielenie plików na części

## 20. Pliki binarne (7 komend)
- `hexdump` - wyświetlanie plików w hex
- `xxd` - hex dump z możliwością edycji
- `od` - dump oktalny/hex plików
- `strings` - wyciąganie tekstów z plików binarnych
- `file` - określanie typu pliku
- `stat` - szczegółowe informacje o pliku
- `dcmdump` - dump plików DICOM

## 21. Bezpieczeństwo i szyfrowanie (5 komend)
- `gpg` - szyfrowanie i podpisy cyfrowe
- `openssl` - narzędzia kryptograficzne
- `sha256sum` - obliczanie sum kontrolnych SHA256
- `md5sum` - obliczanie sum kontrolnych MD5
- `base64` - kodowanie/dekodowanie base64

## 22. Logi (4 komendy)
- `journalctl` - przegląd logów systemd
- `logger` - zapisywanie do syslog
- `logrotate` - rotacja plików logów
- `zcat` - czytanie skompresowanych plików

## 23. Środowisko i zmienne (4 komendy)
- `env` - wyświetlanie zmiennych środowiskowych
- `printenv` - wyświetlanie zmiennych środowiskowych
- `set` - ustawianie opcji shella
- `unset` - usuwanie zmiennych

## 24. Pliki specjalne (4 komendy)
- `mkfifo` - tworzenie nazwanych pipe'ów
- `ln` - tworzenie linków
- `readlink` - odczytywanie linków symbolicznych
- `blkid` - informacje o urządzeniach blokowych

## 25. Komunikacja (3 komendy)
- `write` - wysyłanie wiadomości do użytkowników
- `wall` - wysyłanie wiadomości do wszystkich
- `mesg` - kontrola odbioru wiadomości

## 26. Procesy i sygnały (4 komendy)
- `pgrep` - wyszukiwanie procesów po nazwie
- `pkill` - kończenie procesów po nazwie
- `trap` - obsługa sygnałów w skryptach
- `exec` - zastąpienie bieżącego procesu

## 27. Zarządzanie zasilaniem (5 komend)
- `shutdown` - wyłączanie/restart systemu
- `reboot` - restart systemu
- `halt` - zatrzymanie systemu
- `poweroff` - wyłączenie zasilania
- `init` - zmiana poziomu uruchomienia systemu

---

## Wszystkie komendy w porządku alfabetycznym

`alias`, `at`, `awk`, `base64`, `bg`, `blkid`, `cat`, `cd`, `chmod`, `chgrp`, `chown`, `column`, `cp`, `crontab`, `curl`, `cut`, `date`, `dcmdump`, `df`, `diff`, `dig`, `dmesg`, `dstat`, `du`, `emacs`, `env`, `exec`, `expand`, `export`, `fdisk`, `fg`, `file`, `find`, `fmt`, `fold`, `free`, `gpg`, `grep`, `groups`, `gunzip`, `gzip`, `halt`, `head`, `hexdump`, `history`, `host`, `htop`, `hwinfo`, `id`, `ifconfig`, `init`, `iostat`, `iotop`, `ip`, `iptables`, `jobs`, `join`, `journalctl`, `kill`, `killall`, `less`, `ln`, `locate`, `logger`, `logrotate`, `ls`, `lsblk`, `lscpu`, `lshw`, `lsmod`, `lsof`, `ltrace`, `md5sum`, `mesg`, `mkdir`, `mkfifo`, `modprobe`, `more`, `mount`, `mtr`, `mv`, `nano`, `nc`, `nethogs`, `netstat`, `nl`, `nmap`, `nohup`, `nslookup`, `od`, `openssl`, `parallel`, `parted`, `passwd`, `paste`, `patch`, `pgrep`, `ping`, `pkill`, `poweroff`, `pr`, `printenv`, `ps`, `pwd`, `readlink`, `reboot`, `rm`, `rmdir`, `route`, `rsync`, `sar`, `scp`, `screen`, `sed`, `sensors`, `service`, `set`, `sha256sum`, `shutdown`, `sort`, `source`, `split`, `ss`, `ssh`, `stat`, `strace`, `strings`, `su`, `sudo`, `systemctl`, `tail`, `tar`, `tee`, `telnet`, `timeout`, `tmux`, `top`, `tr`, `traceroute`, `trap`, `tree`, `umask`, `umount`, `uname`, `unexpand`, `uniq`, `unset`, `unzip`, `uptime`, `useradd`, `usermod`, `vi`, `vim`, `vmstat`, `wall`, `watch`, `wc`, `wget`, `which`, `whoami`, `write`, `xargs`, `xxd`, `yes`, `zcat`, `zip`

---

## Przydatne przykłady użycia

### Sprawdzanie portów
```bash
# Lokalnie
netstat -tulpn              # wszystkie porty
ss -tulpn                   # alternatywa dla netstat
lsof -i :80                 # kto używa portu 80

# Zdalnie
nmap -p 80,443 example.com  # skanowanie konkretnych portów
nc -zv example.com 80       # test połączenia z portem
telnet example.com 80       # interaktywne połączenie
```

### Zaawansowane przetwarzanie tekstu
```bash
# cut - wycinanie kolumn
ps aux | cut -d' ' -f1,11

# xargs - przetwarzanie listy
find . -name "*.txt" | xargs grep "pattern"

# watch - monitorowanie w czasie rzeczywistym
watch -n 2 'ps aux | grep python'
```

### Tree - struktura katalogów
```bash
tree                    # struktura bieżącego katalogu
tree -a                # z ukrytymi plikami
tree -L 2              # maksymalnie 2 poziomy
tree -d                # tylko katalogi
```

### Zarządzanie systemem
```bash
# systemctl - zarządzanie usługami
systemctl status nginx
systemctl start/stop/restart nginx
systemctl enable/disable nginx

# mount - montowanie systemów plików
mount /dev/sdb1 /mnt/usb
umount /mnt/usb

# dstat - monitorowanie systemu
dstat -cdngy 1         # cpu, disk, network, paging, system co sekundę
```

### Narzędzia diagnostyczne
```bash
# iotop - monitorowanie I/O
iotop -o               # tylko procesy wykonujące I/O

# nethogs - monitorowanie sieci
nethogs eth0           # użycie sieci przez procesy

# sensors - temperatura sprzętu
sensors                # temperatury CPU, GPU itp.
```

### Bezpieczeństwo i sumy kontrolne
```bash
# Obliczanie sum kontrolnych
sha256sum file.txt
md5sum file.txt

# Szyfrowanie GPG
gpg --encrypt --recipient user@example.com file.txt
gpg --decrypt file.txt.gpg

# Base64 kodowanie
echo "tekst" | base64
echo "dGVrc3QK" | base64 -d
```

### Analiza plików binarnych
```bash
# file - typ pliku
file unknown_file

# strings - tekst z plików binarnych
strings binary_file | grep "password"

# hexdump - zawartość hex
hexdump -C file.bin | head

# dcmdump - pliki DICOM (medyczne)
dcmdump medical_image.dcm
```

### Procesy i sygnały
```bash
# pgrep/pkill - zarządzanie procesami po nazwie
pgrep firefox          # znajdź PID procesów firefox
pkill firefox          # zakończ wszystkie procesy firefox

# trap - obsługa sygnałów w skryptach
trap 'echo "Przerwano!"' INT
```

### Zarządzanie zasilaniem
```bash
# shutdown - różne opcje
shutdown -h now        # wyłącz teraz
shutdown -h +10        # wyłącz za 10 minut
shutdown -r now        # restart teraz
shutdown -r +5 "Restart za 5 minut"  # z komunikatem

# reboot - restart
reboot                 # natychmiastowy restart
reboot -f              # wymuszony restart

# halt - zatrzymanie
halt                   # zatrzymaj system
halt -p                # zatrzymaj i wyłącz zasilanie

# poweroff - wyłączenie zasilania
poweroff               # wyłącz zasilanie

# init - poziomy uruchomienia
init 0                 # wyłączenie
init 6                 # restart
init 3                 # tryb tekstowy (bez GUI)
init 5                 # tryb graficzny
```

---

*Lista zawiera 155 najważniejszych komend bash/Linux pogrupowanych tematycznie dla łatwiejszego uczenia się i zapamiętywania.*