//
//  ViewController.swift
//  EjemploProyecto
//
//  Created by VOV Solutions  on 21/07/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func botonNegro(_ sender: Any) {
        print("Soy el boton negro")
        performSegue(withIdentifier: "VCNegro", sender: self)
    }

    @IBAction func botonRosa(_ sender: Any) {
        print("Soy el boton rosa")
        performSegue(withIdentifier: "VCRosa", sender: self)
    }

    @IBAction func botonAzul(_ sender: Any) {
        print("Soy el boton azul")
        performSegue(withIdentifier: "VCAzul", sender: self)
    }
}

