import Foundation

// Struktura liczbaZespolona
struct LiczbaZespolona {
    var czescRzeczywista: Double
    var czescUrojona: Double
}

// Funkcja dodawania dwoch liczb zespolonych
func dodajLiczbyZespolone(_ a: LiczbaZespolona, _ b: LiczbaZespolona) -> LiczbaZespolona {
    let sumaCzesciRzeczywistej = a.czescRzeczywista + b.czescRzeczywista
    let sumaCzesciUrojonej = a.czescUrojona + b.czescUrojona
    return LiczbaZespolona(czescRzeczywista: sumaCzesciRzeczywistej, czescUrojona: sumaCzesciUrojonej)
}

// Funkcja odejmowania dwoch liczb zespolonych
func odejmijLiczbyZespolone(_ a: LiczbaZespolona, _ b: LiczbaZespolona) -> LiczbaZespolona {
    let roznicaCzesciRzeczywistej = a.czescRzeczywista - b.czescRzeczywista
    let roznicaCzesciUrojonej = a.czescUrojona - b.czescUrojona
    return LiczbaZespolona(czescRzeczywista: roznicaCzesciRzeczywistej, czescUrojona: roznicaCzesciUrojonej)
}

// Funkcja mnożenia dwoch liczb zespolonych
func pomnozLiczbyZespolone(_ a: LiczbaZespolona, _ b: LiczbaZespolona) -> LiczbaZespolona {
    let czescRzeczywista = a.czescRzeczywista * b.czescRzeczywista - a.czescUrojona * b.czescUrojona
    let czescUrojona = a.czescRzeczywista * b.czescUrojona + a.czescUrojona * b.czescRzeczywista
    return LiczbaZespolona(czescRzeczywista: czescRzeczywista, czescUrojona: czescUrojona)
}

// Menu dla zaimplementowanych funkcji
func menu() {
    print("1. Dodaj liczby zespolone")
    print("2. Odejmij liczby zespolone")
    print("3. Pomnóż liczby zespolone")
    print("4. Wyjście")
}

// Wczytywanie liczb zespolonych od uzytkownika
func wczytajLiczbeZespolona() -> LiczbaZespolona {
    print("Podaj czesc rzeczywista:")
    let rzeczywista = Double(readLine()!) ?? 0.0
    print("Podaj czesc urojona:")
    let urojona = Double(readLine()!) ?? 0.0
    return LiczbaZespolona(czescRzeczywista: rzeczywista, czescUrojona: urojona)
}

// Glowna pętla programu
func zadanie1() {

    var opcja = 0
    var liczba1 = LiczbaZespolona(czescRzeczywista: 0, czescUrojona: 0)
    var liczba2 = LiczbaZespolona(czescRzeczywista: 0, czescUrojona: 0)

    repeat {
        menu()
        if let wybor = Int(readLine()!) {
            switch wybor {
            case 1:
                print("Podaj pierwsza liczbe zespolona:")
                liczba1 = wczytajLiczbeZespolona()
                print("Podaj druga liczbe zespolona:")
                liczba2 = wczytajLiczbeZespolona()
                let wynikDodawania = dodajLiczbyZespolone(liczba1, liczba2)
                print("Wynik dodawania: \(wynikDodawania)")
            case 2:
                print("Podaj pierwsza liczbe zespolona:")
                liczba1 = wczytajLiczbeZespolona()
                print("Podaj druga liczbe zespolona:")
                liczba2 = wczytajLiczbeZespolona()
                let wynikOdejmowania = odejmijLiczbyZespolone(liczba1, liczba2)
                print("Wynik odejmowania: \(wynikOdejmowania)")
            case 3:
                print("Podaj pierwsza liczbe zespolona:")
                liczba1 = wczytajLiczbeZespolona()
                print("Podaj druga liczbe zespolona:")
                liczba2 = wczytajLiczbeZespolona()
                let wynikMnozenia = pomnozLiczbyZespolone(liczba1, liczba2)
                print("Wynik mnożenia: \(wynikMnozenia)")
            case 4:
                opcja = 4
            default:
                print("Niepoprawna opcja. Wybierz ponownie.")
            }
        } else {
            print("Niepoprawna opcja. Wybierz ponownie.  (blad)")
        }
    } while opcja != 4
}