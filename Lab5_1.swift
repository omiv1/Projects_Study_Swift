import Foundation

//zadanie1
var tab: [Int] = Array(repeating: 1, count: 12)
for i in tab 
{
    print(i)
}
var tab2: [Double] = Array(repeating: 1, count: 12)
for i in tab2
{
    print(i)
}

//zadanie2
// srand(UInt32(time(nil)))
// var liczba: Int
// print("Podaj liczbe:")
// liczba = Int(readLine()!)!
// var tab: [Int] = []
// for _ in 1...10
// {
//     tab.append(Int(rand()%99 + 1))
// }
// tab.insert(liczba, at: 0)
// tab.insert(liczba, at: Int(rand()%10))
// for i in tab
// {
//     print(i)
// }

//zadanie3
// var test: Int
// test = 0
// var rozmiar: Int = 0
// while(test == 0)
// {
//     print("Podaj rozmier tablicy:")
//     rozmiar = Int(readLine()!) ?? -1
//     if(rozmiar < 1)
//     {
//         print("Rozmier tablicy musi byc dodatni!")
//     }   
//     else
//     {
//         test = 1
//     }
// }
// test = 0
// var tab: [Int] = []
// var pom: String
// var ele: Int = 0
// for i in 0...(rozmiar-1)
// {
//     //while(test == 0)
    
//     print("Podaj \(i) element tablicy:")
//     ele = Int(readLine()!)!
//     tab.append(ele)
// }
// print("Podaj liczbe do sprawdzenia:")
// var spr: Int = Int(readLine()!)!
// if(spr == tab[0])
// {
//     print("Podany liczba jest na poczatku")
// }
// else if (spr == tab[rozmiar-1]) 
// {
//     print("Pordane liczba jest na koncu")    
// }
// else 
// {
//     print("Podana liczba nie jest ani na poczatku anie na koncu")
// }

//zadanie 4
// srand(UInt32(time(nil)))
// var tab: [Int] = []
// var rozmiar: Int = Int(rand()%97+3)
// for _ in 0...rozmiar
// {
//     tab.append(Int(rand()%97+3))
// }
// var srednia_ary: Double = 0
// var srednia_geo: Double = 1
// var srednia_har: Double = 0
// for i in tab
// {
//     srednia_ary = srednia_ary + Double(i)
//     srednia_geo = srednia_geo * Double(i)
//     srednia_har = srednia_har + (1.0/Double(i))
// } 
// srednia_ary = srednia_ary / Double(rozmiar)
// srednia_geo = pow(srednia_geo,1.0/Double(rozmiar))
// srednia_har = Double(rozmiar)/srednia_har
// print(srednia_ary)
// print(srednia_geo)
// print(srednia_har)

//zadanie5


//zadanie6
// var tab: [[Int]] = [[10, 20, 30], [40, 50, 60]]
// //print(tab.count)
// tab.append([70,80,90])
// tab[1].append(65)
// for i in 0...(tab.count-1)
// {
//     for j in 0...(tab[i].count-1)
//     {
//         print("\(tab[i][j])", terminator:" ")
//     }
//     print()
// }