//
//  ViewController.swift
//  UISwitchCurso
//
//  Created by Samuel Montagnini on 15/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var StateSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Configuring view's elements.
        configSwitch()
        configView()
    }


    @IBAction func tappedSwitchAction(_ sender: UISwitch) {
        print(sender.isOn) //sender receive the switch status, so it is useful to manipulate switch's properties.
        
        //Logic to change View background to green if switch is ON or red if it is OFF.
        if sender.isOn {
            //Set view to green color but just 40% of color tonality.
            view.backgroundColor = .green.withAlphaComponent(0.4)
        } else {
            //Set view to red color but just 40% of color tonality.
            view.backgroundColor = .red.withAlphaComponent(0.4)
        }
        
    }
    
    func configSwitch(){
        //Setting switch initial state to OFF.
        StateSwitch.isOn = false
        
        //Setting the switch ON position color to blue.
        StateSwitch.onTintColor = .blue
        //Setting the switch OFF position color to gray.
        StateSwitch.tintColor = .gray
        
    }
    
    func configView() {
        //Setting itinial view color to red lighter.
        view.backgroundColor = UIColor.red.withAlphaComponent(0.4)
    }
    
}

