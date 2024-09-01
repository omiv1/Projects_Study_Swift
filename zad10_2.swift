import Foundation

// Polecenie 1: Wyświetl menu
func wyswietlMenu() {
    print("Menu:")
    print("1 – Dodawanie")
    print("2 – Odejmowanie")
    print("3 – Mnożenie")
    print("4 – Dzielenie")
    print("5 – Pierwiastkowanie")
}

// Polecenie 2: Funkcja dodawania
func dodawanie(a: Double, b: Double) -> Double {
    return a + b
}

// Polecenie 3: Funkcja odejmowania
func odejmowanie(a: Double, b: Double) -> Double {
    return a - b
}

// Polecenie 4: Funkcja mnożenia
func mnozenie(a: Double, b: Double) -> Double {
    return a * b
}

// Polecenie 5: Funkcja dzielenia
func dzielenie(a: Double, b: Double) -> Double? {
    guard b != 0 else {
        print("Błąd: Dzielenie przez zero.")
        return nil
    }
    return a / b
}

// Polecenie 6: Funkcja pierwiastkowania
func pierwiastkowanie(liczba: Double) -> Double? {
    guard liczba >= 0 else {
        print("Błąd: Nie można pierwiastkować liczby ujemnej.")
        return nil
    }
    return sqrt(liczba)
}

func zadanie10_2()
{
// Przykładowe użycie
wyswietlMenu()
print("Podaj opcję (1-5):")

if let opcjaStr = readLine(), let opcja = Int(opcjaStr) {
    switch opcja {
    case 1, 2, 3, 4:
        print("Podaj dwie liczby:")
        if let aStr = readLine(), let a = Double(aStr),
           let bStr = readLine(), let b = Double(bStr) {
            switch opcja {
            case 1:
                print("Wynik: \(dodawanie(a: a, b: b))")
            case 2:
                print("Wynik: \(odejmowanie(a: a, b: b))")
            case 3:
                print("Wynik: \(mnozenie(a: a, b: b))")
            case 4:
                if let wynik = dzielenie(a: a, b: b) {
                    print("Wynik: \(wynik)")
                }
            default:
                break
            }
        }
    case 5:
        print("Podaj liczbę:")
        if let liczbaStr = readLine(), let liczba = Double(liczbaStr) {
            if let wynik = pierwiastkowanie(liczba: liczba) {
                print("Wynik: \(wynik)")
            }
        }
    default:
        print("Nieprawidłowa opcja.")
    }
} else {
    print("Błędny format opcji.")
}
    }