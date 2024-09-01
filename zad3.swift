import Foundation

// Definicja zbioru samochodów
func zadanie3() {
    var samochody: Set<String> = []

// Wprowadź nazwy dla 6 samochodów
    for _ in 1...6 {
        print("Podaj nazwę samochodu:")
        if let nazwaSamochodu = readLine() {
            samochody.insert(nazwaSamochodu)
        }
    }

// Wyświetl wszystkie elementy zbioru
    print("\nWszystkie samochody:")
    for samochod in samochody {
        print(samochod)
    }

// Wczytaj model samochodu od użytkownika i usuń go ze zbioru, sprawdzając, czy istnieje
    print("\nPodaj model samochodu do usunięcia:")
    if let modelDoUsuniecia = readLine() {
        if samochody.contains(modelDoUsuniecia) {
            samochody.remove(modelDoUsuniecia)
            print("Samochód \(modelDoUsuniecia) został usunięty.")
        } else {
            print("Podany model samochodu nie istnieje w zbiorze.")
        }
    }

// Wyświetl zaktualizowany zbiór samochodów
    print("\nZaktualizowane samochody:")
    for samochod in samochody {
        print(samochod)
    }
}