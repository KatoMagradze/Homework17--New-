//
//  CallsTableViewController.swift
//  Homework17
//
//  Created by Kato on 5/7/20.
//  Copyright © 2020 TBC. All rights reserved.
//

import UIKit

class CallsTableViewController: UIViewController {
    
    var callsList: [Calls] = []
    
    var num1 = Calls(number: "599-999-999", country: "Georgia", week: "Thursday")
    var num2 = Calls(number: "588-888-888", country: "Georgia", week: "Thursday")
    var num3 = Calls(number: "577-777-777", country: "Georgia", week: "Wednesday")
    var num4 = Calls(number: "566-666-666", country: "Georgia", week: "Tuesday")
    
    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        callsList.append(num1)
        callsList.append(num2)
        callsList.append(num3)
        callsList.append(num4)
    }
    

}

extension CallsTableViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return callsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         
        let cell = tableView.dequeueReusableCell(withIdentifier: "calls_cell", for: indexPath) as! CallsCell
        
        cell.callNumberLabel.text = callsList[indexPath.row].number
        cell.callCountryLabel.text = callsList[indexPath.row].country
        cell.callWeekLabel.text = callsList[indexPath.row].week
        
        return cell
    }
    
    
}


class Calls {
    var number : String
    var country : String
    var week : String
    
    init(number: String, country: String, week: String) {
        self.number = number
        self.country = country
        self.week = week
    }
}





