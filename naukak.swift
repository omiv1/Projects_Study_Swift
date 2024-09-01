// The Swift Programming Language
// https://docs.swift.org/swift-book

import Swift
import Foundation

//print("Hello, world!")

//var a1: Int
//a1 = Int.random(in: 0..<10)
//var b1: Int
//b1 = Int.random(in: 0..<10)
//var c1: Int = Int.random(in: 0..<10)
//
//print("suma = \(a1+b1+c1)")
//var iloczyn = a1*b1*c1
//
//var pierwistek = pow(Double(iloczyn),(1.0/3.0))
//print(String(format: "Srednia = %.3lf",pierwistek))
//
//var w:Int
//w = Int(readLine()!)!
//print(w)
////var v:Int
//if var v = Int(readLine() ?? "0")
//{
//    print("dziala")
//}
//else
//{
//    print("niedzila")
//    w = 0
//}
//var w: Int = v
//print (w)

//wczytanie danych
//var test = 0;
//let pi = 3.14
//while (test == 0) {
//    print("Podaj promien:")
//    if let promien = Int(readLine() ?? "0") {
//        if (promien > 0) {
//            print("Podaj a:")
//            if let a = Int(readLine() ?? "0") {
//                print(a + promien)
//                test = 1
//            }
//        }
//    }
//}

//enum standard: Comparable
//{
//    case wysoki
//    case sredni
//    case niski
//}
//print("podaj liczbe mieszkan:")
//if let liczbamieszkan = Int(readLine() ?? "0"), liczbamieszkan > 0
//{
//    var tab: [(lokalizacja: Int,powierzchnia: Int, cena_za_metr: Int,standard: standard)] = []
//    for _ in 0...liczbamieszkan
//    {
//        var a: Int = Int.random(in: 1...10)
//        var b: Int = Int.random(in: 1...10)
//        var c: Int = Int.random(in: 1...10)
//        var d: Int = Int.random(in: 0...2)
//        if d == 0
//        {
//            tab.append((a,b,c,standard.wysoki))
//        }
//        else if d == 1
//        {
//            tab.append((a,b,c,standard.sredni))
//        }
//        else
//        {
//            tab.append((a,b,c,standard.niski))
//        }
//    }
//    for i in tab
//    {
//        print(i)
//    }
//    var s1 = tab.max(by: {$0.powierzchnia < $1.powierzchnia})
//    var s2 = tab.max(by: {$0.powierzchnia > $1.powierzchnia})
//    print("najwieksze: \(s1), najmniejsze: \(s2)")
//    print("posortowane:")
//    tab.sort(by: {$0.cena_za_metr < $1.cena_za_metr})
//    tab.sort(by: {($0.cena_za_metr, $0.lokalizacja) < ($1.cena_za_metr, $1.lokalizacja)})
//    for i in tab
//    {
//        print(i)
//    }
//    print("podaj lokalizacje: ")
//    if let lok = Int(readLine() ?? "0")
//    {
//        for i in tab
//        {
//            if i.lokalizacja == lok
//            {
//                print(i)
//            }
//        }
//    }
//    tab.sort(by: {$0.standard < $1.standard})
//
//    for i in tab
//    {
//        print("\(i.lokalizacja) \(i.cena_za_metr) \(i.powierzchnia) \(i.standard)")
//
//    }
//}
//else
//{
//    print("nie")
//}

//var s1 = "testowy napis z spacjami"
//var s2 = "drugi tekst"
//var s3 = s1 + " " + s2
//var s4 = s3.firstIndex(of: " ") ?? s3.endIndex
//var s5 = s3[..<s4]
//print(s5)
//print(s3)
//for i in s3
//{
//    print(i)
//}

//var s = ""
//print("Podaj imie:")
//var s1 = "imie"
////s1 = readLine() ?? "0"
//print("Podaj drugie imie:")
//var s2 = "drugie"
////s2 = readLine() ?? "0"
//print("Podaj nazwisko")
//var s3 = "nazwisko"
////s3 = readLine() ?? "0"
//print("Podaj rok urodzenia:")
//var s4 = "35"
////s4 = readLine() ?? "0"
//s = s1 + " " + s2 + " " + s3 + " " + s4
//print(s)
////var st = s.componentsSeparatedByString(" ")
//var st = s.components(separatedBy: " ")
//s = st[0] + " " + st[2] + " " + st [3]
//print(s)
//var w1 = s.lastIndex(of: " ") ?? s.endIndex
//var w2 = s[w1..<s.endIndex]
//var w21 = s[s.index(w1, offsetBy: 1)..<s.endIndex]
//print(w2)
//print(w21)
//var w3: Int = Int(w2) ?? 0
//var w31: Int = Int(w21) ?? 0
////var w4: Int = Int(String(w2)) ?? 0
//print(w3)
//print(w31)

//var tab: [[Int]] = [[]]
//for i in 0..<10
//{
//    tab.append([])
//    for j in 0..<5
//    {
//        tab[i].append(j)
//    }
//}
//tab.append([1,2,3])
//for i in tab
//{
//    print(i)
//}
//print("fd")

//zadanie6_5
//if let rozmiar: Int = Int(readLine() ?? "0")
//{
//    var tab1: [Int] = []
//    var tab2: [Int] = []
//    for _ in 0..<rozmiar
//    {
//        tab1.append(Int.random(in: 0...20))
//        tab2.append(Int.random(in: 0...20))
//    }
//    print(tab1)
//    print(tab2)
//    for i in 0..<rozmiar
//    {
//        for j in 0..<rozmiar
//        {
//            if tab1[i] == tab2[j]
//            {
//                print("powtarzajacy sie element \(tab1[i])")
//            }
//        }
//    }
//}
//else
//{
//    print("podno zly rozmiar")
//}

//zadanie8.4
//enum miesiace: Int {
//    case styczen = 1
//    case luty = 2
//    case marzec = 3
//    case kwiecien = 4
//    case maj = 5
//    case czerwiec = 6
//    case lipiec = 7
//    case sierpien = 8
//    case wrzesien = 9
//    case pazdziernik = 10
//    case listopad = 11
//    case grudzien = 12
//}

//enum miesiace {
//    case styczen
//    case luty
//    case marzec
//    case kwiecien
//    case maj
//    case czerwiec
//    case lipiec
//    case sierpien
//    case wrzesien
//    case pazdziernik
//    case listopad
//    case grudzien
//
//    func pora_roku() -> String {
//        switch self {
//            case .styczen, .luty, .marzec:
//                return "zima"
//            case .kwiecien, .maj, .czerwiec:
//                return "wiosna"
//            case .lipiec, .sierpien, .wrzesien:
//                return "lato"
//            case .pazdziernik, .listopad, .grudzien:
//                return "jesien"
//        }
//    }
//}

//var m: miesiace = miesiace.kwiecien
//print(m.pora_roku())
//switch m
//{
//    case .styczen, .luty, .marzec:
//        print("zima")
//    case .kwiecien, .maj, .czerwiec:
//        print("wiosna")
//    case .lipiec, .sierpien, .wrzesien:
//        print("lato")
//    case .pazdziernik, .listopad, .grudzien:
//        print("jesien")
//}

//zadanie8_3
//enum Ocena: Double {
//    case dwa = 2.0
//    case trzy = 3.0
//    case trzyPoltora = 3.5
//    case cztery = 4.0
//    case czteryPoltora = 4.5
//    case piec = 5.0
//}
//
//typealias Student = (nazwisko: String, ocena1: Ocena, ocena2: Ocena, ocena3: Ocena)
//
//var students: [Student] = []
//
//for _ in 1...3 {
//    print("Podaj nazwisko studenta:")
//    let nazwisko = readLine() ?? ""
//
//    var ocena1: Ocena = .dwa
//    var ocena2: Ocena = .dwa
//    var ocena3: Ocena = .dwa
//
//    var validInput = false
//
//    repeat {
//        print("Podaj ocenę 1 (2, 3.0, 3.5, 4.0, 4.5, 5.0):")
//        if let input = readLine(), let ocenaValue = Double(input), let ocena = Ocena(rawValue: ocenaValue) {
//            ocena1 = ocena
//            validInput = true
//        } else {
//            print("Błędny format oceny. Spróbuj ponownie.")
//        }
//    } while !validInput
//
//    validInput = false
//
//    repeat {
//        print("Podaj ocenę 2 (2, 3.0, 3.5, 4.0, 4.5, 5.0):")
//        if let input = readLine(), let ocenaValue = Double(input), let ocena = Ocena(rawValue: ocenaValue) {
//            ocena2 = ocena
//            validInput = true
//        } else {
//            print("Błędny format oceny. Spróbuj ponownie.")
//        }
//    } while !validInput
//
//    validInput = false
//
//    repeat {
//        print("Podaj ocenę 3 (2, 3.0, 3.5, 4.0, 4.5, 5.0):")
//        if let input = readLine(), let ocenaValue = Double(input), let ocena = Ocena(rawValue: ocenaValue) {
//            ocena3 = ocena
//            validInput = true
//        } else {
//            print("Błędny format oceny. Spróbuj ponownie.")
//        }
//    } while !validInput
//
//    let student: Student = (nazwisko, ocena1, ocena2, ocena3)
//    students.append(student)
//}
//
//students.sort { ($0.ocena1.rawValue + $0.ocena2.rawValue + $0.ocena3.rawValue) / 3.0 > ($1.ocena1.rawValue + $1.ocena2.rawValue + $1.ocena3.rawValue) / 3.0 }
//
//print("\nDane studentów w kolejności malejącej według średniej ocen:")
//for student in students {
//    let average = (student.ocena1.rawValue + student.ocena2.rawValue + student.ocena3.rawValue) / 3.0
//    print("Nazwisko: \(student.nazwisko), Średnia ocen: \(average)")
//}

//zadanie3_7
//var znak = readLine() ?? "0"
//switch znak
//{
//case "a","b","c","d": print("jeden")
//case "z","x","c","v": print("drugi")
//default: print("inny")
//}


//zmiennoprzcinkow
var x = Double.random(in: 0...10)
print(x)
print(String(format:"%.4f",x))
switch x
{
case 0..<2:
    print("1")
case 2...10:
    print("2")
default:
    break
}