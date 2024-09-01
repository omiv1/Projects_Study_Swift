
import Foundation

// Zmiana nazwy struktury na unikatową
struct LotInformacje {
    var miejsceWylotu: [String: String]
    var miejsceDocelowe: [String: String]
    var czasPodrozyWMiutach: Int
}

// Funkcja do wczytywania danych lotów
func wczytajDaneLotow() -> [LotInformacje] {
    var loty = [LotInformacje]()

    print("Podaj liczbę lotów:")
    if let liczbaLotow = Int(readLine() ?? "") {
        for _ in 1...liczbaLotow {
            print("Lot \(loty.count + 1):")

            print("Miejsce wylotu:")
            let miejsceWylotu = wczytajLotnisko()

            print("Miejsce docelowe:")
            let miejsceDocelowe = wczytajLotnisko()

            print("Czas podróży (w minutach):")
            if let czasPodrozy = Int(readLine() ?? "") {
                let lot = LotInformacje(miejsceWylotu: miejsceWylotu, miejsceDocelowe: miejsceDocelowe, czasPodrozyWMiutach: czasPodrozy)
                loty.append(lot)
            } else {
                print("Błędny format czasu podróży. Wprowadź liczbę całkowitą.")
            }
        }
    } else {
        print("Błędny format liczby lotów. Wprowadź liczbę całkowitą.")
    }

    return loty
}

// Funkcja do wczytywania danych lotniska
func wczytajLotnisko() -> [String: String] {
    print("Numer lotniska:")
    let numerLotniska = readLine() ?? ""

    print("Nazwa lotniska:")
    let nazwaLotniska = readLine() ?? ""

    return [numerLotniska: nazwaLotniska]
}

// Funkcja do wyświetlania danych lotu
func wyswietlLot(_ lot: LotInformacje) {
    print("Miejsce wylotu: \(lot.miejsceWylotu)")
    print("Miejsce docelowe: \(lot.miejsceDocelowe)")
    print("Czas podróży: \(lot.czasPodrozyWMiutach) minut\n")
}

// Funkcja do wyświetlania danych wszystkich lotów
func wyswietlWszystkieLoty(_ loty: [LotInformacje]) {
    print("Dane wszystkich lotów:")
    for lot in loty {
        wyswietlLot(lot)
    }
}

// Funkcja do obliczania średniego czasu podróży
func obliczSredniCzasPodrozy(_ loty: [LotInformacje]) -> Double {
    var sumaCzasuPodrozy = 0
    for lot in loty {
        sumaCzasuPodrozy += lot.czasPodrozyWMiutach
    }
    return Double(sumaCzasuPodrozy) / Double(loty.count)
}

// Funkcja do wyświetlania danych lotów dłuższych niż średnia
func wyswietlDluzszeNizSredniaLoty(_ loty: [LotInformacje]) {
    let sredniCzasPodrozy = obliczSredniCzasPodrozy(loty)

    print("Dane lotów dłuższych niż średnia (\(sredniCzasPodrozy) minut):")
    for lot in loty {
        if lot.czasPodrozyWMiutach > Int(sredniCzasPodrozy) {
            wyswietlLot(lot)
        }
    }
}

// Funkcja do usuwania danych lotów krótszych niż średnia
func usunKrotszeNizSredniaLoty(_ loty: inout [LotInformacje]) {
    let sredniCzasPodrozy = obliczSredniCzasPodrozy(loty)

    var indeksyDoUsuniecia = [Int]()
    for (indeks, lot) in loty.enumerated() {
        if lot.czasPodrozyWMiutach < Int(sredniCzasPodrozy) {
            indeksyDoUsuniecia.append(indeks)
        }
    }

    for indeks in indeksyDoUsuniecia.sorted(by: >) {
        loty.remove(at: indeks)
    }
}

// Funkcja do wyświetlania danych lotów po usunięciu krótszych niż średnia
func wyswietlPoUsunieciuLoty(_ loty: [LotInformacje]) {
    print("Dane lotów po usunięciu krótszych niż średnia:")
    for lot in loty {
        wyswietlLot(lot)
    }
}

func zadanie5x() {
// Główna część programu
    var loty = wczytajDaneLotow()

// Wyświetlenie danych wszystkich lotów
    wyswietlWszystkieLoty(loty)

// Wyświetlenie danych lotów dłuższych niż średnia
    wyswietlDluzszeNizSredniaLoty(loty)

// Usunięcie danych lotów krótszych niż średnia
    usunKrotszeNizSredniaLoty(&loty)

// Wyświetlenie danych lotów po usunięciu krótszych niż średnia
    wyswietlPoUsunieciuLoty(loty)
}