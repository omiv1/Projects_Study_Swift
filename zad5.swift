import Foundation

// Struktura loty
struct Lot {
    var miejsceWylotu: [String: String]
    var miejsceDocelowe: [String: String]
    var czasPodrozy: Int
}

func zadanie5() {
// Wczytaj dane dla n lotów do tablicy (n – podaje użytkownik)
    print("Podaj liczbę lotów:")
    if let liczbaLotowStr = readLine(), let liczbaLotow = Int(liczbaLotowStr) {
        var loty: [Lot] = []

        for i in 1...liczbaLotow {
            print("\nLot \(i):")

            // Wczytaj dane miejsca wylotu
            print("Podaj numer lotniska miejsca wylotu:")
            let numerWylotu = readLine() ?? ""
            print("Podaj nazwę lotniska miejsca wylotu:")
            let nazwaWylotu = readLine() ?? ""
            let miejsceWylotu = [numerWylotu: nazwaWylotu]

            // Wczytaj dane miejsca docelowego
            print("Podaj numer lotniska miejsca docelowego:")
            let numerDocelowego = readLine() ?? ""
            print("Podaj nazwę lotniska miejsca docelowego:")
            let nazwaDocelowego = readLine() ?? ""
            let miejsceDocelowe = [numerDocelowego: nazwaDocelowego]

            // Wczytaj czas podróży
            print("Podaj czas podróży w minutach:")
            if let czasPodrozyStr = readLine(), let czasPodrozy = Int(czasPodrozyStr) {
                let lot = Lot(miejsceWylotu: miejsceWylotu, miejsceDocelowe: miejsceDocelowe, czasPodrozy: czasPodrozy)
                loty.append(lot)
            } else {
                print("Błędny format czasu podróży. Pominięto lot \(i).")
            }
        }

        // Wyświetl dane wszystkich lotów
        print("\nDane wszystkich lotów:")
        for (index, lot) in loty.enumerated() {
            print("\nLot \(index + 1):")
            print("Miejsce wylotu: \(lot.miejsceWylotu)")
            print("Miejsce docelowe: \(lot.miejsceDocelowe)")
            print("Czas podróży: \(lot.czasPodrozy) minut")
        }

        // Oblicz średnią czasu podróży
        let sredniaCzasuPodrozy = Double(loty.reduce(0) {
            $0 + $1.czasPodrozy
        }) / Double(loty.count)

        // Wyświetl dane lotów, które trwają dłużej niż średnia wszystkich
        print("\nDane lotów, które trwają dłużej niż średnia wszystkich:")
        for lot in loty {
            if Double(lot.czasPodrozy) > sredniaCzasuPodrozy {
                print("\nMiejsce wylotu: \(lot.miejsceWylotu)")
                print("Miejsce docelowe: \(lot.miejsceDocelowe)")
                print("Czas podróży: \(lot.czasPodrozy) minut")
            }
        }

        // Usuń dane wszystkich lotów, które trwają krócej niż średnia wszystkich lotów
        loty.removeAll {
            Double($0.czasPodrozy) < sredniaCzasuPodrozy
        }

        // Wyświetl dane lotów po usunięciu
        print("\nDane lotów po usunięciu lotów krótszych niż średnia:")
        for (index, lot) in loty.enumerated() {
            print("\nLot \(index + 1):")
            print("Miejsce wylotu: \(lot.miejsceWylotu)")
            print("Miejsce docelowe: \(lot.miejsceDocelowe)")
            print("Czas podróży: \(lot.czasPodrozy) minut")
        }
    } else {
        print("Błędny format liczby lotów.")
    }
}