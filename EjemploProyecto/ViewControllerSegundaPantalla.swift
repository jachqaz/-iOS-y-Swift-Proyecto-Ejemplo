//
//  ViewControllerSegundaPantalla.swift
//  EjemploProyecto
//
//  Created by VOV Solutions  on 25/08/21.
//

import UIKit

class ViewControllerSegundaPantalla: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label: UILabel!

    public var tipoAutomovil: Int?
    var automovilNormal: Automovil?
    var autoElectrico: AutomovilElectrico?
    var estadoAutomovil = false

    override func viewDidLoad() {
        super.viewDidLoad()
        switch tipoAutomovil {
        case 0:
            automovilNormal = Automovil()
            label.text = "Se creo el auto correctamente"
            image.image = UIImage(named: "automovil")
            print("Se creo el auto electrico correctamente")
        case 1:
            autoElectrico = AutomovilElectrico()
            autoElectrico!.color = "Azul"
            autoElectrico!.precio = 8000
            label.text = "Se creo el auto electrico correctamente"
            image.image = UIImage(named: "autoelectrico")
            print("Porcentake \(autoElectrico!.porcentajeBateria)")
            print("Se creo el auto electrico correctamente")
        default:
            print("Error")
        }
    }

    @IBAction func mostrarInformacion(_ sender: Any) {
        switch tipoAutomovil {
        case 0:
            label.text = """
                         El automovil tiene 
                         \(automovilNormal!.numeroLlantas) llantas,
                         es de color \(automovilNormal!.color)
                         y su precio es de \(automovilNormal!.precio) USD
                         """
        case 1:
            label.text = """
                         El automovil tiene 
                         \(autoElectrico!.numeroLlantas) llantas, \
                         es de color \(autoElectrico!.color)\
                          y su precio es de \(autoElectrico!.precio) USD\
                          y su carga esta al \(autoElectrico!.porcentajeBateria) de bateria
                         """
        default:
            print("Error")
        }
    }

    @IBAction func encender(_ sender: Any) {
        switch tipoAutomovil {
        case 0:
            if (!estadoAutomovil) {
                estadoAutomovil = automovilNormal!.encender()
                label.text = "El automovil encendio correctamente"
            } else {
                label.text = "El automovil ya esta encendido "
            }
        case 1:
            if (!estadoAutomovil) {
                estadoAutomovil = autoElectrico!.encender()
                label.text = "El automovil encendio correctamente"
                autoElectrico!.porcentajeBateria = 75
            } else {
                label.text = "El automovil ya esta encendido "
            }
        default:
            print("Error")
        }
    }

    @IBAction func apagar(_ sender: Any) {
        switch tipoAutomovil {
        case 0:
            if (!estadoAutomovil) {
                estadoAutomovil = automovilNormal!.apagar()
                label.text = "El automovil apago correctamente"
            } else {
                label.text = "El automovil ya esta apagado "
            }
        case 1:
            if (!estadoAutomovil) {
                estadoAutomovil = autoElectrico!.apagar()
                label.text = "El automovil apago correctamente"
            } else {
                label.text = "El automovil ya esta apagado "
            }
        default:
            print("Error")
        }
    }

    @IBAction func acelerar(_ sender: Any) {
        switch tipoAutomovil {
        case 0:
            if (estadoAutomovil) {
                label.text = automovilNormal!.acelerar()
            } else {
                label.text = "El automovil tiene que esar encendido para acelerar"
            }
        case 1:
            if (estadoAutomovil) {
                label.text = autoElectrico!.acelerar()
                autoElectrico!.porcentajeBateria = autoElectrico!.porcentajeBateria - 10
            } else {
                label.text = "El automovil tiene que esar encendido para acelerar"
            }
        default:
            print("Error")
        }
    }
}
