//
//  ViewControllerSegundaPantalla.swift
//  EjemploProyecto
//
//  Created by VOV Solutions  on 25/08/21.
//

import UIKit

class ViewControllerSegundaPantalla: UIViewController {


    public var tipoAutomovil: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        switch tipoAutomovil {
        case 0:
            print("Voy a crear un objeto automovil sencillo")
        case 1:
            print("Voy a crear un objeto automovil Mazda")
        default:
            print("Error")
        }
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func mostrarInformacion(_ sender: Any) {
    }

    @IBAction func encender(_ sender: Any) {
    }

    @IBAction func apagar(_ sender: Any) {
    }

    @IBAction func acelerar(_ sender: Any) {
    }
}
