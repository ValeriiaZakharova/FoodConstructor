import UIKit

var str = "Hello, playground"

let a = "Serega"
let b = "Misha"
let c = "Asd"
let d = "ZXC"
let e = "GD"
let f = "WER"

let group = [a,b,c,d,e,f]

//var result = group.joined(separator: "\n")

let label = UILabel()

var result = ""
for name in group {
    
    result += name + "\n"
    
}

//label.text = a + "\n" + b + "\n" + c

//label.text = result

print(result)
