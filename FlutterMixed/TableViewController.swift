//
//  TableViewController.swift
//  FlutterMixed
//  
//  Created by ash on 2020/5/13.
//  Copyright © 2020 ash. All rights reserved.
//
    

import UIKit
import Flutter
import flutter_boost

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let flutterVC = FlutterViewController()
            navigationController?.pushViewController(flutterVC, animated: true)
        }else if indexPath.row == 1 {
            FlutterBoostPlugin.open("first", urlParams:[kPageCallBackId:"MycallbackId#1"], exts: ["animated":true], onPageFinished: { (_ result:Any?) in
                print(String(format:"call me when page finished, and your result is:%@", result as! CVarArg));
            }) { (f:Bool) in
                print(String(format:"page is opened"));
            }
        }else if indexPath.row == 2 {
            FlutterBoostPlugin.present("second", urlParams:[kPageCallBackId:"MycallbackId#2"], exts: ["animated":true], onPageFinished: { (_ result:Any?) in
                print(String(format:"call me when page finished, and your result is:%@", result as! CVarArg));
            }) { (f:Bool) in
                print(String(format:"page is presented"));
            }
        }else if indexPath.row == 3 {
            FlutterBoostPlugin.open("tab", urlParams:[kPageCallBackId:"MycallbackId#3"], exts: ["animated":true], onPageFinished: { (_ result:Any?) in
                print(String(format:"call me when page finished, and your result is:%@", result as! CVarArg));
            }) { (f:Bool) in
                print(String(format:"page is opened"));
            }
        }else if indexPath.row == 4 {
            FlutterBoostPlugin.open("flutterFragment", urlParams:[kPageCallBackId:"MycallbackId#4"], exts: ["animated":true], onPageFinished: { (_ result:Any?) in
                print(String(format:"call me when page finished, and your result is:%@", result as! CVarArg));
            }) { (f:Bool) in
                print(String(format:"page is opened"));
            }
        }else if indexPath.row == 5 {
            FlutterBoostPlugin.open("flutterPage", urlParams:[kPageCallBackId:"MycallbackId#5"], exts: ["animated":true], onPageFinished: { (_ result:Any?) in
                print(String(format:"call me when page finished, and your result is:%@", result as! CVarArg));
            }) { (f:Bool) in
                print(String(format:"page is opened"));
            }
        }
    }

}
