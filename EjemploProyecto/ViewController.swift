//
//  ViewController.swift
//  EjemploProyecto
//
//  Created by VOV Solutions  on 21/07/21.
//

import UIKit
import WebKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myImage: UIImageView!

    @IBOutlet weak var myFakeView: UIView!
    @IBOutlet weak var myButton: UIButton!

    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var myMap: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "My View Controller"
        // Do any additional setup after loading the view.
        myWebView.load(URLRequest(url: URL(string: "https://google.com")!))
        myMap.centerCoordinate = CLLocationCoordinate2DMake(42.6074875, -8.3132621)
    }

    @IBAction func myButtonAction(_ sender: Any) {
        myFakeView.isHidden = true
    }
    
}

