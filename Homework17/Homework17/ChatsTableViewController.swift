//
//  ChatsTableViewController.swift
//  Homework17
//
//  Created by Kato on 5/7/20.
//  Copyright © 2020 TBC. All rights reserved.
//

import UIKit

class ChatsTableViewController: UIViewController {
    
    var finalMessages: [NewMessage] = []
    var selectedCell = 0

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func onAddTapped(_ sender: UIBarButtonItem) {

        
        performSegue(withIdentifier: "add_message", sender: self)

    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! AddMessageViewController
        vc.messages = self.finalMessages
    }
    
}

extension ChatsTableViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return finalMessages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "chats_cell", for: indexPath) as! ChatsCell
        
        cell.chatNameLabel.text = finalMessages[indexPath.row].number
        cell.chatMessageLabel.text = finalMessages[indexPath.row].message
        cell.chatImageView.image = UIImage(named: "user.icon")
        
     
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.selectedCell = indexPath.row
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
         
         let displayVC = storyboard.instantiateViewController(withIdentifier: "display_message")

         if let vc = displayVC as? DisplayMessageViewController {
            
            
            //ვერ მივხვდი რატომ არ მუშაობს
             
            vc.textToDisplay = self.finalMessages[indexPath.row].message
            //vc.displayMessageLabel.text = self.finalMessages[indexPath.row].message
            
         }

         present(displayVC, animated: true, completion: nil)
         
    }
    
    
}
