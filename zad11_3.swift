// Definicja enuma Kierunek
enum Kierunek: Int {
    case informatyka
    case matematyka
    case filozofia
    case elektrotechnika
}


// Definicja klasy Student dziedziczącej po klasie Osoba
class Student: Osoba {
    var numerIndeksu: String
    var kierunek: Kierunek
    var rokStudiow: Int
    var oceny: [Float]

    init(imie: String, nazwisko: String, rokUrodzenia: Int, numerIndeksu: String, kierunek: Kierunek, rokStudiow: Int, oceny: [Float]) {
        self.numerIndeksu = numerIndeksu
        self.kierunek = kierunek
        self.rokStudiow = rokStudiow
        self.oceny = oceny

        super.init(imie: imie, nazwisko: nazwisko, rokUrodzenia: rokUrodzenia)
    }

    func sredniaOcen() -> Float {
        let suma = oceny.reduce(0, +)
        return suma / Float(oceny.count)
    }

    func wyswietlDaneStudenta() {
        print("Imię: \(imie)")
        print("Nazwisko: \(nazwisko)")
        print("Rok urodzenia: \(rokUrodzenia)")
        print("Numer indeksu: \(numerIndeksu)")
        print("Kierunek: \(kierunek)")
        print("Rok studiów: \(rokStudiow)")
        print("Oceny: \(oceny)")
        print("Średnia ocen: \(sredniaOcen())")
        print("------")
    }
}

// Funkcja wczytująca rok urodzenia
func wczytajRokUrodzenia() -> Int {
    while true {
        if let rok = Int(readLine() ?? "0"), rok > 0 {
            return rok
        } else {
            print("Podaj poprawny rok urodzenia.")
        }
    }
}

// Funkcja wczytująca kierunek studiów
func wczytajKierunekStudiow() -> Kierunek {
    print("Dostępne kierunki studiów:")
    print("1. Informatyka")
    print("2. Matematyka")
    print("3. Filozofia")
    print("4. Elektrotechnika")

    while true {
        if let wybor = Int(readLine() ?? "0"), let kierunek = Kierunek(rawValue: wybor), (1...4).contains(wybor) {
            return kierunek
        } else {
            print("Podaj poprawny numer kierunku studiów.")
        }
    }
}

// Funkcja wczytująca rok studiów
func wczytajRokStudiow() -> Int {
    while true {
        if let rok = Int(readLine() ?? "0"), rok > 0 {
            return rok
        } else {
            print("Podaj poprawny rok studiów.")
        }
    }
}

// Funkcja wczytująca oceny studenta
func wczytajOcenyStudenta(liczbaOcen: Int) -> [Float] {
    var oceny: [Float] = []

    for _ in 1...liczbaOcen {
        print("Podaj ocenę:")
        while true {
            if let ocena = Float(readLine() ?? "0"), (2.0...5.0).contains(ocena) {
                oceny.append(ocena)
                break
            } else {
                print("Podaj poprawną ocenę z zakresu 2.0 - 5.0.")
            }
        }
    }

    return oceny
}

// Funkcja wczytująca dane studenta
func wczytajDaneStudenta() -> Student {
    print("Podaj imię:")
    let imie = readLine() ?? ""

    print("Podaj nazwisko:")
    let nazwisko = readLine() ?? ""

    print("Podaj rok urodzenia:")
    let rokUrodzenia = wczytajRokUrodzenia()

    print("Podaj numer indeksu:")
    let numerIndeksu = readLine() ?? ""

    let kierunek = wczytajKierunekStudiow()

    print("Podaj rok studiów:")
    let rokStudiow = wczytajRokStudiow()

    print("Podaj liczbę ocen:")
    let liczbaOcen = 5 // Zakładamy, że student ma pięć ocen
    let oceny = wczytajOcenyStudenta(liczbaOcen: liczbaOcen)

    return Student(imie: imie, nazwisko: nazwisko, rokUrodzenia: rokUrodzenia, numerIndeksu: numerIndeksu, kierunek: kierunek, rokStudiow: rokStudiow, oceny: oceny)
}

// Funkcja wyświetlająca studentów na danym kierunku
func wyswietlStudentowNaKierunku(kierunek: Kierunek, studenci: [Student]) {
    let studenciNaKierunku = studenci.filter { $0.kierunek == kierunek }

    if studenciNaKierunku.isEmpty {
        print("Brak studentów na wybranym kierunku.")
    } else {
        print("Studenci na kierunku \(kierunek):")
        for student in studenciNaKierunku {
            student.wyswietlDaneStudenta()
        }
    }
}

// Główna część programu

func zadanie11_3() {
    print("Podaj liczbę studentów:")
    if let liczbaStudentow = Int(readLine() ?? "0"), liczbaStudentow > 0 {
        var studenci: [Student] = []

        for _ in 1...liczbaStudentow {
            let student = wczytajDaneStudenta()
            studenci.append(student)
        }

        print("Podaj numer kierunku, dla którego chcesz wyświetlić studentów:")
        let wybranyKierunek = wczytajKierunekStudiow()

        wyswietlStudentowNaKierunku(kierunek: wybranyKierunek, studenci: studenci)
    } else {
        print("Podaj poprawną liczbę studentów.")
    }
}