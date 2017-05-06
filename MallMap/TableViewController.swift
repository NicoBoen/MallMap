//
//  TableViewController.swift
//  MallMap
//
//  Created by iosdev on 5/6/17.
//  Copyright © 2017 Boen. All rights reserved.
//

import UIKit

var mall = ["Mall Taman Anggrek", "Mall Puri Indah", "Mall SMS"]
var mallDesc = ["Mall Taman Anggrek is located in West Jakarta", "Mall Puri Indah is located in West Jakarta", "Mall SMS is located in Tangerang"]
var mallCoords = [(-6.178685,106.791852), (-6.184723, 106.753095), (-6.241013, 106.628237)]
var myIndex = 0


class TableViewController: UITableViewController {

  
    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return mall.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = mall[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var test = mallCoords[myIndex]
        let pass = segue.destination as! ViewController
        pass.coord = test
    }
   
    
   
}
