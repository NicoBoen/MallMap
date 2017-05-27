//
//  PassViewController.swift
//  MallMap
//
//  Created by iosdev on 5/27/17.
//  Copyright © 2017 Boen. All rights reserved.
//

import UIKit

class PassViewController: UIViewController {

    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var inputText: UITextField!
    @IBAction func unwindToVC1(segue:UIStoryboardSegue) { }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.isEnabled = false

        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func textFieldEditingDidChange(_ sender: Any) {
        print("textField: \(inputText.text)")
        
        if validatePassword(text: inputText.text!) {
            button.isEnabled = true
        } else{
            button.isEnabled = false
        }
        
        
    }
    
    @IBAction func pressButton(_ sender: Any) {
        self.performSegue(withIdentifier: "seguepass", sender: self)
        
        
    }
    
    func validatePassword(text: String) -> Bool{
        var result = false
        
        //test passwrod
        if text == "Nico"{
            result = true
            
        }
        
        return result
        
        
    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
