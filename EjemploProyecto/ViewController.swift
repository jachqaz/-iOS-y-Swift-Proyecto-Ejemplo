//
//  ViewController.swift
//  EjemploProyecto
//
//  Created by VOV Solutions  on 21/07/21.
//

import UIKit

class ViewController: UIViewController {

//    @IBOutlet weak var etiqueta: UILabel!
//IBOutlet
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myPickerView: UIPickerView!
    @IBOutlet weak var myPageControl: UIPageControl!
    @IBOutlet weak var mySegmentedControl: UISegmentedControl!
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var myStepper: UIStepper!
    //    Variables
    private let myPickerViewValues = ["Uno", "Dos", "Tres", "Cuatro", "Cinco"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        etiqueta.text = "Ya Cambie"
//        etiqueta.text = "Ya Cambie por segunda vez"
//        etiqueta.text = "Ya Cambie  por tercera vez"
//        etiqueta.text = "Ya Cambie por cuarta vez"
//    Buttons
        myButton.setTitle("Mi Boton", for: .normal)
        myButton.backgroundColor = .blue
        myButton.setTitleColor(.white, for: .normal)
//        Pickers
        myPickerView.backgroundColor = .lightGray
        myPickerView.dataSource = self
        myPickerView.delegate = self
//        PAgeCOntrol
        myPageControl.numberOfPages = myPickerViewValues.count
        myPageControl.currentPageIndicatorTintColor = .blue
        myPageControl.pageIndicatorTintColor = .lightGray
//        SegmetedControls
        mySegmentedControl.removeAllSegments()
        for (index, value) in myPickerViewValues.enumerated() {
            mySegmentedControl.insertSegment(withTitle: value, at: index, animated: true)
        }

//        Sliders
        mySlider.minimumTrackTintColor = .red
        mySlider.minimumValue = 1
        mySlider.maximumValue = Float(myPickerViewValues.count)
        mySlider.value = 1

    }

//    @IBAction func cambiarTexto(_ sender: Any) {
//        etiqueta.text = "Hola Mundo Cruel"
//    }

    @IBAction func myStepperAction(_ sender: Any) {
    }

    @IBAction func mySliderAction(_ sender: Any) {
        switch mySlider.value {
        case 1..<2:
            mySegmentedControl.selectedSegmentIndex = 0
        case 2..<3:
            mySegmentedControl.selectedSegmentIndex = 1
        case 3..<4:
            mySegmentedControl.selectedSegmentIndex = 2
        case 4..<5:
            mySegmentedControl.selectedSegmentIndex = 3
        default:
            mySegmentedControl.selectedSegmentIndex = 4
        }
    }

    @IBAction func mySegmentedControlAction(_ sender: Any) {
        myPickerView.selectRow(mySegmentedControl.selectedSegmentIndex, inComponent: 0, animated: true)
        let myString = myPickerViewValues[mySegmentedControl.selectedSegmentIndex]
        myButton.setTitle(myString, for: .normal)
        myPageControl.currentPage = mySegmentedControl.selectedSegmentIndex
    }

    @IBAction func myPageControlAction(_ sender: Any) {
        myPickerView.selectRow(myPageControl.currentPage, inComponent: 0, animated: true)
        let myString = myPickerViewValues[myPageControl.currentPage]
        myButton.setTitle(myString, for: .normal)
        mySegmentedControl.selectedSegmentIndex = myPageControl.currentPage
    }

    @IBAction func myButtonAction(_ sender: Any) {
        if (myButton.backgroundColor == .blue) {
            myButton.backgroundColor = .green
        } else {
            myButton.backgroundColor = .blue
        }
    }

}

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myPickerViewValues.count
    }

    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return myPickerViewValues[row]
    }

    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let myString = myPickerViewValues[row]
        myButton.setTitle(myString, for: .normal)

        myPageControl.currentPage = row

        mySegmentedControl.selectedSegmentIndex = row

    }
}

