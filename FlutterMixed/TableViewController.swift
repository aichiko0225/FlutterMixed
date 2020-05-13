//
//  TableViewController.swift
//  FlutterMixed
//  
//  Created by ash on 2020/5/13.
//  Copyright © 2020 ash. All rights reserved.
//
    

import UIKit
import Flutter

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let flutterVC = FlutterViewController()
        navigationController?.pushViewController(flutterVC, animated: true)
    }

}
