//
//  ViewController.swift
//  printNameDate
//
//  Created by Ebony on 2/5/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var LblMessage: UILabel!
    @IBOutlet weak var TxtName: UITextField!
    @IBOutlet weak var switchDate: UISwitch!
    
    
    @IBAction func pushButton(_ sender: Any){
    let userName: String = TxtName.text ?? "UnKnown"
    LblMessage.text = "Hello" + userName
    
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = DateFormatter.Style.none
        dateFormatter.dateStyle = DateFormatter.Style.medium
        let datestring = dateFormatter.string(from: date)
        
        if switchDate.isOn {
            LblMessage.text = "Hello" + userName + ". Today is \(datestring)."
        }else {
            LblMessage.text = "Hello" + userName
        }
        
    
   }
   


}
