//
//  ViewController.swift
//  mailUI
//
//  Created by Jeyaram on 04/05/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tableView.register(UINib.init(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: "mailCell")
        tableView.delegate = self
        tableView.dataSource = self
    }


}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(indexPath.row < 5){
            if(indexPath.row % 2 == 0){
                let customCell = tableView.dequeueReusableCell(withIdentifier: "mailCell", for:indexPath) as! CustomCell
                customCell.configure(from: "Basheer", subject: "Learning", on: "WED MAY 4", size: "7 KB", hasAttachments: false, isMailOpened: false)
                return customCell
            }else{
                let customCell = tableView.dequeueReusableCell(withIdentifier: "mailCell", for:indexPath) as! CustomCell
                customCell.configure(from: "Rajesh", subject: "Testing", on: "WED MAY 5", size: "3 KB", hasAttachments: true, isMailOpened: true)
                return customCell
            }
            
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        cell.textLabel?.text = "New Mail Received"
        return cell
        
    }
    
}
