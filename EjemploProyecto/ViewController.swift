//
//  ViewController.swift
//  EjemploProyecto
//
//  Created by VOV Solutions  on 21/07/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    private let myCountries = ["España", "Mexico", "Peru", "Colombia", "Argentina", "EEUU"]
    private let myCellWidth = UIScreen.main.bounds.width / 2

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .red
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "MyCustomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "mycell")
        collectionView.delegate = self
    }
}

extension ViewController: UICollectionViewDataSource {
    public func numberOfSections(in collectionView: UICollectionView) -> Int {
        2
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 2
        }
        return myCountries.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mycell", for: indexPath) as? MyCustomCollectionViewCell
        cell?.myFirstLabel.text = myCountries[indexPath.row]
        return cell!
    }
}

extension ViewController: UICollectionViewDelegate {
    public func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        print("\(indexPath.section) \(indexPath.row) \(myCountries[indexPath.row])")
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 0 {
            return CGSize(width: myCellWidth, height: myCellWidth)

        }
        return CGSize(width: myCellWidth * 2, height: myCellWidth * 2)
    }
}