import Foundation

// Polecenie 1: Utwórz klasę Prostopadłościan dziedziczącą po klasie Prostokat
class Prostopadloscian: Prostokat {
    // Polecenie 1: Dodatkowo scharakteryzowana przez wysokość
    var wysokosc: Double

    // Polecenie 2: Utwórz metodę init()
    init(dlugoscBokuA: Double, dlugoscBokuB: Double, wysokosc: Double) {
        self.wysokosc = wysokosc
        super.init(dlugoscBokuA: dlugoscBokuA, dlugoscBokuB: dlugoscBokuB)
    }

    // Polecenie 3: Utwórz funkcję zwracającą pole całkowite bryły
    func obliczPoleCalkowite() -> Double {
        return 2 * (super.obliczPole() + dlugoscBokuA * wysokosc + dlugoscBokuB * wysokosc)
    }

    // Polecenie 4: Utwórz funkcję zwracającą sumę krawędzi
    func obliczSumeKrawedzi() -> Double {
        return 4 * (dlugoscBokuA + dlugoscBokuB + wysokosc)
    }

    // Polecenie 5: Utwórz funkcję zwracającą objętość bryły
    func obliczObjetosc() -> Double {
        return super.obliczPole() * wysokosc
    }

    // Polecenie 6: Utwórz funkcję wyświetlającą dane bryły
    func wyswietlDaneBryly() {
        print("Prostopadłościan o wymiarach:")
        print("Bok A: \(dlugoscBokuA)")
        print("Bok B: \(dlugoscBokuB)")
        print("Wysokość: \(wysokosc)")
        print("Pole całkowite: \(obliczPoleCalkowite())")
        print("Objętość: \(obliczObjetosc())")
    }
}
func zadanie11_2() {
// Polecenie 7: Przetestuj utworzone funkcje
    let prostopadloscian1 = Prostopadloscian(dlugoscBokuA: 3.0, dlugoscBokuB: 4.0, wysokosc: 5.0)
    let prostopadloscian2 = Prostopadloscian(dlugoscBokuA: 6.0, dlugoscBokuB: 8.0, wysokosc: 10.0)

    prostopadloscian1.wyswietlDaneBryly()
    print()
    prostopadloscian2.wyswietlDaneBryly()
}