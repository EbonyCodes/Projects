//
//  ViewController.swift
//  LightChange
//
//  Created by Ebony on 1/30/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lightButton: UIButton!
    var lightOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
        
    func updateUI() {
        if lightOn {
            view.backgroundColor = .cyan
            lightButton.setTitle("Off", for: .normal)
        }else {
            view.backgroundColor = .white
            lightButton.setTitle("On", for: .normal)
        }
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        updateUI()
    }
    



}
