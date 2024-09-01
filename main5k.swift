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

//zadanie7
import Foundation

print("Podaj liczbę wierszy macierzy:")
if let rows = Int(readLine() ?? "0"), rows > 0 {
    print("Podaj liczbę kolumn macierzy:")
    if let columns = Int(readLine() ?? "0"), columns > 0 {
        var matrix: [[Double]] = []

        for _ in 0..<rows {
            var row: [Double] = []

            for _ in 0..<columns {
                let randomNumber = Double.random(in: -100.0...100.0)
                row.append(randomNumber)
            }

            matrix.append(row)
        }

        print("\nWygenerowana macierz:")
        for row in matrix {
            print(row)
        }

        var minValue = matrix[0][0]
        var minIndex = (0, 0)
        var maxValue = matrix[0][0]
        var maxIndex = (0, 0)

        for i in 0..<matrix.count {
            for j in 0..<matrix[i].count {
                if matrix[i][j] < minValue {
                    minValue = matrix[i][j]
                    minIndex = (i, j)
                }

                if matrix[i][j] > maxValue {
                    maxValue = matrix[i][j]
                    maxIndex = (i, j)
                }
            }
        }

        print("\nNajmniejsza liczba w macierzy: \(minValue), indeks: \(minIndex)")
        print("Największa liczba w macierzy: \(maxValue), indeks: \(maxIndex)")
    } else {
        print("Błędna liczba kolumn. Wprowadź liczbę większą niż 0.")
    }
} else {
    print("Błędna liczba wierszy. Wprowadź liczbę większą niż 0.")
}

//zadanie8
print("Podaj liczbę elementów tablicy:")
if let count = Int(readLine() ?? "0"), count > 0 {
    var array: [Int] = []

    print("Podaj elementy tablicy, oddzielając je spacjami:")
    if let input = readLine(), !input.isEmpty {
        let elements = input.components(separatedBy: " ").compactMap { Int($0) }

        if elements.count == count {
            array = elements

            var currentStartIndex = 0
            var currentLength = 1

            var longestStartIndex = 0
            var longestLength = 1

            for i in 1..<count {
                if array[i] > array[i - 1] {
                    currentLength += 1
                } else {
                    currentStartIndex = i
                    currentLength = 1
                }

                if currentLength > longestLength {
                    longestStartIndex = currentStartIndex
                    longestLength = currentLength
                }
            }

            if longestLength > 1 {
                print("Najdłuższy podciąg rosnący rozpoczyna się od indeksu \(longestStartIndex) i ma \(longestLength) elementów:")
                let longestSubsequence = Array(array[longestStartIndex...(longestStartIndex + longestLength - 1)])
                print(longestSubsequence)
            } else {
                print("Brak rosnącego podciągu o długości co najmniej 2.")
            }
        } else {
            print("Błędna liczba elementów tablicy. Wprowadź poprawną liczbę.")
        }
    } else {
        print("Błędne dane. Wprowadź poprawne elementy tablicy.")
    }
} else {
    print("Błędna liczba elementów tablicy. Wprowadź liczbę większą niż 0.")
}
