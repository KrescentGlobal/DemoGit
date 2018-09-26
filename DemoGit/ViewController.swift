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
        
        // create label
        
        let lbl = UILabel(frame: CGRect(x: 10, y: 50, width: 230, height: 21))
        lbl.textAlignment = .center //For center alignment
        lbl.text = "This is my label fdsjhfg sjdg dfgdfgdfjgdjfhg jdfjgdfgdf end..."
        lbl.textColor = .white
        lbl.backgroundColor = .lightGray//If required
        lbl.font = UIFont.systemFont(ofSize: 17)
        lbl.numberOfLines = 0//If required
        lbl.lineBreakMode = .byWordWrapping//If required
        lbl.sizeToFit()//If required
        yourView.addSubview(lbl)
        
        @IBAction func btnOpenMap(_ sender: Any?) {
            print("Successful")
            
            
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    func setupButtonMap_RAJNI(){
        let mapButton = UIButton(type: .system)
        mapButton.setImage(#imageLiteral(resourceName: "CreateTrip").withRenderingMode(.alwaysOriginal), for: .normal)
        mapButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        mapButton.contentMode = .scaleAspectFit
        mapButton.backgroundColor = UIColor.clear
        mapButton.addTarget(self, action: #selector(ViewController.btnOpenMap(_:)), for: .touchUpInside)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: mapButton)
        print("my code is done")
    }
    
    
    func getFBUserData(){
        
        if((FBSDKAccessToken.current()) != nil){
            self.isFBData = true
            FBSDKGraphRequest(graphPath: "me", parameters: ["fields": "id, name, first_name, last_name, picture.type(large), email"]).start(completionHandler: { (connection, result, error) -> Void in
                if (error == nil){
                    let dict = result as! [String : AnyObject]
                    print(result!)
                    print(dict)
                    
                    if let userName = dict["name"] as? String
                    {
                        self.nameTextView.placeholder = ""
                        self.nameTextView.text = userName
                    }
                    
                    if let profilePictureObj = dict["picture"] as? NSDictionary
                    {
                        let data = profilePictureObj.value(forKey: "data") as! NSDictionary
                        let pictureUrlString  = data.value(forKey: "url") as! String
                        if let url = URL.init(string: pictureUrlString) {
                            self.profileImage.downloadedFrom(url: url, contentMode: .scaleAspectFill)
                        }
                        else {
                        }
                    }
                }
                else {
                }
            })
        }
    }
    
  

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // view willapeaar
    func viewWillAppear(_ animated: Bool) {
        animated:Bool
    }
}

