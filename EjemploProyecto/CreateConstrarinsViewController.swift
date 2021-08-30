//
//  CreateConstrarinsViewController.swift
//  EjemploProyecto
//
//  Created by VOV Solutions  on 29/08/21.
//

import UIKit

class CreateConstrarinsViewController: UIViewController {

    @IBOutlet weak var yellowView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        yellowView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        yellowView.widthAnchor.constraint(equalToConstant: 200).isActive = true

        yellowView.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraint(NSLayoutConstraint(item: yellowView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1000, constant: 16))
        yellowView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true

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
