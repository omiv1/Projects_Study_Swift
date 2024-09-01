//
//  main.swift
//  lab_LO
//
//  Created by student on 12/10/2023.
//

import Foundation

//zadanie 1
print("Podaj bok szescianu")
var bok:Int
bok = Int(readLine()!)!
print("Pole szescianu wynosi: \(bok*bok*6)  Objetosc wynosi: \(bok*bok*bok) \n")

//zadanie 2
print("Podaj wymiary pokoju")
var a:Int
var b:Int
a = Int(readLine()!)!
b = Int(readLine()!)!
print("Podaj wymiary korytarza")
var x:Int
var y:Int
x = Int(readLine()!)!
y = Int(readLine()!)!
print("Podaj szerokosc dzwi")
var s:Int
s = Int(readLine()!)!
print("Podaj cene listwy za metr")
var c = Int(readLine()!)!

print("Liczba wymagana metrow listwy: \((a*b)+(x*y)-(3*s))")
print("Koszt calej dlugosci listwy: \(((a*b)+(x*y)-(3*s))*c) \n")

//zadanie 3
var a1 = Int.random(in: 1..<10)
var b1 = Int.random(in: 1..<10)
var c1 = Int.random(in: 1..<10)
print("a = \(a1) b = \(b1) c = \(c1)")
print(String(format:"Srednia wynosi: %.2lf \n",(Double(a1+b1+c1)/Double(3))))

//zadanie 4
var o1 = Int.random(in: 1..<7)
var o2 = Int.random(in: 1..<7)
var o3 = Int.random(in: 1..<7)

var w1 = Int.random(in: 1..<4)
var w2 = Int.random(in: 1..<4)
var w3 = Int.random(in: 1..<4)

print("Ocane \(o1)  Waga \(w1)")
print("Ocane \(o2)  Waga \(w2)")
print("Ocane \(o3)  Waga \(w3)")
print(String(format:"Srednia wazona tych ocen wynosi: %.2lf \n",(Double((o1*w1)+(o2*w2)+(o3*w3))/Double(w1+w2+w3))))

//zadanie 5
let str1 = "tekst jednoliniowy"
let str2 = """
tekst
wieloliniowy
"""
print(str1)
print("\(str2) \n")

//zadanie 6
let str3 = """
    Nauka kodowania to nie tylko nauka języka technologii
    To odkrywanie nowych sposobów myślenia

    i urzeczywistnianie rozmaitych kncepcji.
"""
let str4 = "\n\tNauka kodowania to nie tylko nauka języka technologii.\n\n\tTo odkrywanie nowych sposobów myślenia\n\n\ti urzeczywistnianie rozmaitych koncepcji.\n"
print(str4)

//zadanie 7
print("Podaj imie")
var imie = readLine()!
print("Podaj drugie imie")
var drugie = readLine()!
print("Podaj nazwisko")
var nazwisko = readLine()!
print("Podaj rok urodzenia")
var rok = readLine()!
var str5: String
str5 = imie + " " +  drugie + " " + nazwisko + " " + rok
print(str5)
str5.removeSubrange(str5.components(separatedBy: " ".first))


