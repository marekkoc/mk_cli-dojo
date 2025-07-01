# Lista 211 najważniejszych komend bash/Linux

## Podsumowanie
**Łączna liczba komend: 211**
**Ostatnia aktualizacja: 2025-06-28**
**Wersja: 2.0**

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

## 2. Przeglądanie i edycja plików (12 komend)
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
- `multitail` - monitorowanie wielu plików logów jednocześnie

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

## 28. Zarządzanie pakietami (10 komend)
- `apt` - nowoczesny interfejs zarządzania pakietami (Debian/Ubuntu)
- `apt-get` - tradycyjny interfejs APT (Debian/Ubuntu)
- `apt-cache` - wyszukiwanie i informacje o pakietach APT
- `dpkg` - niskopoziomowe zarządzanie pakietami .deb
- `dpkg-query` - zapytania o zainstalowane pakiety .deb
- `yum` - zarządzanie pakietami (RHEL/CentOS)
- `dnf` - zarządzanie pakietami (Fedora)
- `rpm` - niskopoziomowe zarządzanie pakietami .rpm
- `snap` - zarządzanie pakietami snap
- `flatpak` - zarządzanie pakietami flatpak

## 29. Czas i kalendarz (8 komend)
- `cal` - wyświetlanie kalendarza
- `calendar` - przypomnienia kalendarzowe
- `time` - pomiar czasu wykonania komendy
- `timedatectl` - zarządzanie czasem systemowym (systemd)
- `hwclock` - zarządzanie zegarem sprzętowym
- `ntpdate` - synchronizacja czasu przez NTP
- `chrony` - demon synchronizacji czasu (nowoczesny)
- `zdump` - informacje o strefach czasowych

## 30. Konteneryzacja (8 komend)
- `docker` - zarządzanie kontenerami Docker
- `docker-compose` - orkiestracja kontenerów Docker
- `podman` - alternatywa dla Docker (bez demona)
- `buildah` - budowanie obrazów kontenerów
- `skopeo` - operacje na obrazach kontenerów
- `kubectl` - zarządzanie klastrami Kubernetes
- `helm` - menedżer pakietów Kubernetes
- `crictl` - CLI dla Container Runtime Interface

## 31. Git i kontrola wersji (10 komend)
- `git` - system kontroli wersji
- `git-log` - historia commitów
- `git-diff` - porównywanie zmian w plikach
- `git-status` - status repozytorium
- `git-commit` - zatwierdzanie zmian
- `git-push` - wysyłanie zmian do zdalnego repozytorium
- `git-pull` - pobieranie zmian ze zdalnego repozytorium
- `git-clone` - klonowanie repozytorium
- `git-branch` - zarządzanie gałęziami
- `git-merge` - scalanie gałęzi

## 32. Pomoc i dokumentacja (6 komend)
- `man` - podręcznik systemowy (manual pages)
- `apropos` - wyszukiwanie komend po opisie
- `whatis` - krótki opis komendy
- `info` - szczegółowa dokumentacja (info pages)
- `help` - pomoc dla wbudowanych komend bash
- `type` - informacje o typie komendy (alias, funkcja, program)

## 33. Praca ze schowkiem (2 komendy) 
- `xclip` - operacje na schowku X11 z linii komend
- `xsel` - alternatywa dla xclip do zarządzania schowkiem

## 34. Zaawansowane monitorowanie logów (2 komendy)
- `multitail` - monitorowanie wielu plików logów jednocześnie
- `goaccess` - analizator logów WWW w czasie rzeczywistym

## 35. Przetwarzanie danych i JSON (1 komenda)
- `jq` - procesor JSON z linii komend - filtrowanie, transformacja, formatowanie

## 36. Nowoczesne alternatywy narzędzi systemowych (8 komend)
- `ripgrep` (`rg`) - bardzo szybka alternatywa dla grep z obsługą regex
- `fd` - nowoczesna, szybka alternatywa dla find
- `bat` - cat z podświetlaniem składni i numerowaniem linii
- `exa` - nowoczesna alternatywa dla ls z kolorami i ikonami
- `zoxide` - inteligentne cd z historią i fuzzy matching
- `fzf` - interaktywny fuzzy finder do filtrowania i wyszukiwania
- `tmuxinator` - zarządzanie i automatyzacja sesji tmux
- `htop` - już na liście w sekcji 4, ale warto podkreślić jako nowoczesną alternatywę dla top

---

## Wszystkie komendy w porządku alfabetycznym

`alias`, `apt`, `apt-cache`, `apt-get`, `at`, `awk`, `base64`, `bat`, `bg`, `blkid`, `buildah`, `cal`, `calendar`, `cat`, `cd`, `chmod`, `chgrp`, `chown`, `chrony`, `column`, `cp`, `crictl`, `crontab`, `curl`, `cut`, `date`, `dcmdump`, `df`, `diff`, `dig`, `dmesg`, `dnf`, `docker`, `docker-compose`, `dpkg`, `dpkg-query`, `dstat`, `du`, `emacs`, `env`, `exa`, `exec`, `expand`, `export`, `fd`, `fdisk`, `fg`, `file`, `find`, `flatpak`, `fmt`, `fold`, `free`, `fzf`, `git`, `git-branch`, `git-clone`, `git-commit`, `git-diff`, `git-log`, `git-merge`, `git-pull`, `git-push`, `git-status`, `goaccess`, `gpg`, `grep`, `groups`, `gunzip`, `gzip`, `halt`, `head`, `helm`, `hexdump`, `history`, `host`, `htop`, `hwclock`, `hwinfo`, `id`, `ifconfig`, `init`, `iostat`, `iotop`, `ip`, `iptables`, `jobs`, `join`, `journalctl`, `jq`, `kill`, `killall`, `kubectl`, `less`, `ln`, `locate`, `logger`, `logrotate`, `ls`, `lsblk`, `lscpu`, `lshw`, `lsmod`, `lsof`, `ltrace`, `md5sum`, `mesg`, `mkdir`, `mkfifo`, `modprobe`, `more`, `mount`, `mtr`, `multitail`, `mv`, `nano`, `nc`, `nethogs`, `netstat`, `nl`, `nmap`, `nohup`, `nslookup`, `ntpdate`, `od`, `openssl`, `parallel`, `parted`, `passwd`, `paste`, `patch`, `pgrep`, `ping`, `pkill`, `podman`, `poweroff`, `pr`, `printenv`, `ps`, `pwd`, `readlink`, `reboot`, `rg`, `ripgrep`, `rm`, `rmdir`, `route`, `rpm`, `rsync`, `sar`, `scp`, `screen`, `sed`, `sensors`, `service`, `set`, `sha256sum`, `shutdown`, `skopeo`, `snap`, `sort`, `source`, `split`, `ss`, `ssh`, `stat`, `strace`, `strings`, `su`, `sudo`, `systemctl`, `tail`, `tar`, `tee`, `telnet`, `time`, `timedatectl`, `timeout`, `tmux`, `tmuxinator`, `top`, `tr`, `traceroute`, `trap`, `tree`, `umask`, `umount`, `uname`, `unexpand`, `uniq`, `unset`, `unzip`, `uptime`, `useradd`, `usermod`, `vi`, `vim`, `vmstat`, `wall`, `watch`, `wc`, `wget`, `which`, `whoami`, `write`, `xargs`, `xclip`, `xsel`, `xxd`, `yes`, `yum`, `zcat`, `zdump`, `zip`, `zoxide`

---

## Przykłady użycia

### Pomoc i dokumentacja
```bash
# Manual pages - podstawowa pomoc
man ls                       # pełna dokumentacja komendy ls
man 5 passwd                 # sekcja 5 - formaty plików
man -k "copy files"          # wyszukanie w opisach manual pages

# Apropos - wyszukiwanie komend po opisie
apropos file                 # wszystkie komendy związane z plikami
apropos compress             # komendy do kompresji
apropos -r "^copy"          # komendy zaczynające się od "copy"
apropos network | head -10   # pierwsze 10 komend sieciowych

# Whatis - krótkie opisy
whatis grep                  # krótki opis grep
whatis cp mv rm              # opisy kilku komend naraz

# Info pages - szczegółowa dokumentacja
info bash                    # szczegółowa dokumentacja bash
info tar                     # dokumentacja tar
info --help                  # pomoc dla info

# Help - pomoc dla wbudowanych komend
help cd                      # pomoc dla cd (wbudowana komenda)
help if                      # pomoc dla konstrukcji if
help for                     # pomoc dla pętli for
help                         # lista wszystkich wbudowanych komend

# Type - informacje o typie komendy
type ls                      # czy ls to alias, funkcja czy program
type cd                      # cd to wbudowana komenda
type ll                      # sprawdź czy ll to alias
type -a ls                   # wszystkie definicje ls

# Kombinacje przydatne w nauce
man -f ls                    # to samo co whatis ls
man -k file | grep copy      # wyszukaj komendy do kopiowania plików
apropos "list directory"     # znajdź komendy do listowania katalogów
```

### Praktyczne kombinacje z dokumentacją
```bash
# Szybka pomoc podczas pracy
quick_help() {
    local cmd=$1
    echo "=== Quick Help for: $cmd ==="
    whatis $cmd 2>/dev/null || echo "No whatis entry found"
    echo
    type $cmd 2>/dev/null || echo "Command not found"
    echo
    echo "Manual page available:" $(man -w $cmd 2>/dev/null && echo "YES" || echo "NO")
}

# Znajdź komendy do konkretnego zadania
find_commands() {
    local task=$1
    echo "Commands related to: $task"
    apropos "$task" | head -10
}

# Eksplorator systemu pomocy
explore_help() {
    echo "=== System Help Explorer ==="
    echo "1. Built-in commands:"
    help | head -5
    echo
    echo "2. Available manual sections:"
    man man | grep -A 10 "sections of the manual"
    echo
    echo "3. Info documents:"
    info --help | head -5
}
```

### Zarządzanie pakietami - Debian/Ubuntu
```bash
# Aktualizacja systemu
apt update && apt upgrade -y

# Wyszukiwanie pakietów
apt search python3
apt-cache search "web server"

# Instalacja/usuwanie pakietów
apt install nginx python3-pip
apt remove --purge apache2

# Informacje o pakietach
apt show nginx
dpkg -l | grep python
dpkg-query -W -f='${Installed-Size;10}\t${Package}\n' | sort -k1,1n

# Lista plików z pakietu
dpkg -L nginx
```

### Zarządzanie pakietami - Red Hat/Fedora
```bash
# Aktualizacja systemu
dnf update                    # Fedora
yum update                    # RHEL/CentOS

# Wyszukiwanie i instalacja
dnf search nginx
dnf install nginx python3-pip

# Informacje o pakietach
rpm -qa | grep python
rpm -qi nginx
rpm -ql nginx                 # lista plików z pakietu
```

### Zarządzanie czasem i kalendarzem
```bash
# Kalendarz
cal                          # bieżący miesiąc
cal 2025                     # cały rok
cal -3                       # 3 miesiące (poprzedni, bieżący, następny)
cal -j                       # z numerami dni w roku

# Pomiar czasu wykonania
time ls -la /usr/bin         # pomiar czasu komendy
time python script.py       # pomiar czasu skryptu

# Zarządzanie czasem systemowym
timedatectl                  # status czasu systemowego
timedatectl set-timezone Europe/Warsaw
timedatectl set-ntp true     # włącz synchronizację NTP
timedatectl set-time "2025-06-24 15:30:00"

# Zegar sprzętowy
hwclock --show               # pokaż czas sprzętowy
hwclock --systohc            # synchronizuj system -> hardware
hwclock --hctosys            # synchronizuj hardware -> system

# Synchronizacja NTP
ntpdate -s time.nist.gov     # jednorazowa synchronizacja
chrony sources               # źródła czasu chronyd
```

### Konteneryzacja - Docker
```bash
# Podstawowe operacje Docker
docker ps                    # uruchomione kontenery
docker ps -a                 # wszystkie kontenery
docker images                # lokalne obrazy

# Uruchamianie kontenerów
docker run -d -p 80:80 nginx
docker run -it ubuntu:22.04 bash

# Zarządzanie obrazami
docker build -t myapp:1.0 .
docker push myapp:1.0
docker pull redis:alpine

# Docker Compose
docker-compose up -d         # uruchom w tle
docker-compose logs -f app   # logi serwisu
docker-compose down          # zatrzymaj i usuń

# Podman (alternatywa dla Docker)
podman run -d -p 8080:80 nginx
podman pod create --name mypod
```

### Konteneryzacja - Kubernetes
```bash
# Zarządzanie klastrami
kubectl get nodes            # węzły klastra
kubectl get pods --all-namespaces
kubectl get services

# Deployments
kubectl create deployment nginx --image=nginx:1.21
kubectl scale deployment nginx --replicas=3
kubectl rollout status deployment/nginx

# Helm - menedżer pakietów K8s
helm repo add bitnami https://charts.bitnami.com/bitnami
helm install my-nginx bitnami/nginx
helm list
helm upgrade my-nginx bitnami/nginx
```

### Git i kontrola wersji
```bash
# Podstawowe operacje
git status                   # status repozytorium
git add .                    # dodaj wszystkie zmiany
git commit -m "Update files"
git push origin main

# Praca z gałęziami
git branch                   # lista gałęzi
git branch feature-login     # nowa gałąź
git checkout feature-login   # przełącz na gałąź
git merge feature-login      # scal gałąź

# Historia i różnice
git log --oneline           # kompaktowa historia
git log --graph --all       # graficzny log
git diff HEAD~1             # różnice z poprzednim commitem
git diff main..feature      # różnice między gałęziami

# Zdalne repozytoria
git remote -v               # lista remote'ów
git pull origin main        # pobierz zmiany
git clone https://github.com/user/repo.git
```

### Praca ze schowkiem (xclip)
```bash
# Kopiowanie do schowka
echo "Hello World" | xclip -selection clipboard
ls -la | xclip -sel c                    # krótsza forma

# Wklejanie ze schowka
xclip -selection clipboard -o
xclip -sel c -o                          # krótsza forma

# Kopiowanie zawartości pliku
xclip -sel c < file.txt
cat config.txt | xclip -sel c

# Kopiowanie outputu komend
pwd | xclip -sel c                       # skopiuj bieżący katalog
git log --oneline -5 | xclip -sel c      # skopiuj ostatnie 5 commitów
docker ps | xclip -sel c                 # skopiuj listę kontenerów

# Przydatne aliasy
alias clip='xclip -selection clipboard'
alias paste='xclip -selection clipboard -o'

# Funkcje pomocnicze
copy_file() {
    if [ -f "$1" ]; then
        cat "$1" | xclip -sel c
        echo "Skopiowano zawartość pliku $1 do schowka"
    else
        echo "Plik $1 nie istnieje"
    fi
}

# Kopiowanie wyników komend z formatowaniem
copy_system_info() {
    {
        echo "=== System Info ==="
        uname -a
        echo "=== Memory ==="
        free -h
        echo "=== Disk ==="
        df -h
    } | xclip -sel c
}
```

### Zaawansowane monitorowanie logów (multitail)
```bash
# Podstawowe użycie multitail
multitail /var/log/syslog /var/log/auth.log

# Monitorowanie logów z kolorami
multitail -c /var/log/apache2/access.log /var/log/apache2/error.log

# Filtrowanie logów w czasie rzeczywistym
multitail -s 2 /var/log/syslog           # odświeżanie co 2 sekundy
multitail -f /var/log/nginx/access.log   # follow mode

# Monitorowanie logów Docker
multitail -l 'docker logs -f container1' -l 'docker logs -f container2'

# Monitorowanie logów systemd
multitail -l 'journalctl -f -u nginx' -l 'journalctl -f -u mysql'

# Podział ekranu na więcej okien
multitail -s 3 /var/log/syslog /var/log/auth.log /var/log/kern.log

# Zastosowanie filtrów
multitail /var/log/syslog -E "ERROR|CRITICAL"  # tylko błędy
multitail /var/log/apache2/access.log -e "404|500"  # tylko błędy HTTP

# Konfiguracja kolorów i formatowania
cat > ~/.multitailrc << 'EOF'
colorscheme:apache
cs_re:red:ERROR
cs_re:yellow:WARNING
cs_re:green:INFO
EOF

# Monitoring logów aplikacji Python/Django
monitor_app_logs() {
    multitail \
        -l "tail -f /var/log/myapp/django.log" \
        -l "tail -f /var/log/myapp/celery.log" \
        -l "tail -f /var/log/nginx/myapp_access.log" \
        -l "tail -f /var/log/nginx/myapp_error.log"
}

# Analiza logów w czasie rzeczywistym z alertami
multitail -l 