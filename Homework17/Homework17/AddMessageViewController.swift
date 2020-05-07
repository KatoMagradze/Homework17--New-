//
//  AddMessageViewController.swift
//  Homework17
//
//  Created by Kato on 5/7/20.
//  Copyright © 2020 TBC. All rights reserved.
//

import UIKit

class AddMessageViewController: UIViewController {
    
    var messages: [NewMessage] = []

    @IBOutlet weak var numberTextField: UITextField!
    
    @IBOutlet weak var messageTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func onButtonTapped(_ sender: UIButton) {
        
        let new = NewMessage()
        
        new.number = numberTextField.text!
        new.message = messageTextView.text!
        
        if new.number == "" || new.message == "" {
            let alert1 = UIAlertController(title: "Try Again", message: "You must enter information in all fields in order to continue.", preferredStyle: .alert)
            alert1.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert1, animated: true, completion: nil)
        }
            
        else {
        
            self.messages.append(new)
     

            if let chatVC = self.navigationController?.viewControllers.first {
                
                    let vc = chatVC as! ChatsTableViewController
                    vc.finalMessages = self.messages
                    vc.tableView.reloadData()
                    self.navigationController?.popToViewController(chatVC, animated: true)
            }
            
        }
    }
}

class NewMessage {
    
    var number  : String = ""
    var message : String = ""
    
}
