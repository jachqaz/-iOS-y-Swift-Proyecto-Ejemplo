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

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        super.prepare(for: segue, sender: sender)
        if (segue.identifier == "VCNegro") {
            if let destino = segue.destination as? ViewControllerNegro {
                destino.titulo = "Negro"
            }
        }
        if (segue.identifier == "VCRosa") {
            if let destino = segue.destination as? ViewControllerRosa {
                destino.titulo = "Rosa"
            }
        }
        if (segue.identifier == "VCAzul") {
            if let destino = segue.destination as? ViewControllerAzul {
                destino.titulo = "Azul"
            }
        }

    }
}

