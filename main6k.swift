//
//  main.swift
//  Lab6_LO
//
//  Created by student on 16/11/2023.
//

import Foundation

//zadanie1
/*
let osoba1 = (imie: "imie1",nazwisko: "nazwisko1",rok: 2002)
let osoba2: (imie: String, nazwisko: String, rok: Int) = ("imie2","nazwisko2",2999)
print(osoba1)
print(osoba2)
if(osoba1.rok<osoba1.rok)
{
    print("Starsza jest osoba1")
}
else 
{
    if(osoba1.rok>osoba2.rok)
    {
        print("Starsza jest osoba2")
    }
    else
    {
        print("Osoby sa w tym samym wieku")
    }
}
*/

//zadanie2
/*
enum oceny: Double
{
    case ocena2 = 2.0
    case ocena3 = 3.0
    case ocena35 = 3.5
    case ocena4 = 4.0
    case ocena45 = 4.5
    case ocena5 = 5.0
}
var studnet: [(nazwisko: String, ocena1: oceny,ocena2: oceny,ocena3: oceny)] = []
studnet.append((nazwisko: "nazwisko1",ocena1: oceny.ocena3,ocena2: oceny.ocena4,ocena3: oceny.ocena5))
studnet.append(("nazwisko2",oceny.ocena2,oceny.ocena35,oceny.ocena3))
studnet += [("nazwisko3",oceny.ocena45,oceny.ocena4,oceny.ocena5)]


for i in studnet
{
    var srednia: Double = 0
    srednia = Double(i.ocena1.rawValue + i.ocena2.rawValue + i.ocena3.rawValue)
    //print(i.ocena1.rawValue)
    srednia /= 3
    print(srednia)
    
}
*/

//zadanie3
var mieszkania: [(lokazlizacja: String, powierzchnia: Double, cena_za_metr: Double)] = []
var liczba_mieszkan: Int
print("Podaj liczba mieszkan:")
liczba_mieszkan = Int(readLine()!) ?? -1
for _ in 0..<liczba_mieszkan
{
    print()
    mieszkania.append((readLine() ?? "?", Double(readLine()!) ?? -1, Double(readLine()!) ?? -1))
}
for i in mieszkania
{
    print(i)
}
var najwieksze = mieszkania.max(by: {$0.cena_za_metr < $1.cena_za_metr})
print(najwieksze.lokazlizacja)

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

//zadanie 5
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

//ostatnie
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