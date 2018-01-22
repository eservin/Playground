
import UIKit


enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init(velocidadInicial: Velocidades) {
        self = velocidadInicial
    }
}



class Auto {
    var velocidad : Velocidades
    init () {
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    func cambioDeVelocidad () -> (actual : Int, velocidadEnCadena : String) {
        var velocidadEnCadena: String
        switch velocidad {
        case .Apagado:
            velocidad = Velocidades.VelocidadBaja
            velocidadEnCadena = "Velocidad Baja"
        case .VelocidadBaja:
            velocidad = Velocidades.VelocidadMedia
            velocidadEnCadena = "Velocidad Media"
        case .VelocidadMedia:
            velocidad = Velocidades.VelocidadAlta
            velocidadEnCadena = "Velocidad Alta"
        case .VelocidadAlta:
            velocidad = Velocidades.VelocidadMedia
            velocidadEnCadena = "Velocidad Media"
        }
        return (velocidad.rawValue, velocidadEnCadena)
    }
}


var auto = Auto()
var velocidadActualEnCadena: (Int, String)
print(auto.velocidad.rawValue, auto.velocidad)

for n in 1...20 {
    velocidadActualEnCadena = auto.cambioDeVelocidad()
    print("\(velocidadActualEnCadena.0), \(velocidadActualEnCadena.1)")
}