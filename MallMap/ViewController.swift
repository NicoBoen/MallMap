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
        
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let annotation = MKPointAnnotation()
        
        
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
