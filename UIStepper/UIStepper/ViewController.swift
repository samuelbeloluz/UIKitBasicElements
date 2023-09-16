//
//  ViewController.swift
//  UIStepper
//
//  Created by Samuel Montagnini on 16/09/23.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var valueLabel: UILabel!
    
    @IBOutlet weak var lampImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Configuring the elements when view Loads.
        configStepper()
        configView()
        configImageView()
        configValueLabel()
    }
    
    
    
    @IBAction func tappedStepper(_ sender: UIStepper) {
        
        print(sender.value)
        
        //The Stepper value is a double, so we need to make it a Int to cut decimal values and a String to use in Label.
        valueLabel.text = "\(String(Int(sender.value)))%"
        
        //Background color lightness will be based on stepper value, making a lightening effect.
        view.backgroundColor = UIColor.systemOrange.withAlphaComponent(sender.value/100)
        
        //The same we do for ImageView lamp Image, we make it lighter or darker as the stepper progress or regress.
        lampImageView.tintColor = UIColor.yellow.withAlphaComponent(stepper.value/100)
        
    }
    
    func configView() {
        //Setting the view background color as the percentage of stepper's values.
        view.backgroundColor = UIColor.systemOrange.withAlphaComponent(stepper.value/100)
    }
    
    func configStepper() {
        //Setting the Stepper properties and starting it at 50, so screen wont start pure dark.
        stepper.minimumValue = 0
        stepper.maximumValue = 100
        stepper.value = 50
        stepper.stepValue = 10
        
    }
    
    func configImageView() {
        //Using a system image of a bulb and paiting it yellow but based on Stepper initial value.
        lampImageView.image = UIImage(systemName: "lightbulb.fill")
        lampImageView.tintColor = UIColor.systemYellow.withAlphaComponent(stepper.value/100)
    }
    
    func configValueLabel() {
        //Setting the label initial value as Stepper's value.
        valueLabel.text = "\(String(Int(stepper.value)))%"
    }
    

}

