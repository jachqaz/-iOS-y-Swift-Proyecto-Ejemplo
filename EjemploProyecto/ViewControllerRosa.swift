//
//  ViewControllerRosa.swift
//  EjemploProyecto
//
//  Created by VOV Solutions  on 16/08/21.
//

import UIKit

class ViewControllerRosa: UIViewController {

    public var titulo: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        if let tituloFinal = titulo {
            self.title = titulo
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

}
