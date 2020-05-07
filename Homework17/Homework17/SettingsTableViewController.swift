//
//  SettingsTableViewController.swift
//  Homework17
//
//  Created by Kato on 5/7/20.
//  Copyright © 2020 TBC. All rights reserved.
//

import UIKit

class SettingsTableViewController: UIViewController {
    
   var info: [Info] = []
    
    var one = Info(changes: "Change Name")
    var two = Info(changes: "Change Password")
    var three = Info(changes: "Log Out")
    
    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        info.append(one)
        info.append(two)
        info.append(three)
        // Do any additional setup after loading the view.
    }
    
}

extension SettingsTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return info.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "settings_cell", for: indexPath) as! SettingsCell
        
        cell.settingsLabel.text = info[indexPath.row].changes
        
        return cell
    }
    
    
}

class Info {
    var changes: String
    
    init(changes: String) {
        self.changes = changes
    }
}


