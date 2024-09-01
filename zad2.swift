import Foundation

// Struktura rzutOszczepem
struct RzutOszczepem {
    var idOsoby: Int
    var proba1: Double
    var proba2: Double
    var proba3: Double

    // Oblicz średnią rzutów
    func sredniaRzutow() -> Double {
        return (proba1 + proba2 + proba3) / 3.0
    }
}

// Funkcja znajdująca zawodnika z największą średnią rzutów
func znajdzNajlepszegoZawodnika(zawodnicy: [RzutOszczepem]) -> RzutOszczepem? {
    var najlepszyZawodnik: RzutOszczepem?
    var najlepszaSrednia: Double = 0.0

    for zawodnik in zawodnicy {
        let srednia = zawodnik.sredniaRzutow()
        if srednia > najlepszaSrednia {
            najlepszaSrednia = srednia
            najlepszyZawodnik = zawodnik
        }
    }

    return najlepszyZawodnik
}

// Funkcja usuwająca zawodnika z najmniejszą średnią rzutów
func usunNajgorszegoZawodnika(zawodnicy: inout [RzutOszczepem]) {
    var najgorszyZawodnikIndex: Int?
    var najgorszaSrednia: Double = Double.greatestFiniteMagnitude

    for (index, zawodnik) in zawodnicy.enumerated() {
        let srednia = zawodnik.sredniaRzutow()
        if srednia < najgorszaSrednia {
            najgorszaSrednia = srednia
            najgorszyZawodnikIndex = index
        }
    }

    if let index = najgorszyZawodnikIndex {
        zawodnicy.remove(at: index)
    }
}

// Funkcja do wyświetlania danych zawodników
func wyswietlZawodnikow(_ zawodnicy: [RzutOszczepem]) {
    for zawodnik in zawodnicy {
        print("ID: \(zawodnik.idOsoby), Średnia rzutów: \(zawodnik.sredniaRzutow())")
    }
}

func zadanie2()
{
    // Główna pętla programu
    var zawodnicy = [RzutOszczepem]()

    // Wczytywanie danych dla czterech zawodników
    for i in 1...4 {
        print("Podaj identyfikator osoby \(i):")
        let id = Int(readLine()!) ?? 0
        print("Podaj wynik próby 1:")
        let proba1 = Double(readLine()!) ?? 0.0
        print("Podaj wynik próby 2:")
        let proba2 = Double(readLine()!) ?? 0.0
        print("Podaj wynik próby 3:")
        let proba3 = Double(readLine()!) ?? 0.0

        let zawodnik = RzutOszczepem(idOsoby: id, proba1: proba1, proba2: proba2, proba3: proba3)
        zawodnicy.append(zawodnik)
    }

    // Wyświetl zawodników przed usunięciem
    print("Zawodnicy przed usunięciem:")
    wyswietlZawodnikow(zawodnicy)

    // Wyświetl zawodnika z największą średnią rzutów
    if let najlepszyZawodnik = znajdzNajlepszegoZawodnika(zawodnicy: zawodnicy) {
        print("\nNajlepszy zawodnik przed usunięciem:")
        print("ID: \(najlepszyZawodnik.idOsoby), Średnia rzutów: \(najlepszyZawodnik.sredniaRzutow())")
    }

    // Usuń zawodnika z najmniejszą średnią rzutów
    usunNajgorszegoZawodnika(zawodnicy: &zawodnicy)

    // Wyświetl zawodników po usunięciu
    print("\nZawodnicy po usunięciu:")
    wyswietlZawodnikow(zawodnicy)
}