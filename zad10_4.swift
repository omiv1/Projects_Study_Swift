import Foundation

// Polecenie 1: Funkcja wczytująca liczbę elementów tablicy oraz jej elementy
func wczytajTablice() -> [Int] {
    print("Podaj liczbę elementów tablicy:")
    guard let liczbaElementowStr = readLine(), let liczbaElementow = Int(liczbaElementowStr), liczbaElementow > 0 else {
        print("Błąd: Nieprawidłowa liczba elementów tablicy.")
        return []
    }

    print("Podaj elementy tablicy (oddzielone spacjami):")
    guard let elementyStr = readLine(), elementyStr.split(separator: " ").count == liczbaElementow else {
        print("Błąd: Nieprawidłowa liczba elementów podanych.")
        return []
    }

    return elementyStr.split(separator: " ").compactMap { Int($0) }
}

// Polecenie 2: Funkcja wyświetlająca wszystkie elementy tablicy
func wyswietlTablice(tablica: [Int]) {
    print("Elementy tablicy:")
    for (index, element) in tablica.enumerated() {
        print("\(index + 1): \(element)")
    }
}

// Polecenie 3: Funkcja wyznaczająca najmniejszy element tablicy i jego indeks
func najmniejszyElement(tablica: [Int]) -> (min: Int, indeks: Int)? {
    guard let minElement = tablica.min(), let indeks = tablica.firstIndex(of: minElement) else {
        return nil
    }
    return (minElement, indeks + 1)
}

// Polecenie 4: Funkcja wyznaczająca największy element tablicy i jego indeks
func najwiekszyElement(tablica: [Int]) -> (max: Int, indeks: Int)? {
    guard let maxElement = tablica.max(), let indeks = tablica.firstIndex(of: maxElement) else {
        return nil
    }
    return (maxElement, indeks + 1)
}

// Polecenie 5: Funkcja zamieniająca miejscami element największy z najmniejszym
func zamienMiejscamiMinMax(tablica: inout [Int]) {
    if let minElementInfo = najmniejszyElement(tablica: tablica),
       let maxElementInfo = najwiekszyElement(tablica: tablica) {
        let minIndeks = minElementInfo.indeks - 1
        let maxIndeks = maxElementInfo.indeks - 1

        tablica.swapAt(minIndeks, maxIndeks)
    }
}

// Polecenie 6: Funkcja wyznaczająca średnią geometryczną wszystkich elementów tablicy
func sredniaGeometryczna(tablica: [Int]) -> Double {
    guard !tablica.isEmpty else {
        return 0
    }

    let iloczyn = tablica.reduce(1, *)
    return pow(Double(iloczyn), 1.0 / Double(tablica.count))
}

func zadanie10_4() {
// Polecenie 7: Przetestuj utworzone funkcje
    var mojaTablica = wczytajTablice()

    if !mojaTablica.isEmpty {
        wyswietlTablice(tablica: mojaTablica)

        if let minElementInfo = najmniejszyElement(tablica: mojaTablica) {
            print("Najmniejszy element: \(minElementInfo.min) (indeks \(minElementInfo.indeks))")
        }

        if let maxElementInfo = najwiekszyElement(tablica: mojaTablica) {
            print("Największy element: \(maxElementInfo.max) (indeks \(maxElementInfo.indeks))")
        }

        zamienMiejscamiMinMax(tablica: &mojaTablica)
        print("Tablica po zamianie miejscami największego i najmniejszego elementu:")
        wyswietlTablice(tablica: mojaTablica)

        let sredniaGeo = sredniaGeometryczna(tablica: mojaTablica)
        print("Średnia geometryczna: \(sredniaGeo)")
    }
}