import Foundation

enum Stanowisko: String {
    case programista
    case manager
    case ksiegowy
    case marketingowiec
}

// Polecenie 1: Utwórz klasę Pracownik dziedziczącą po klasie Osoba
class Pracownik: Osoba {
    // Polecenie 1: Zdefiniuj stanowisko jako typ wyliczeniowy
    var rokZatrudnienia: Int
    var stanowisko: Stanowisko
    var stawkaZaGodzine: Double
    var liczbaZrealizowanychGodzin: Int
    var nazwaFirmy: String

    // Polecenie 2: Utwórz metodę init() korzystając z tej z klasy Osoba
    init(imie: String, nazwisko: String, rokUrodzenia: Int, rokZatrudnienia: Int, stanowisko: Stanowisko,
         stawkaZaGodzine: Double, liczbaZrealizowanychGodzin: Int, nazwaFirmy: String) {
        self.rokZatrudnienia = rokZatrudnienia
        self.stanowisko = stanowisko
        self.stawkaZaGodzine = stawkaZaGodzine
        self.liczbaZrealizowanychGodzin = liczbaZrealizowanychGodzin
        self.nazwaFirmy = nazwaFirmy
        super.init(imie: imie, nazwisko: nazwisko, rokUrodzenia: rokUrodzenia)
    }

    // Polecenie 3: Utwórz funkcję zwracającą liczbę lat pracy w danej firmie
    func liczbaLatPracy() -> Int {
        let aktualnyRok = Calendar.current.component(.year, from: Date())
        return aktualnyRok - rokZatrudnienia
    }

    // Polecenie 4: Utwórz funkcję zwracającą wysokość pensji za przeprowadzone godziny, według stawki
    func obliczPensje() -> Double {
        return Double(liczbaZrealizowanychGodzin) * stawkaZaGodzine
    }

    // Polecenie 5: Utwórz funkcję wyświetlającą dane pracownika, nadpisując funkcję z klasy Osoba
    override func wyswietlDaneOsoby() {
        super.wyswietlDaneOsoby()
        print("Rok zatrudnienia: \(rokZatrudnienia)")
        print("Stanowisko: \(stanowisko.rawValue)")
        print("Stawka za godzinę: \(stawkaZaGodzine) zł")
        print("Liczba zrealizowanych godzin: \(liczbaZrealizowanychGodzin)")
        print("Nazwa firmy: \(nazwaFirmy)")
        print("Liczba lat pracy: \(liczbaLatPracy()) lat")
        print("Pensja: \(obliczPensje()) zł")
    }
}
func zadanie10_6() {
// Polecenie 6: Przetestuj utworzone funkcje
    let pracownik1 = Pracownik(imie: "Adam", nazwisko: "Nowak", rokUrodzenia: 1980,
            rokZatrudnienia: 2010, stanowisko: .programista,
            stawkaZaGodzine: 50.0, liczbaZrealizowanychGodzin: 160,
            nazwaFirmy: "ABC Software")

    let pracownik2 = Pracownik(imie: "Maria", nazwisko: "Kowalska", rokUrodzenia: 1992,
            rokZatrudnienia: 2015, stanowisko: .manager,
            stawkaZaGodzine: 70.0, liczbaZrealizowanychGodzin: 140,
            nazwaFirmy: "XYZ Corporation")

    pracownik1.wyswietlDaneOsoby()
    print()
    pracownik2.wyswietlDaneOsoby()
}