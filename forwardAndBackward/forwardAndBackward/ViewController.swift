//
//  ViewController.swift
//  forwardAndBackward
//
//  Created by Mac on 13/01/17.
//

import UIKit

class ViewController: UIViewController,backDataPassing{//b4.conform a protocol
    
    @IBOutlet weak var firstTextField: UITextField!
    
    @IBOutlet weak var firstLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToSVC(_ sender: Any) {
        var firstName = firstTextField.text
        
        var secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        secondViewController.name = firstName! //f2.assign                   string to name property on insance of svc
        
        secondViewController.delegate = self//b6.assign self to                              delegate property
        navigationController?.pushViewController(secondViewController, animated: true)
        }
         func sendData(text: String) {//b5.override the protocol method
             self.firstLabel.text = text
       }
}

