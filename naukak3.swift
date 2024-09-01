// Funkcja znajdująca NWD dwóch liczb
func findGCD(_ a: Int, _ b: Int) -> Int {
    var x = a
    var y = b
    while y != 0 {
        let temp = y
        y = x % y
        x = temp
    }
    return abs(x) // Wynik zawsze jest nieujemny
}

// Funkcja znajdująca NWW dwóch liczb
func findLCM(_ a: Int, _ b: Int) -> Int {
    return abs(a * b) / findGCD(a, b)
}

// Przykładowe użycie
let number1 = 24
let number2 = 36

let gcd = findGCD(number1, number2)
let lcm = findLCM(number1, number2)

print("NWD \(number1) i \(number2): \(gcd)")
print("NWW \(number1) i \(number2): \(lcm)")
