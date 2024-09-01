//
//  main.swift
//  Lab3_LO
//
//  Created by student on 19/10/2023.
//

import Foundation

//zadanie1

var ciag:String
print("Podaj ciag:")
ciag = readLine()!
var znak:String
print("Podaj znak:")
znak = readLine()!
var liczba:Int
print("Podaj liczbe:")
liczba = Int(readLine()!)!
if (ciag.hasPrefix(znak))
{
    print("Znak to poczatek ciagu")
}
else if (ciag.hasSuffix(znak))
{
    print("Znak to koniec ciagu")
}
else if (String(ciag[ciag.index(ciag.startIndex, offsetBy: liczba)]) == znak)
{
    print("Znak jest pod podanym index'em")
}
else
{
    print("Znak jest w inny miejscu")
}

//zadanie3
print("Podaj rok:")
guard let rok = Int(readLine()!)
else{
    fatalError("Nie podales prawidlowo roku")
}
if(rok % 4 == 0 && rok % 100 != 0)
{
    print("Rok \rok jest przestepny")
}
else 
{
    print("Rok \rok nie jest przestepny")
}
//zadanie2
var c1:String
var c2:String
print("Podaj ciag 1:")
c1 = readLine()!
print("Podaj ciag 2:")
c2 = readLine()!
if(c1 == c2)
{
    print("Podane ciagi sa indentyczne")
}
else
{
    print("Podane ciagi nie sa indentyczne")
}
print("Podaj prefix:")
var pr:String
pr = readLine()!
if(c1.hasPrefix(pr) || c2.hasPrefix(pr))
{
    print("Prefix wystepuje w ciagach")
}
else
{
    print("Prefix nie wystepuje w ciagach")
}
print("Podaj suffix:")
var su:String
su = readLine()!
if(c1.hasSuffix(su) || c2.hasSuffix(su))
{
    print("Suffix wystepuje w ciagach")
}
else
{
    print("Suffix nie wystepuje w ciagach")
}

//zadanie4
print("Podaj liczbe z zakrseu <2,3010>")
var licz4:Int
licz4 = Int(readLine()!)!
var wiek:Int
wiek = licz4 / 100
if(wiek == (licz4 - 1)/100)
{
    print("rok \(licz4) - wiek \(wiek + 1)")
}
else
{
    print("rok \(licz4) - wiek \(wiek)")
}

//zadanie5
print("Podaj srednia ze studiow:")
if let sredniaString = readLine(), let srednia = Double(sredniaString) {
    var stypendium: Double = 0.0

    if srednia >= 4.5 {
        stypendium = 1500.0
    } else if srednia >= 4.0 {
        stypendium = 1000.0
    } else if srednia >= 3.5 {
        stypendium = 500.0
    } else {
        print("Nie przysluguje stypendium")
    }

    if stypendium > 0.0 {
        print("Przysluguje stypendium w wysokosci \(stypendium) PLN.")
    }
} else {
    print("Bledne dane. Wprowadz poprawna srednia ze studiow.")
}


//zadanie3_6
print("Podaj pierwsza liczbe calkowita:")
if let liczba1 = Int(readLine() ?? "0") {
    print("Podaj druga liczbe calkowita:")
    if let liczba2 = Int(readLine() ?? "0") {
        print("Wybierz operacje:")
        print("1-dodawanie, 2-odejmowanie, 3-mnozenie, 4-dzielenie")

        if let wyborString = readLine(), let wybor = Int(wyborString) {
            var wynik: Int = 0

            switch wybor {
            case 1:
                wynik = liczba1 + liczba2
            case 2:
                wynik = liczba1 - liczba2
            case 3:
                wynik = liczba1 * liczba2
            case 4:
                if liczba2 != 0 {
                    wynik = liczba1 / liczba2
                } else {
                    print("Blad: Dzielenie przez 0.")
                    exit(0)
                }
            default:
                print("Blad: Nieprawidlowy wybor operacji.")
                exit(0)
            }

            print("Wynik operacji: \(wynik)")
        } else {
            print("Blad: Nieprawidlowy wybor operacji.")
        }
    } else {
        print("Blad: Wprowadz poprawna druga liczbe calkowita.")
    }
} else {
    print("Blad: Wprowadz poprawna pierwsza liczbe calkowita.")
}




//zadanie3_7
//var znak = readLine() ?? "0"
//switch znak
//{
//case "a","b","c","d": print("jeden")
//case "z","x","c","v": print("drugi")
//default: print("inny")
//}
