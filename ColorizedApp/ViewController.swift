//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Иван Майоров on 24.03.2023.


import UIKit

class ViewController: UIViewController {
    //MARK: - OUTLETS
    
    @IBOutlet weak var selectedColorView: UIView!
    @IBOutlet var redColorLabel: UILabel!
    @IBOutlet var greenColorLabel: UILabel!
    @IBOutlet var blueColorLabel: UILabel!
    
    @IBOutlet var valueOfRedLabel: UILabel!
    @IBOutlet var valueOfGreenLabel: UILabel!
    @IBOutlet var valueOfBlueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    var redColorValue = 0
    var greenColorValue = 0
    var blueColorValue = 0
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSelectedColorView()
        
        

        

    }
    //MARK: - ACTIONS
    @IBAction func changeRedColor() {
        valueOfRedLabel.text = String(format: "%.2f", redSlider.value)
//        selectedColorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        changeBackgroundColorForSelectedView()
        


        
    
        
        
        
        
        
    }
    @IBAction func changeGreenColor() {
        valueOfGreenLabel.text = String(format: "%.2f", greenSlider.value)
//        selectedColorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        changeBackgroundColorForSelectedView()
        
        


        
    }
    @IBAction func changeBlueColor() {
        valueOfBlueLabel.text = String(format: "%.2f", blueSlider.value)
//        selectedColorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        changeBackgroundColorForSelectedView()
        



        
    }
    // MARK: - PRIVATE FUNCTIONS
    private func changeBackgroundColorForSelectedView() {
        selectedColorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }


}

// MARK: - EXTENSIONS

extension ViewController {
    private func setupSelectedColorView() {
        selectedColorView.layer.cornerRadius = selectedColorView.frame.height / 4
        selectedColorView.layer.borderWidth = 2
        selectedColorView.layer.borderColor = UIColor.black.cgColor
        selectedColorView.backgroundColor = .white
    }
    

}


