# Flutter Outlier Finder

Prosta aplikacja Flutter wykrywająca **wartość odstającą** w zbiorze liczb całkowitych  
(jedyna liczba parzysta lub nieparzysta w tablicy).

Projekt przygotowany jako zadanie algorytmiczne z naciskiem na:
- czytelną logikę,
- dobrą strukturę,
- poprawność i wydajność rozwiązania.

---

## 📌 Opis problemu

Dla danej listy liczb całkowitych:
- wszystkie liczby są **parzyste** albo **nieparzyste**,
- z wyjątkiem **jednej wartości odstającej**.

Zadaniem aplikacji jest:
1. przyjęcie listy liczb (oddzielonych przecinkami),
2. wykrycie wartości odstającej,
3. wyświetlenie wyniku na osobnym ekranie.

**Przykład:**
Input: 2,4,0,100,4,11,2602,36
Output: 11

## ⚙️ Algorytm

1. Analiza pierwszych 3 elementów w celu określenia dominującej parzystości.
2. Jedno przejście po całej liście w poszukiwaniu liczby o przeciwnej parzystości.

**Złożoność:**
- czasowa: **O(n)**
- pamięciowa: **O(1)**

Algorytm działa poprawnie również dla bardzo dużych zbiorów danych.

---

## 🧱 Architektura

Projekt został podzielony zgodnie z zasadą **Single Responsibility**:

lib/
├─ domain/
│ └─ outlier_finder.dart // czysta logika algorytmu
├─ ui/
│ └─ pages/
│ ├─ input_page.dart // input + button
│ └─ result_page.dart // prezentacja wyniku
└─ main.dart

- logika algorytmu niezależna od UI,
- łatwa testowalność i dalsza rozbudowa.

---

## 📱 Funkcjonalność aplikacji

- pole tekstowe do wprowadzania liczb (`2,4,0,100,...`)
- przycisk **Wyszukaj**
- drugi widok prezentujący wynik

---

## ▶️ Uruchomienie projektu

flutter run
