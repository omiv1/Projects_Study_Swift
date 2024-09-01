import Foundation

// Polecenie 1: Wygeneruj 3 liczby losowe z zakresu 1-250
func generujLiczbyLosowe() -> (Int, Int, Int) {
    let liczba1 = Int.random(in: 1...250)
    let liczba2 = Int.random(in: 1...250)
    let liczba3 = Int.random(in: 1...250)
    return (liczba1, liczba2, liczba3)
}

// Polecenie 2: Znajdź największą liczbę
func najwiekszaLiczba(liczby: (Int, Int, Int)) -> Int {
    return max(liczby.0, liczby.1, liczby.2)
}

// Polecenie 3: Znajdź najmniejszą liczbę
func najmniejszaLiczba(liczby: (Int, Int, Int)) -> Int {
    return min(liczby.0, liczby.1, liczby.2)
}

// Polecenie 4: Znajdź jednocześnie najmniejszą i największą liczbę
func minMax(liczby: (Int, Int, Int)) -> (min: Int, max: Int) {
    return (min(liczby.0, liczby.1, liczby.2), max(liczby.0, liczby.1, liczby.2))
}

// Przykładowe użycie
func zadanie10_1() {
    let wygenerowaneLiczby = generujLiczbyLosowe()
    print("Wygenerowane liczby: \(wygenerowaneLiczby)")
    print("Największa liczba: \(najwiekszaLiczba(liczby: wygenerowaneLiczby))")
    print("Najmniejsza liczba: \(najmniejszaLiczba(liczby: wygenerowaneLiczby))")

    let minMaxValues = minMax(liczby: wygenerowaneLiczby)
    print("Najmniejsza liczba: \(minMaxValues.min), Największa liczba: \(minMaxValues.max)")
}