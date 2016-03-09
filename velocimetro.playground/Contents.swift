//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init() {
        self = .Apagado
    }
    
    init(velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
}

class Auto {

    //velocidad
    var velocidad : Velocidades
    
    init (){
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad( ) -> (actual : Int, velocidadEnCadena : String){
        var velocidadEnCadena = ""
        
        switch velocidad {
        case .Apagado:
            self.velocidad = .VelocidadBaja
            velocidadEnCadena = "Velocidad baja"
            break
        case .VelocidadBaja:
            self.velocidad = .VelocidadMedia
            velocidadEnCadena = "Velocidad media"
            break
        case .VelocidadMedia:
            self.velocidad = .VelocidadAlta
            velocidadEnCadena = "Velocidad alta"
        case .VelocidadAlta:
            self.velocidad = .VelocidadMedia
            velocidadEnCadena = "Velocidad media"
        }
    
        return (self.velocidad.rawValue ,velocidadEnCadena)
    }

}

var coche = Auto()
for var i = 1; i<=20; i++ {
    if i == 1 {
        //coche apagado
        print("\(i). \(coche.velocidad.rawValue), \(coche.velocidad)")
    } else {
        var ret = coche.cambioDeVelocidad()
        print("\(i). \(ret.actual), \(ret.velocidadEnCadena)")
    }
}


