//
//  AllGroupViewController.swift
//  VKLite
//
//  Created by mac on 15.05.2021.
//

import UIKit

class AllGroupViewController: UITableViewController {

    var allgroups = ["Pertf","ert","Xfdfr"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return allgroups.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FriendsTableViewCell.reuseIdentifier, for: indexPath) as! FriendsTableViewCell
        let allgroup = allgroups [indexPath.row]
        cell.configure(title: allgroup, image: UIImage(systemName: "bolt"))
        
        return cell
    }
}
