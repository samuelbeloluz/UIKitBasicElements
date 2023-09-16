//
//  ViewController.swift
//  ProgressViewCurso
//
//  Created by Samuel Montagnini on 14/09/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var progressView: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        ConfigProgressView()
        
    }
    
    //Configuring ProgressView
    func ConfigProgressView(){
        /*
        //Setting the acctual progress
        progressView.progress = 0.5
        */
        
        //Setting the progress bar color
        progressView.tintColor = UIColor.systemOrange
        
        //Setting track color(withAlplhaComponent sets from 0 to 1 the color tonality, acctually making it lighter.
        progressView.trackTintColor = UIColor.systemBlue.withAlphaComponent(0.1)
        
        
        //Setting a variable to increment ProgressView divisions.
        let total = Progress(totalUnitCount: 100)//100 divisions
        
        //Setting in the variable now, how many units are already completed.
        total.completedUnitCount = 25
        
        //Now appling the total variable to progressView, changing the total units it has and the acctual completed units.
        progressView.setProgress(Float(total.fractionCompleted), animated: true)
        //fractionCompleted to set the completed units to progressView, not total units. We use Float because decimal values.
        
    }


}

