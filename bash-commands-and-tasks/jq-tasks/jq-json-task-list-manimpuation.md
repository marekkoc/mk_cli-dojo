# Zadania jq dla pliku z zadaniami Linux - ROZSZERZONE

## 📋 Zadania podstawowe

### 1. Wyświetl sformatowany JSON
**Zadanie:** Wyświetl plik w czytelnej formie z wcięciami
```bash
jq '.' all_linux_tasks-001-350.json
```

### 2. Sprawdź strukturę pliku
**Zadanie:** Wyświetl tylko klucze głównego obiektu
```bash
jq 'keys' all_linux_tasks-001-350.json
```
**Oczekiwany wynik:** `["tasks"]`

### 3. Wszystkie klucze w pierwszym zadaniu
**Zadanie:** Sprawdź jakie pola ma każde zadanie
```bash
jq '.tasks[0] | keys' all_linux_tasks-001-350.json
```

### 4. Wszystkie klucze we wszystkich zadaniach
**Zadanie:** Znajdź wszystkie unikalne klucze używane w zadaniach
```bash
jq '[.tasks[] | keys[]] | unique' all_linux_tasks-001-350.json
```

### 5. Sprawdź typy danych w zadaniu
**Zadanie:** Zobacz jakie typy danych są w pierwszym zadaniu
```bash
jq '.tasks[0] | to_entries | map({key: .key, type: (.value | type)})' all_linux_tasks-001-350.json
```

### 6. Policz liczbę zadań
**Zadanie:** Sprawdź ile jest zadań w pliku
```bash
jq '.tasks | length' all_linux_tasks-001-350.json
```

### 7. Wyświetl pierwsze zadanie
**Zadanie:** Pokaż tylko pierwsze zadanie z listy
```bash
jq '.tasks[0]' all_linux_tasks-001-350.json
```

### 8. Wyświetl pierwsze 3 zadania
**Zadanie:** Pokaż pierwsze 3 zadania z listy
```bash
jq '.tasks[0:3]' all_linux_tasks-001-350.json
```

### 9. Wyświetl ostatnie zadanie
**Zadanie:** Pokaż ostatnie zadanie z listy
```bash
jq '.tasks[-1]' all_linux_tasks-001-350.json
```

### 10. Zapisz dane do pliku
**Zadanie:** Zapisz sformatowany JSON do nowego pliku
```bash
jq '.' all_linux_tasks-001-350.json > formatted_tasks.json
```

### 11. Zapisz tylko pierwsze 10 zadań do pliku
**Zadanie:** Stwórz plik z pierwszymi 10 zadaniami
```bash
jq '{tasks: .tasks[0:10]}' all_linux_tasks-001-350.json > first_10_tasks.json
```

### 12. Sprawdź czy pole istnieje
**Zadanie:** Sprawdź które zadania mają pole "warnings"
```bash
jq '.tasks[] | select(has("warnings")) | {id: .id, task: .task}' all_linux_tasks-001-350.json
```

## 🔍 Zadania filtrowania

### 13. Znajdź zadanie po ID
**Zadanie:** Wyświetl zadanie o ID równym 100
```bash
jq '.tasks[] | select(.id == 100)' all_linux_tasks-001-350.json
```

### 14. Filtruj po poziomie trudności
**Zadanie:** Pokaż wszystkie zadania o poziomie trudności 5
```bash
jq '.tasks[] | select(.difficulty == 5)' all_linux_tasks-001-350.json
```

### 15. Zadania spełniające 2 warunki: rating i difficulty
**Zadanie:** Znajdź zadania z oceną 5 I trudnością 5 (najwyższa jakość)
```bash
jq '.tasks[] | select(.rating == 5 and .difficulty == 5)' all_linux_tasks-001-350.json
```

### 16. Zadania spełniające 2 warunki: kategoria i ocena
**Zadanie:** Znajdź zadania z kategorii "data analysis" z oceną >= 4
```bash
jq '.tasks[] | select(.category == "data analysis" and .rating >= 4)' all_linux_tasks-001-350.json
```

### 17. Zadania spełniające 2 warunki: czas wykonania i trudność
**Zadanie:** Znajdź łatwe zadania (difficulty <= 2) o krótkim czasie wykonania
```bash
jq '.tasks[] | select(.difficulty <= 2 and .execution_time == "< 1 min")' all_linux_tasks-001-350.json
```

### 18. Zadania z oceną 5 z określonej kategorii
**Zadanie:** Najlepsze zadania z kategorii "system admin"
```bash
jq '.tasks[] | select(.rating == 5 and .category == "system admin")' all_linux_tasks-001-350.json
```

### 19. Znajdź zadania z oceną 5
**Zadanie:** Wyświetl zadania z najwyższą oceną
```bash
jq '.tasks[] | select(.rating == 5)' all_linux_tasks-001-350.json
```

### 20. Filtruj po kategorii
**Zadanie:** Pokaż tylko zadania z kategorii "data analysis"
```bash
jq '.tasks[] | select(.category == "data analysis")' all_linux_tasks-001-350.json
```

### 21. Znajdź zadania z konkretnym poleceniem
**Zadanie:** Wyświetl zadania używające polecenia "jq"
```bash
jq '.tasks[] | select(.command[] == "jq")' all_linux_tasks-001-350.json
```

### 22. Wyszukiwanie w tytule zadania
**Zadanie:** Znajdź zadania zawierające słowo "backup" w tytule
```bash
jq '.tasks[] | select(.task | contains("backup"))' all_linux_tasks-001-350.json
```

### 23. Wyszukiwanie wielokryterialne
**Zadanie:** Zadania Docker (kategoria containers) z trudnością <= 3
```bash
jq '.tasks[] | select(.category == "containers" and .difficulty <= 3)' all_linux_tasks-001-350.json
```

### 24. Zapisz wyfiltrowane zadania do pliku
**Zadanie:** Zapisz wszystkie zadania z oceną 5 do oddzielnego pliku
```bash
jq '{tasks: [.tasks[] | select(.rating == 5)]}' all_linux_tasks-001-350.json > high_rated_tasks.json
```

## 🔧 Zadania wyszukiwania w tekście

### 25. Znajdź zadania z konkretnym słowem w objaśnieniu
**Zadanie:** Wyszukaj zadania zawierające "Docker" w objaśnieniu
```bash
jq '.tasks[] | select(.explanation | test("Docker"; "i"))' all_linux_tasks-001-350.json
```

### 26. Wyszukaj zadania z konkretnym tagiem
**Zadanie:** Znajdź zadania z tagiem "json"
```bash
jq '.tasks[] | select(.tags[]? == "json")' all_linux_tasks-001-350.json
```

### 27. Wyszukiwanie w przypadkach użycia
**Zadanie:** Znajdź zadania przydatne do "monitoring"
```bash
jq '.tasks[] | select(.use_case | contains("monitoring"))' all_linux_tasks-001-350.json
```

### 28. Zapisz wyniki wyszukiwania do CSV
**Zadanie:** Zapisz wyniki wyszukiwania zadań Docker do CSV
```bash
jq -r '["id","task","difficulty","rating"], (.tasks[] | select(.explanation | contains("Docker")) | [.id, .task, .difficulty, .rating]) | @csv' all_linux_tasks-001-350.json > docker_tasks.csv
```

## 📊 Zadania statystyczne

### 29. Policz zadania w każdej kategorii
**Zadanie:** Stwórz statystyki kategorii
```bash
jq '[.tasks[].category] | group_by(.) | map({category: .[0], count: length})' all_linux_tasks-001-350.json
```

### 30. Średni poziom trudności
**Zadanie:** Oblicz średnią trudność wszystkich zadań
```bash
jq '[.tasks[].difficulty] | add / length' all_linux_tasks-001-350.json
```

### 31. Rozkład ocen
**Zadanie:** Policz ile zadań ma każdą ocenę
```bash
jq '[.tasks[].rating] | group_by(.) | map({rating: .[0], count: length}) | sort_by(.rating)' all_linux_tasks-001-350.json
```

### 32. Najczęściej używane polecenia
**Zadanie:** Lista poleceń według częstości użycia
```bash
jq '[.tasks[].command[]] | group_by(.) | map({command: .[0], count: length}) | sort_by(-.count) | .[0:10]' all_linux_tasks-001-350.json
```

### 33. Zapisz statystyki do pliku JSON
**Zadanie:** Stwórz raport statystyczny i zapisz do pliku
```bash
jq '{
  total_tasks: (.tasks | length),
  categories: ([.tasks[].category] | group_by(.) | map({category: .[0], count: length})),
  avg_difficulty: ([.tasks[].difficulty] | add / length),
  rating_distribution: ([.tasks[].rating] | group_by(.) | map({rating: .[0], count: length}))
}' all_linux_tasks-001-350.json > statistics.json
```

## 🏷️ Zadania z tagami

### 34. Wszystkie unikalne tagi
**Zadanie:** Wyświetl wszystkie różne tagi
```bash
jq '[.tasks[].tags[]?] | unique' all_linux_tasks-001-350.json
```

### 35. Zadania z wieloma tagami
**Zadanie:** Znajdź zadania z więcej niż 3 tagami
```bash
jq '.tasks[] | select(.tags | length > 3)' all_linux_tasks-001-350.json
```

### 36. Zapisz zadania z konkretnym tagiem do pliku
**Zadanie:** Zapisz wszystkie zadania z tagiem "automation" do pliku
```bash
jq '{tasks: [.tasks[] | select(.tags[]? == "automation")]}' all_linux_tasks-001-350.json > automation_tasks.json
```

## 🔧 Zadania transformacji

### 37. Lista nazw zadań
**Zadanie:** Wyświetl tylko tytuły wszystkich zadań
```bash
jq '.tasks[].task' all_linux_tasks-001-350.json
```

### 38. Uproszczona lista zadań
**Zadanie:** Stwórz uproszczoną listę z ID, tytułem i trudnością
```bash
jq '.tasks[] | {id: .id, task: .task, difficulty: .difficulty}' all_linux_tasks-001-350.json
```

### 39. Grupowanie po trudności
**Zadanie:** Pogrupuj zadania według poziomu trudności
```bash
jq 'group_by(.difficulty) | map({difficulty: .[0].difficulty, tasks: map(.task)})' all_linux_tasks-001-350.json
```

### 40. Zapisz uproszczoną listę do pliku
**Zadanie:** Zapisz tylko podstawowe informacje o zadaniach do pliku
```bash
jq '{tasks: [.tasks[] | {id: .id, task: .task, difficulty: .difficulty, category: .category, rating: .rating}]}' all_linux_tasks-001-350.json > simplified_tasks.json
```

## 🎯 Zadania zaawansowane

### 41. Top 5 najtrudniejszych zadań
**Zadanie:** Pokaż 5 zadań o najwyższej trudności i ocenie
```bash
jq '.tasks | sort_by(-.difficulty, -.rating) | .[0:5] | map({id: .id, task: .task, difficulty: .difficulty, rating: .rating})' all_linux_tasks-001-350.json
```

### 42. Zadania bez ostrzeżeń
**Zadanie:** Znajdź zadania bez pola warnings lub z warnings = null
```bash
jq '.tasks[] | select(.warnings == null) | {id: .id, task: .task}' all_linux_tasks-001-350.json
```

### 43. Analiza czasu wykonania
**Zadanie:** Pogrupuj zadania według czasu wykonania
```bash
jq '[.tasks[].execution_time] | group_by(.) | map({time: .[0], count: length}) | sort_by(.count)' all_linux_tasks-001-350.json
```

### 44. Zadania wymagające dodatkowego oprogramowania
**Zadanie:** Znajdź zadania z wymaganiami
```bash
jq '.tasks[] | select(.requirements != null) | {id: .id, task: .task, requirements: .requirements}' all_linux_tasks-001-350.json
```

### 45. Zapisz zadania z wymaganiami do pliku
**Zadanie:** Stwórz listę zadań wymagających dodatkowego oprogramowania
```bash
jq '{tasks: [.tasks[] | select(.requirements != null) | {id: .id, task: .task, requirements: .requirements, category: .category}]}' all_linux_tasks-001-350.json > tasks_with_requirements.json
```

## 📈 Zadania raportowe

### 46. Raport kategorii z trudnością
**Zadanie:** Średnia trudność w każdej kategorii
```bash
jq 'group_by(.category) | map({category: .[0].category, avg_difficulty: (map(.difficulty) | add / length), count: length})' all_linux_tasks-001-350.json
```

### 47. Najpopularniejsze tagi w kategorii
**Zadanie:** Najczęściej używane tagi w "data analysis"
```bash
jq '[.tasks[] | select(.category == "data analysis") | .tags[]?] | group_by(.) | map({tag: .[0], count: length}) | sort_by(-.count)' all_linux_tasks-001-350.json
```

### 48. Eksport do CSV
**Zadanie:** Stwórz CSV z podstawowymi informacjami
```bash
jq -r '["id","task","difficulty","rating","category"], (.tasks[] | [.id, .task, .difficulty, .rating, .category]) | @csv' all_linux_tasks-001-350.json > tasks_export.csv
```

### 49. Kompleksowy raport i zapis do pliku
**Zadanie:** Stwórz kompleksowy raport analityczny
```bash
jq '{
  report_date: now,
  summary: {
    total_tasks: (.tasks | length),
    avg_difficulty: ([.tasks[].difficulty] | add / length),
    avg_rating: ([.tasks[].rating] | add / length)
  },
  by_category: (group_by(.category) | map({
    category: .[0].category,
    count: length,
    avg_difficulty: (map(.difficulty) | add / length),
    avg_rating: (map(.rating) | add / length)
  })),
  top_commands: ([.tasks[].command[]] | group_by(.) | map({command: .[0], count: length}) | sort_by(-.count) | .[0:10])
}' all_linux_tasks-001-350.json > comprehensive_report.json
```

## 🔄 Zadania praktyczne dla administratorów

### 50. Plan nauki - zadania podstawowe
**Zadanie:** Stwórz plan nauki z zadaniami 1-2 poziomu trudności
```bash
jq '.tasks[] | select(.difficulty <= 2) | {id: .id, task: .task, commands: .command, use_case: .use_case}' all_linux_tasks-001-350.json
```

### 51. Lista narzędzi do zainstalowania
**Zadanie:** Wszystkie wymagania systemowe
```bash
jq '[.tasks[].requirements[]?] | unique' all_linux_tasks-001-350.json
```

### 52. Zapisz plan nauki do pliku
**Zadanie:** Stwórz strukturalny plan nauki i zapisz do pliku
```bash
jq '{
  learning_plan: {
    beginner: [.tasks[] | select(.difficulty <= 2) | {id: .id, task: .task, category: .category}],
    intermediate: [.tasks[] | select(.difficulty == 3) | {id: .id, task: .task, category: .category}],
    advanced: [.tasks[] | select(.difficulty >= 4) | {id: .id, task: .task, category: .category}]
  }
}' all_linux_tasks-001-350.json > learning_plan.json
```

Te rozszerzone zadania dodają praktyczne scenariusze pracy z plikami, wyszukiwania wielokryterialne oraz więcej opcji zapisu wyników do różnych formatów. Pokrywają one kompletny workflow pracy z danymi JSON w kontekście administracji systemami Linux.

