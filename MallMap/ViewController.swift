//
//  ViewController.swift
//  MallMap
//
//  Created by iosdev on 5/6/17.
//  Copyright © 2017 Boen. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    var coord = (0.0,0.0)
    

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var descLabel: UILabel!
    
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var mapHaha: MKMapView!
    @IBOutlet weak var tempLabel: UILabel!
    
    @IBOutlet weak var buttonLeft: NSLayoutConstraint!
    
    
    var weather = DataModel()
        
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myImage.alpha = 0
        buttonLeft.constant = -120
        
        
        
        
        _ = MKPointAnnotation()
        
        
        let fileName = mall[myIndex] + ".jpeg"
        print(fileName)
        
        let span:MKCoordinateSpan = MKCoordinateSpanMake(0.005, 0.005)
        let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(coord.0, coord.1)
        let region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)

        mapHaha.setRegion(region, animated: true)
        
        titleLabel.text = mall[myIndex]
        descLabel.text = mallDesc[myIndex]
        myImage.image = UIImage(named: fileName)
        //let coord = mallCoords[myIndex]
        
        
        let kota = cities[myIndex]
        weather.downloadData(kota: kota){
            self.updateUI()
        }
        
    }
    
    func updateUI(){
        tempLabel.text = "\(weather.temp)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        // image animation
        UIView.animate(withDuration: 3, animations: {
            self.myImage.alpha = 1
        })
        
        //layout animation
        self.buttonLeft.constant = 0
        UIView.animate(withDuration: 3, animations: {
            self.view.layoutIfNeeded()
        })
        
        
    }

    
    
}
