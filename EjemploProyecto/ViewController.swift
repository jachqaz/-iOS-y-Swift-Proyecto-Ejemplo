//
//  ViewController.swift
//  EjemploProyecto
//
//  Created by VOV Solutions  on 21/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etiqueta: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        etiqueta.text = "Ya Cambie"
        etiqueta.text = "Ya Cambie por segunda vez"
        etiqueta.text = "Ya Cambie  por tercera vez"
        etiqueta.text = "Ya Cambie por cuarta vez"
    }

    @IBAction func cambiarTexto(_ sender: Any) {
        etiqueta.text = "Hola Mundo Cruel"
    }

}

