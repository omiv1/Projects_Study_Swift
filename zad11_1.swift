import Foundation

// Polecenie 1: Utwórz klasę Prostokąt
class Prostokat {
    // Polecenie 1: Scharakteryzowana przez długości boków
    var dlugoscBokuA: Double
    var dlugoscBokuB: Double

    // Polecenie 2: Utwórz metodę init()
    init(dlugoscBokuA: Double, dlugoscBokuB: Double) {
        self.dlugoscBokuA = dlugoscBokuA
        self.dlugoscBokuB = dlugoscBokuB
    }

    // Polecenie 3: Utwórz funkcję zwracającą pole figury
    func obliczPole() -> Double {
        return dlugoscBokuA * dlugoscBokuB
    }

    // Polecenie 4: Utwórz funkcję zwracającą obwód figury
    func obliczObwod() -> Double {
        return 2 * (dlugoscBokuA + dlugoscBokuB)
    }

    // Polecenie 5: Utwórz funkcję wyświetlającą dane figury
    func wyswietlDaneFigury() {
        print("Prostokąt o wymiarach:")
        print("Bok A: \(dlugoscBokuA)")
        print("Bok B: \(dlugoscBokuB)")
        print("Pole: \(obliczPole())")
        print("Obwód: \(obliczObwod())")
    }
}

func zadanie11_1() {
// Polecenie 7: Przetestuj utworzone funkcje
    let prostokat1 = Prostokat(dlugoscBokuA: 5.0, dlugoscBokuB: 8.0)
    let prostokat2 = Prostokat(dlugoscBokuA: 10.0, dlugoscBokuB: 15.0)

    prostokat1.wyswietlDaneFigury()
    print()
    prostokat2.wyswietlDaneFigury()
}