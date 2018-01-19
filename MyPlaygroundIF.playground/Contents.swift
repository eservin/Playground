//: Playground - noun: a place where people can play

import UIKit

/*var meses = 1...12

for mes in meses {
   // print(mes)
}

for mes in meses {
    
    
   /* if mes == 1 {
        print("enero")
    }else if mes == 2{
        print("febrero")
    }else{
        print("otro")
    }*/
    
    switch mes {
    case 1,2,3:
        print("mes templado")
    case 4...7:
        print("mes caluroso")
    default:
        print("no hay clima")
    } 
}

if true && false {
    print("true")
} else if true || false {
    print("false")
}*/

let a = 50 % 5

for n in 0...100 {
    
    if n >= 30 && n <= 40 {
        print("\(n)Viva el Swift!!!")
    } else
    if n % 5 == 0 {
        print("\(n)Bingo!!!")
    } else
    if n % 2 == 0 {
        print("\(n)Par")
    } else {
        print("\(n)Impar")
    }
    
    
    
}

