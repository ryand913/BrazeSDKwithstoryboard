//
//  ViewController.swift
//  BrazeSDKwithstoryboard
//
//  Created by Ryan Dusenbury on 1/10/24.
//

import UIKit
import BrazeKit

class ViewController: UIViewController {

    @IBOutlet weak var userid: UITextField!
    @IBOutlet weak var emailinput: UITextField!
    @IBOutlet weak var color: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeuser(_ sender: Any) {
        AppDelegate.braze?.changeUser(userId: "\(userid.text ?? "no-id")")
    }

    @IBAction func customcolor(_ sender: Any) {
        AppDelegate.braze?.user.setCustomAttribute(key: "color", value: "\(color.text ?? "no-id"))")
    }
    
    
    @IBAction func setemail(_ sender: Any) {
        AppDelegate.braze?.user.set(email: "\(emailinput.text ?? "no email")")
        
        AppDelegate.braze?.logCustomEvent(name: "email-provided")
    }
}

