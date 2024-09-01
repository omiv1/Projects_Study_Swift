import Foundation

// Polecenie 1: Funkcja wczytująca współrzędne i zwracająca w postaci krotki
func wczytajWspolrzedne() -> (x: Double, y: Double) {
    print("Podaj współrzędną x:")
    guard let xStr = readLine(), let x = Double(xStr) else {
        print("Błąd: Nieprawidłowa współrzędna x.")
        return (0, 0)
    }

    print("Podaj współrzędną y:")
    guard let yStr = readLine(), let y = Double(yStr) else {
        print("Błąd: Nieprawidłowa współrzędna y.")
        return (0, 0)
    }

    return (x, y)
}

// Polecenie 2: Funkcja obliczająca odległość między punktami
func odlegloscMiedzyPunktami(punkt1: (x: Double, y: Double), punkt2: (x: Double, y: Double)) -> Double {
    let deltaX = punkt2.x - punkt1.x
    let deltaY = punkt2.y - punkt1.y
    return sqrt(deltaX * deltaX + deltaY * deltaY)
}

// Polecenie 3: Funkcja zwracająca numer ćwiartki
func numerCwiartki(punkt: (x: Double, y: Double)) -> Int {
    if punkt.x > 0 {
        return punkt.y > 0 ? 1 : 4
    } else {
        return punkt.y > 0 ? 2 : 3
    }
}

// Polecenie 4: Funkcja sprawdzająca położenie punktu względem kwadratu
func polozenieWzgledemKwadratu(punkt: (x: Double, y: Double), wierzcholekKwadratu: Double) -> String {
    let polowaDlugosciBoku = wierzcholekKwadratu / 2

    if abs(punkt.x) <= polowaDlugosciBoku && abs(punkt.y) <= polowaDlugosciBoku {
        return "Punkt leży wewnątrz kwadratu."
    } else if abs(punkt.x) == polowaDlugosciBoku || abs(punkt.y) == polowaDlugosciBoku {
        return "Punkt leży na obwodzie kwadratu."
    } else {
        return "Punkt leży poza kwadratem."
    }
}

func zadanie10_3() {
// Polecenie 5: Przetestuj utworzone funkcje
    let punkt1 = wczytajWspolrzedne()
    let punkt2 = wczytajWspolrzedne()

    let odleglosc = odlegloscMiedzyPunktami(punkt1: punkt1, punkt2: punkt2)
    print("Odległość między punktami: \(odleglosc)")

    let numerCwiartkiPunkt1 = numerCwiartki(punkt: punkt1)
    print("Punkt 1 leży w \(numerCwiartkiPunkt1) ćwiartce.")

    let numerCwiartkiPunkt2 = numerCwiartki(punkt: punkt2)
    print("Punkt 2 leży w \(numerCwiartkiPunkt2) ćwiartce.")

    let wierzcholekKwadratu: Double = 2.0
    let polozenie = polozenieWzgledemKwadratu(punkt: punkt1, wierzcholekKwadratu: wierzcholekKwadratu)
    print(polozenie)
}