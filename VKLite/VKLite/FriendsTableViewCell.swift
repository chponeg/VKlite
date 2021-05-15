//
//  FriendsTableViewCell.swift
//  VKLite
//
//  Created by mac on 07.05.2021.
//

import UIKit

class FriendsTableViewCell: UITableViewCell {
    
    static let reuseIdentifier = "FriendsTableViewCell"

    @IBOutlet var titleCell: UILabel!
    
    
    @IBOutlet var imageViewCell: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configure(title: String?, image: UIImage?) {
        titleCell.text = title
        imageViewCell.image = image
    }
}
