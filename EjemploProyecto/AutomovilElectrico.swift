//
//  AutomovilElectrico.swift
//  EjemploProyecto
//
//  Created by VOV Solutions  on 25/08/21.
//

import Foundation

class AutomovilElectrico: Automovil {
    var porcentajeBateria = 100

    func cargarBateria() -> String {
        porcentajeBateria = 100
        return "carga exitosa"
    }
}