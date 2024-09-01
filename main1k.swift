//
//  main.swift
//  Lab1_LO
//
//  Created by student on 05/10/2023.
//

import Foundation

//let const = 20.5
//var name: String
//name = "Lab 1"
//
//var a = 3
//var b = 9
//var c:Double = Double(a)/Double(b)
//print("podana nazwa: \(name)")
//print(String(format: "Wynik to %.2lf",c))
//
//var aa = Int.random(in: 0..<10)
//
//print(aa)
//print("podaj test:")
//var bb:Int
//bb = Int(readLine()!) ?? 0
//print(bb)

//zadanie 1
var a:Int
a = Int.random(in: 1..<20)
print("a = \(a)")

var b:Int
b = Int.random(in: 1..<20)
print("a = \(b)")

var c:Int
c = Int.random(in: 1..<20)
print("a = \(c)")

print("suma = \(a+b+c)")
var iloczyn = a*b*c
var pierwistek = pow(Double(iloczyn),1.0/3.0)
print(String(format: "Srednia = %.3lf",pierwistek))

//zadanie 2
let rok_b = 2023
print("Podaj rok urodzenia:")
var rok_u:Int
rok_u = Int(readLine()!)!
print("Masz \(rok_b - rok_u) lat")

//zadanie 3
let pi = 3.14
print("Podaj promien:")
var promien:Double
promien = Double(readLine()!)!
var pole = pi*promien*promien
var obwod = 2*pi*promien
print(String(format: "Obwod = %.2lf Pole = %.2lf",obwod,pole))
