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
        print("Estoy en VC1 y se activo -> \(#function)")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Estoy en VC1 y se activo -> \(#function)")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Estoy en VC1 y se activo -> \(#function)")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Estoy en VC1 y se activo -> \(#function)")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Estoy en VC1 y se activo -> \(#function)")
    }
}

