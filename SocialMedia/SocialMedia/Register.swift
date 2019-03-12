//
//  ViewController.swift
//  SocialMedia
//
//  Created by Kevin Andrade on 3/5/19.
//  Copyright © 2019 Kevin Andrade. All rights reserved.
//

import UIKit


//registration interface
class Register: UIViewController {

    //User Interface object for fields
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var firstnameTxt: UITextField!
    @IBOutlet weak var lastnameTxt: UITextField!
    
    //first function that loads up
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
        
    }
    //clicked on register
    @IBAction func register_click(_ sender: Any) {
        //empty text
        if usernameTxt.text!.isEmpty || passwordTxt.text!.isEmpty || emailTxt.text!.isEmpty || firstnameTxt.text!.isEmpty || lastnameTxt.text!.isEmpty
        {
            //red on inputs
            usernameTxt.attributedPlaceholder = NSAttributedString(string:"username", attributes:[NSAttributedString.Key.foregroundColor:UIColor.red])
            passwordTxt.attributedPlaceholder = NSAttributedString(string:"password", attributes:[NSAttributedString.Key.foregroundColor:UIColor.red])
            emailTxt.attributedPlaceholder = NSAttributedString(string:"email", attributes:[NSAttributedString.Key.foregroundColor:UIColor.red])
            firstnameTxt.attributedPlaceholder = NSAttributedString(string:"first name", attributes:[NSAttributedString.Key.foregroundColor:UIColor.red])
            lastnameTxt.attributedPlaceholder = NSAttributedString(string:"last name", attributes:[NSAttributedString.Key.foregroundColor:UIColor.red])
        }
        else
        {
            //create new user in MYSQL
            
        }
    }
    

}

