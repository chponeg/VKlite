//
//  UserGroupTableViewController.swift
//  VKLite
//
//  Created by mac on 11.05.2021.
//

import UIKit

class UserGroupTableViewController: UITableViewController {
    
    var groups = ["Per","Zer","Xer"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
       


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FriendsTableViewCell.reuseIdentifier, for: indexPath) as! FriendsTableViewCell
        let group = groups [indexPath.row]
        cell.configure(title: group, image: UIImage(systemName: "bolt"))
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            if editingStyle == .delete {
                groups.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
        }

}
