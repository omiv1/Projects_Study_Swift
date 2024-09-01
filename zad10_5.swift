import Foundation

// Polecenie 1: Utwórz klasę Osoba
class Osoba {
    var imie: String
    var nazwisko: String
    var rokUrodzenia: Int

    // Polecenie 2: Utwórz metodę init()
    init(imie: String, nazwisko: String, rokUrodzenia: Int) {
        self.imie = imie
        self.nazwisko = nazwisko
        self.rokUrodzenia = rokUrodzenia
    }

    // Polecenie 3: Utwórz funkcję obliczającą wiek osoby
    func obliczWiek() -> Int {
        let aktualnyRok = Calendar.current.component(.year, from: Date())
        return aktualnyRok - rokUrodzenia
    }

    // Polecenie 4: Utwórz funkcję wyświetlającą dane osoby
    func wyswietlDaneOsoby() {
        print("Imię: \(imie)")
        print("Nazwisko: \(nazwisko)")
        print("Rok urodzenia: \(rokUrodzenia)")
        print("Wiek: \(obliczWiek()) lat")
    }
}

func zadanie10_5() {
// Polecenie 5: Przetestuj utworzone funkcje
    let osoba1 = Osoba(imie: "Jan", nazwisko: "Kowalski", rokUrodzenia: 1990)
    let osoba2 = Osoba(imie: "Anna", nazwisko: "Nowak", rokUrodzenia: 1985)

    osoba1.wyswietlDaneOsoby()
    print()
    osoba2.wyswietlDaneOsoby()

// Porównanie wieku osób
    if osoba1.obliczWiek() == osoba2.obliczWiek() {
        print("\nObie osoby są w tym samym wieku.")
    } else if osoba1.obliczWiek() > osoba2.obliczWiek() {
        print("\n\(osoba1.imie) jest starszy/starsza od \(osoba2.imie).")
    } else {
        print("\n\(osoba2.imie) jest starszy/starsza od \(osoba1.imie).")
    }
}