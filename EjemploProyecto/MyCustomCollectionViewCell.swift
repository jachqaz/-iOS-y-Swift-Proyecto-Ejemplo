//
//  MyCustomCollectionViewCell.swift
//  EjemploProyecto
//
//  Created by VOV Solutions  on 20/08/21.
//

import UIKit

class MyCustomCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var myFirstLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()

        myFirstLabel.font = UIFont.boldSystemFont(ofSize: 20)
        myFirstLabel.textColor = .blue
        // Initialization code
    }

}
