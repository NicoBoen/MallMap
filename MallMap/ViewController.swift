//
//  ViewController.swift
//  MallMap
//
//  Created by iosdev on 5/6/17.
//  Copyright © 2017 Boen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var descLabel: UILabel!
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let fileName = mall[myIndex] + ".jpeg"
        print(fileName)
        
        
        titleLabel.text = mall[myIndex]
        descLabel.text = mallDesc[myIndex]
        myImage.image = UIImage(named: fileName)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
