//
//  ViewController.swift
//  UIImageView
//
//  Created by Samuel Montagnini on 16/09/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var logoImageView: UIImageView!
    
    @IBOutlet weak var logoSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Configuring view elements.
        configLogoImageView()
        configSwitch()
    }
    
    @IBAction func tappedSwitch(_ sender: UISwitch) {
        //Changing ImageView image color by switch command.
        if sender.isOn {
            //ON = Changing to red
            logoImageView.tintColor = UIColor.red
        }else{
            //OFF = Chaning to green
            logoImageView.tintColor = UIColor.green
        }
    }
    
    
    func configLogoImageView() {
        //Setting the system Image to ImageView
        logoImageView.image = UIImage(systemName: "brain.head.profile")
        //Setting the image scale.
        logoImageView.contentMode  = .scaleAspectFit
        //Starting with orange green.
        logoImageView.tintColor = UIColor.green
    }
    
    func configSwitch() {
        //Starting switch as off.
        logoSwitch.isOn = false
    }

}

