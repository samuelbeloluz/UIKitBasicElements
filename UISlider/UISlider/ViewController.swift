//
//  ViewController.swift
//  UISliderCurso
//
//  Created by Samuel Montagnini on 16/09/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Configuring view elements.
        configSlider()
        
    }

    @IBAction func tappedSlider(_ sender: UISlider) {
        print(Int(sender.value))
        
        //Changing thumb color after slider half way.
        if sender.value <= 50 {
            //From 0 to 50 it is red.
            slider.thumbTintColor = UIColor.red
        } else {
            //Above 50 it is green.
            slider.thumbTintColor = UIColor.green
        }
        
    }
    
    func configSlider() {
        //Setting the Slider minimum value.
        slider.minimumValue = 0
        //Setting the Slider maximum value.
        slider.maximumValue = 100
        //Setting the Slider starter value.
        slider.value = 0
        //Setting the Slider minimum track color to green but ligher.
        slider.minimumTrackTintColor = UIColor.green.withAlphaComponent(0.5)
        //Setting the Slider maximum track color to red but ligher.
        slider.maximumTrackTintColor = UIColor.red.withAlphaComponent(0.5)
        //Setting the thumb color to black but lighter.
        slider.thumbTintColor = UIColor.red.withAlphaComponent(0.5)
        
    }
    
}

