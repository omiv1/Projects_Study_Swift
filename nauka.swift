//
// Created by lukas on 18.01.2024.
//

import Foundation

enum jezyki : Int
{
    case polski
    case angielski
    case czeski
}
class czlowiek
{
    let imie : String
    let wiek : Int
    let jezyk : jezyki

    init(imie : String, wiek : Int, jezyk : jezyki)
    {
        self.imie = imie
        self.wiek = wiek
        self.jezyk = jezyk
    }

    func show()
    {
        print("\(imie) \(wiek) \(jezyk)")
    }
}
func nauka()
{
    let c = czlowiek(imie: "jan", wiek: 12, jezyk: jezyki.polski)
    c.show()
    var cl : [czlowiek] = []

    let test = 1
    while test == 1
    {
        let im = readLine() ?? "x"

        if let wi = Int(readLine() ?? "0")
        {
            let te = 1
            while te == 1
            {
                if let opc = Int(readLine() ?? "0"), opc > 0, opc < 4
                {
                    let c2 = czlowiek(imie: im, wiek: wi, jezyk: jezyki(rawValue: (opc-1))!)
                    c2.show()
                }
                else
                {
                    print("zly")
                }
            }
        }
        else
        {
            print("nie")
        }
    }
}