//
//  ViewController.swift
//  CSO03IMC
//
//  Created by caua on 03/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tfPeso: UITextField!
    @IBOutlet weak var tfAltura: UITextField!
    @IBOutlet weak var lbResultado: UILabel!
    @IBOutlet weak var ivResultado: UIImageView!
    @IBOutlet weak var viResultado: UIView!
    
    var imc: Double = 0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    
    
    
    
    
    @IBAction func calcular(_ sender: Any) {
        
        if let weight = Double(tfPeso.text!)  , let height = Double(tfAltura.text!) {
            imc = weight / (height*height)
            showResults()
        }
        
    }
    
    func  showResults() {
        var resultado: String = ""
        var image: String = ""
        switch imc {
            case 0..<16:
                resultado = "Magreza"
                image = "magreza"
            case 16..<18.5:
                resultado = "Abaixo do peso"
                image = "abaixo"
            case 18.5..<25:
                resultado = "Peso ideal"
                image = "ideal"
            case 25..<30:
                resultado = "Sobrepeso"
                image = "sobre"
            default:
                resultado = "Obesidade"
                image = "obesidade"
        }
        lbResultado.text = resultado
        ivResultado.image = UIImage(named: image)
        viResultado.isHidden = false
        view.endEditing(true)
    }

    
}

