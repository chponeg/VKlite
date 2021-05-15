//
//  UsersFriendsTableViewController.swift
//  VKLite
//
//  Created by mac on 07.05.2021.
//

import UIKit

class UsersFriendsTableViewController: UITableViewController {
    var friends = ["Oleg", "Mihail", "Mark", "Gleb", "Sava"]

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FriendsTableViewCell.reuseIdentifier, for: indexPath) as! FriendsTableViewCell
        let friend = friends [indexPath.row]
        cell.configure(title: friend, image: UIImage(systemName: "bolt"))
        
        return cell
    }
    
}
