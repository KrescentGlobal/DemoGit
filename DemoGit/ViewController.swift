//
//  ViewController.swift
//  DemoGit
//
//  Created by KITLABS-M-003 on 25/09/18.
//  Copyright © 2018 KITLABS-M-003. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        func setupButtonMap(){
            let mapButton = UIButton(type: .system)
            mapButton.setImage(#imageLiteral(resourceName: "CreateTrip").withRenderingMode(.alwaysOriginal), for: .normal)
            mapButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
            mapButton.contentMode = .scaleAspectFit
            mapButton.backgroundColor = UIColor.clear
            mapButton.addTarget(self, action: #selector(ViewController.btnOpenMap(_:)), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: mapButton)
        }
        @IBAction func btnOpenMap(_ sender: Any?) {
            print("Successful")
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

