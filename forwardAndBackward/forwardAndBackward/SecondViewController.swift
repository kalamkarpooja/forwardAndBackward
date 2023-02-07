//
//  SecondViewController.swift
//  forwardAndBackward
//
//  Created by Mac on 13/01/17.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var secondTextField: UITextField!
    
    var name : String = "" //f1.create property name
    
    var delegate : backDataPassing?//b2.create protocol delegate property
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondLabel.text = name //f3.assign name to text property of labels
    }
    
    @IBAction func sendData(_ sender: Any) {
        guard let delegateSVC = delegate else {
            print("no delegate found")
            return  }
    
        name = self.secondTextField.text!
        delegateSVC.sendData(text: name) //b3.call fun delegate and pass data extracted from field
        
        self.navigationController?.popViewController(animated: true)
    }
}
