//
//  GreenViewController.swift
//  EjemploProyecto
//
//  Created by VOV Solutions  on 10/08/21.
//

import UIKit

class GreenViewController: UIViewController {
    @IBOutlet weak var mySearchBar: UISearchBar!
    @IBOutlet weak var myLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        myLabel.isHidden = true
        mySearchBar.delegate = self
    }
}

extension GreenViewController: UISearchBarDelegate {
    public func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        mySearchBar.resignFirstResponder()
        myLabel.text = mySearchBar.text
        myLabel.isHidden = false
    }
}
