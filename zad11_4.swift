// Importowanie biblioteki Foundation, aby móc korzystać z typu Date
import Foundation

// Klasa StudentNaErasmusie dziedziczy po klasie Student
class StudentNaErasmusie: Student {
    // Dodatkowe właściwości charakteryzujące studenta na programie Erasmus
    var nazwaUczelniZaGranica: String
    var dataRozpoczeciaErasmusa: Date
    var dataZakonczeniaErasmusa: Date
    var kursyErasmus: [(nazwa: String, ocena: Float)]

    // Metoda init() klasy StudentNaErasmusie, wywołuje również init() klasy bazowej
    init(imie: String, nazwisko: String, rokUrodzenia: Int, numerIndeksu: String,
         kierunekStudiow: Kierunek, rokStudiow: Int, oceny: [Float],
         nazwaUczelniZaGranica: String, dataRozpoczeciaErasmusa: Date,
         dataZakonczeniaErasmusa: Date, kursyErasmus: [(nazwa: String, ocena: Float)]) {

        // Inicjalizacja właściwości klasy StudentNaErasmusie
        self.nazwaUczelniZaGranica = nazwaUczelniZaGranica
        self.dataRozpoczeciaErasmusa = dataRozpoczeciaErasmusa
        self.dataZakonczeniaErasmusa = dataZakonczeniaErasmusa
        self.kursyErasmus = kursyErasmus

        // Inicjalizacja właściwości klasy bazowej

        super.init(imie: imie, nazwisko: nazwisko, rokUrodzenia: rokUrodzenia,
                numerIndeksu: numerIndeksu, kierunek: kierunekStudiow,
                rokStudiow: rokStudiow, oceny: oceny)

    }

    // Funkcja wyświetlająca dane studenta na programie Erasmus, korzysta z funkcji dziedziczonych
    func wyswietlDaneStudentaNaErasmusie() {
        wyswietlDaneStudenta()
        print("Uczelnia za granicą: \(nazwaUczelniZaGranica)")
        print("Data rozpoczęcia Erasmusa: \(dataRozpoczeciaErasmusa)")
        print("Data zakończenia Erasmusa: \(dataZakonczeniaErasmusa)")
        print("Kursy na Erasmusie:")
        for kurs in kursyErasmus {
            print("Nazwa kursu: \(kurs.nazwa), Ocena: \(kurs.ocena)")
        }
    }

    // Funkcja wyznaczająca liczbę dni spędzonych na programie Erasmus
    func liczbaDniNaErasmusie() -> Int {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.day], from: dataRozpoczeciaErasmusa, to: dataZakonczeniaErasmusa)
        return components.day ?? 0
    }

    // Funkcja wyznaczająca ocenę studenta na Erasmusie na podstawie uczestnictwa w kursach
    func ocenaNaErasmusie() -> String {
        let sredniaOcenaErasmus = kursyErasmus.reduce(0.0) { $0 + $1.ocena } / Float(kursyErasmus.count)

        switch sredniaOcenaErasmus {
        case 4.6...5.0:
            return "Bardzo dobra"
        case 3.6...4.5:
            return "Dobra"
        case 3.0...3.5:
            return "Dostateczna"
        default:
            return "Niedostateczna"
        }
    }
}

func zadanie11_4() {
// Przykład użycia klasy StudentNaErasmusie
    let dataRozpoczecia = Date()
    let dataZakonczenia = Calendar.current.date(byAdding: .month, value: 6, to: dataRozpoczecia)!

    let studentErasmus = StudentNaErasmusie(imie: "Jan", nazwisko: "Kowalski", rokUrodzenia: 1998,
            numerIndeksu: "12345", kierunekStudiow: Kierunek.informatyka,
            rokStudiow: 3, oceny: [4.5, 5.0, 4.0, 3.5, 4.5],
            nazwaUczelniZaGranica: "University of XYZ",
            dataRozpoczeciaErasmusa: dataRozpoczecia,
            dataZakonczeniaErasmusa: dataZakonczenia,
            kursyErasmus: [("Advanced Programming", 4.0),
                           ("Data Science", 5.0)])

    studentErasmus.wyswietlDaneStudentaNaErasmusie()
    print("Liczba dni na Erasmusie: \(studentErasmus.liczbaDniNaErasmusie())")
    print("Ocena na Erasmusie: \(studentErasmus.ocenaNaErasmusie())")
}