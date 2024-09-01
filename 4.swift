//
//  main.swift
//  La4_LO
//
//  Created by student on 26/10/2023.
//

import Foundation

// var zmi:Int
// zmi = Int(readLine()!)!
// var liczba:Int
// liczba = Int(readLine()!)!
// var znie:Int
// znie = Int(readLine()!)!

//zadanie 1
// var granica:Int
// granica = Int(readLine()!)!
// var a:Int
// a = 1
// var b:Int
// b = 1
// var c:Int
// while(a < granica)
// {
//     print(a)
//     c = a
//     a = a + b
//     b = c
// }

//zadanie 2
var liczba:Int
liczba = Int(readLine()!)!
for i in 2...(liczba-1)
{
    //print(liczba%i)
    if(liczba%i == 0)
    {
        print("Liczba \(liczba) nie jest liczba pierwsza")
        liczba = -1
        break
    }
}
if(liczba != -1)
{
    print("Liczba \(liczba) jest liczba pierwsza")
}

//zadanie 3
// var liczba : Int
//  liczba = -1
//  print("Podaj liczbe:")
//  while(liczba < 100)
//  {
//      liczba = Int(readLine()!) ?? 0
//      if(liczba < 100)
//      {
//          print("Liczba <100, podaj ponownie:")
//    }
// }
// var cyfry : String
// cyfry = String(liczba)
// var iloraz : Int
// iloraz = 1
// for i in cyfry
// {
//     //print(Int(String(i))!)
//     iloraz = iloraz * Int(String(i))!
// }
// print("Srednia geometryczna cyfr liczby \(liczba) wynosi \(pow(Double(iloraz),1.0/Double(cyfry.count)))")

//zadanie 4

//  var ciag : String
//  ciag = readLine()!
//  var test : Int
//  test = -1
//  for i in 0...(ciag.count-1)
//  {
//  //print(i)
//  //print(ciag[ciag.index(ciag.endIndex, offsetBy: -i-1)])
//  //print(ciag[ciag.index(ciag.endIndex, offsetBy: -i-1)])
//  if(ciag[ciag.index(ciag.startIndex, offsetBy:i)] != ciag[ciag.index(ciag.endIndex, offsetBy: -i-1)])
//  {
//  print("Ciag nie jest palindromem")
//  test = 0
//  break
//  }
//  }
//  if(test == -1)
//  {
//  print("Ciag jest palindromem")
//  }
 
//zadanie 5
// var ciag : String
// var test : Int
// test = -1
// print("Podaj liczby ('x' aby zakonczyc)")
// while(test == -1)
// {
//     ciag = readLine()!
//     if liczba = Int(ciag)
//     {
        
//     }
// }

