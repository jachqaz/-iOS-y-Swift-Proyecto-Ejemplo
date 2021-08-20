//
//  ViewController.swift
//  EjemploProyecto
//
//  Created by VOV Solutions  on 21/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    private let myCountries = ["España", "Mexico", "Peru", "Colombia", "Argentina", "EEUU"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView()
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCountries.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "mycell")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
            cell?.backgroundColor = .gray
            cell?.textLabel?.font = UIFont.systemFont(ofSize: 20)
            cell?.accessoryType = .disclosureIndicator
        }
        cell!.textLabel?.text = myCountries[indexPath.row]
        return cell!
    }

//    public func numberOfSections(in tableView: UITableView) -> Int {
//        3
//    }
}

extension ViewController: UITableViewDelegate {
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(myCountries[indexPath.row])
    }
}