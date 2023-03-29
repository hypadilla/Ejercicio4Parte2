//
//  File.swift
//  Ejercicio4Parte2
//
//  Created by Harold Padilla on 21/03/23.
//

import UIKit

class ConvertirTemperaturaViewController: UIViewController {
    
    var convertirTemperaturaDominio: ConvertirTemperaturaDominio!
    var convertirTemperaturaRepositorio: ConvertirTemperaturaRepositorio!
    
    @IBOutlet weak var resultadoLabel: UILabel!
    @IBOutlet weak var celsiusTextView: UITextField!
    
    override func viewDidLoad() {
        inicializador()
    }
    
    private func inicializador() {
        convertirTemperaturaRepositorio = ConvertirTemperaturaRepositorioLocal()
        convertirTemperaturaDominio = ConvertirTemperaturaDominio(convertirTemperaturaRepositorio: convertirTemperaturaRepositorio)
    }
    
    @IBAction func convertirButtonPressed(_ sender: Any) {
        let temperaturaCelsius = celsiusTextView.text ?? String()
        let resultado = convertirTemperaturaDominio.convertirCelsiusAFahrenheit(temperaturaCelsius)
       
        resultadoLabel.text = resultado
        resultadoLabel.isHidden = false
    }
}
