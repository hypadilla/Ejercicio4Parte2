//
//  ConvertirTemperaturaServicio.swift
//  Ejercicio4Parte2
//
//  Created by Harold Padilla on 21/03/23.
//

import Foundation

class ConvertirTemperaturaDominio{
    
    private struct Constante {
        static let campoVacio = "Este campo requiere un valor"
        static let noPudoConnvertir = "No se pudo convertir la cadena a un número"
        static let formatoDouble = "%.2f Fahrenheit"
    }
    
    var convertirTemperaturaRepositorio: ConvertirTemperaturaRepositorio
       
       init(convertirTemperaturaRepositorio: ConvertirTemperaturaRepositorio) {
           self.convertirTemperaturaRepositorio = convertirTemperaturaRepositorio
       }
    
    func convertirCelsiusAFahrenheit(_ celsius: String) -> String {
        if celsius == String(){
            return Constante.campoVacio
        }
        
        if let valor = Double(celsius) {
            let numero = convertirTemperaturaRepositorio.convertirCelsiusAFahrenheit(valor)
            return String(format: Constante.formatoDouble, numero)
        } else {
            return Constante.noPudoConnvertir
        }
    }
}
