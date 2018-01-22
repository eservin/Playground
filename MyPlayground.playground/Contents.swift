//: Playground - noun: a place where people can play

import UIKit

enum Postre : Int {
    
    case    Pudin = 100, Gelatina = 200, Pastel = 300, Trufa = 400
    
    init() {
        self = Postre.Pudin
    }
    
    func restarCalorias() -> Int {
        return Postre.Trufa.rawValue - self.rawValue
    }
    
}

var postrePudin = Postre.Pastel

postrePudin.restarCalorias()

postrePudin.rawValue


var postrePudin2 = Postre ()

postrePudin2.restarCalorias()

/*
struct Automovil {
    var color: String
    var llantas: Int
    
    init(color: String) {
        self.color = color
        self.llantas = 4
    }
    
}


var sedan = Automovil (color: "rojo")

print("\(sedan.llantas)")
*/

class Automovil {
    var color: String
    var llantas: Int = 4
    var maximoDeLlantas: Int = 4
    
    init(color: String) {
        self.color = color
    }
    
    func quitarLlanta(llantas: Int) -> Bool {
        if self.llantas - llantas >= 0{
            self.llantas -= llantas
            return true
        } else {
            return false
        }
    }
    
    func agregarLlanta(llantas: Int) -> Bool {
        if self.llantas + llantas <= self.maximoDeLlantas {
            self.llantas += llantas
            return true
        } else {
            return false
        }
    }
}


var carro = Automovil (color: "verde")

carro.llantas

var exito = carro.quitarLlanta(llantas: 2)

carro.llantas

exito = carro.quitarLlanta(llantas: 4)

carro.llantas

exito = carro.agregarLlanta(llantas: 4)

carro.llantas

exito = carro.agregarLlanta(llantas: 2)

carro.llantas

enum Velocidades {
    case Primera, Segunda, Tercera, Cuarta, Quinta
    init() {
        self = .Primera
    }
}

class AutomovilHibrido : Automovil {
    var velocidades = Velocidades ()
}

var prius = AutomovilHibrido (color: "amarillo")

print(prius.velocidades)

class Trailer : Automovil {
    let ejes : Int
    var cajas : Int?
    var llantasPorEje : Int {
        get {
            return llantas / ejes
        }
        set {
            llantas = newValue * ejes
            maximoDeLlantas = llantas
        }
    }
    init(color: String, ejes: Int){
        self.ejes = ejes
        super.init(color: color)
        self.maximoDeLlantas = 8
    }
    convenience init(){
        self.init(color: "rojo", ejes: 6)
    }
    
}

var trailerRojo : Trailer = Trailer(color: "rojo", ejes: 4)

trailerRojo.llantas

exito = trailerRojo.agregarLlanta(llantas: 4)

trailerRojo.llantas
trailerRojo.ejes

var trailerRojoNuevo = Trailer()

trailerRojoNuevo.ejes
trailerRojo.llantasPorEje
trailerRojoNuevo.llantasPorEje

trailerRojoNuevo.ejes
trailerRojoNuevo.llantas
trailerRojoNuevo.maximoDeLlantas
trailerRojoNuevo.llantasPorEje = 4
trailerRojoNuevo.llantas
trailerRojoNuevo.maximoDeLlantas

exito = trailerRojoNuevo.quitarLlanta(llantas: 10)
trailerRojoNuevo.llantas
trailerRojoNuevo.llantasPorEje
trailerRojoNuevo.ejes

trailerRojo.cajas = 1

if  let temporalCajas = trailerRojo.cajas {
    if temporalCajas > 1 {
        print("el trailer tiene \(trailerRojo.cajas!) cajas")
    } else {
        print("el trailer tiene \(trailerRojo.cajas!) caja")
    }
    
}
