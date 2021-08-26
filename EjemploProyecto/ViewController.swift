//
//  ViewController.swift
//  EjemploProyecto
//
//  Created by VOV Solutions  on 21/07/21.
//

import UIKit

class ViewController: UIViewController {

    var tipoAutomovil: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var automovil = Automovil()
        print("El automovil esta encendido \(automovil.encender())")
    }

    @IBAction func crearAutomovil(_ sender: Any) {
        tipoAutomovil = 0
        performSegue(withIdentifier: "segueSegundaPantalla", sender: self)
    }

    @IBAction func crearAutomovilMazda(_ sender: Any) {
        tipoAutomovil = 1
        performSegue(withIdentifier: "segueSegundaPantalla", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destino = segue.destination as? ViewControllerSegundaPantalla {
            destino.tipoAutomovil = self.tipoAutomovil
        }
    }
}

