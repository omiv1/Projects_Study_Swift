import Foundation

func zadanie4() {
// Definicja słownika studentów
    var studenci: [String: String] = [:]

// Dodaj 5 studentów na podstawie wczytanych danych od użytkownika
    for _ in 1...5 {
        print("Podaj nazwisko studenta:")
        if let nazwisko = readLine() {
            print("Podaj identyfikator studenta:")
            if let identyfikator = readLine() {
                studenci[identyfikator] = nazwisko
            }
        }
    }

// Wyświetl wszystkie dane
    print("\nWszystkie dane studentów:")
    for (identyfikator, nazwisko) in studenci {
        print("Identyfikator: \(identyfikator), Nazwisko: \(nazwisko)")
    }

// Wczytaj dane studenta i wyszukaj go
    print("\nPodaj identyfikator studenta do wyszukania:")
    if let szukanyIdentyfikator = readLine() {
        if let znalezionyStudent = studenci[szukanyIdentyfikator] {
            print("Znaleziono studenta o identyfikatorze \(szukanyIdentyfikator): \(znalezionyStudent)")
        } else {
            print("Nie znaleziono studenta o podanym identyfikatorze.")
        }
    }

// Wczytaj dane studenta do usunięcia
    print("\nPodaj identyfikator studenta do usunięcia:")
    if let usunIdentyfikator = readLine() {
        if let usunietyStudent = studenci.removeValue(forKey: usunIdentyfikator) {
            print("Usunięto studenta o identyfikatorze \(usunIdentyfikator): \(usunietyStudent)")
        } else {
            print("Nie znaleziono studenta o podanym identyfikatorze do usunięcia.")
        }
    }

// Wyświetl zaktualizowane dane studentów
    print("\nZaktualizowane dane studentów:")
    for (identyfikator, nazwisko) in studenci {
        print("Identyfikator: \(identyfikator), Nazwisko: \(nazwisko)")
    }
}