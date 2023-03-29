//
//  ConvertirTemperaturaRepositorioLocal.swift
//  Ejercicio4Parte2
//
//  Created by Harold Padilla on 21/03/23.
//

import Foundation

class ConvertirTemperaturaRepositorioLocal: ConvertirTemperaturaRepositorio{
    func convertirCelsiusAFahrenheit(_ celsius: Double) -> Double {
        let fahrenheit = (celsius * 9/5) + 32
        return fahrenheit
    }
}
