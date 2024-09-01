let text = "Hello, Swift!"
if let index = text.firstIndex(of: "S") {
    print("Index of 'S': \(index)")
} else {
    print("Element not found")
}
Tablica liczb całkowitych:

let numbers = [1, 2, 3, 4, 5]
if let index = numbers.firstIndex(of: 3) {
    print("Index of 3: \(index)")
} else {
    print("Element not found")
}
Tablica niemodyfikowalna:


let fruits = ["Apple", "Banana", "Orange"]
if let index = fruits.firstIndex(of: "Banana") {
    print("Index of 'Banana': \(index)")
} else {
    print("Element not found")
}
Zastosowanie zamknięcia (closure):


let numbers = [10, 20, 30, 40, 50]
let index = numbers.firstIndex { $0 > 25 }
print("First index where value is greater than 25: \(index ?? -1)")


var text = "Hello, Swift!"
let range = text.index(text.startIndex, offsetBy: 7)..<text.endIndex
text.removeSubrange(range)
print(text)
Wynik: "Hello, "


var phrase = "Swift is awesome!"
let substring = "awesome"
phrase = phrase.replacingOccurrences(of: substring, with: "")
print(phrase)
Wynik: "Swift is !"


var word = "Swift"
word.removeFirst()
print(word)
Wynik: "wift"


var greeting = "Hello!"
greeting.removeLast()
print(greeting)
Wynik: "Hello"


var message = "Good morning!"
let indexToRemove = message.index(message.startIndex, offsetBy: 5)
message.remove(at: indexToRemove)
print(message)