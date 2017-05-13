//
//  DataModel.swift
//  MallMap
//
//  Created by iosdev on 5/13/17.
//  Copyright © 2017 Boen. All rights reserved.
//

import Foundation
import Alamofire

class DataModel{
    private var _temp: String?
    //private var _weather: String?
    typealias JSONStandard = Dictionary<String, AnyObject>
    
    
    var temp: String{
        return _temp ?? "0 °C"
    }
    
    
    
    func downloadData(kota: String,  completed: @escaping ()-> ()) {
        
        let url = URL(string: "http://api.openweathermap.org/data/2.5/weather?q=\(kota)&appid=a7bbbd5e82c675f805e7ae084f742024&units=metric&lang=zh")!
        print(url)
        Alamofire.request(url).responseJSON(completionHandler: {
            response in
            let result = response.result
            debugPrint(response)
            if let dict = result.value as? JSONStandard,
                let main = dict["main"] as? JSONStandard,
                let temp = main["temp"] as? Double
            {
                print("hellooooo")
                self._temp = String(format: "%.0f °C", temp)
                //self._weather = weather
                //self._location = "\(name), \(country)"
                //self._date = dt
                //self._description = description
            
            }
            completed()
        
        })
    
    
    
    }
    
    
    
    
    
    
    
    
}

