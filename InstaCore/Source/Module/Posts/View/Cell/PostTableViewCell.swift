//
//  PostTableCellView.swift
//  InstaCore
//
//  Created by Vadym on 249//17.
//  Copyright © 2017 Vadym Mitin. All rights reserved.
//

import UIKit
import Kingfisher

class PostTableViewCell: UITableViewCell{
    
    var onDeleteButtonDidTouch: (() -> Void)?
    var onEditButtonDidTouch: (() -> Void)?
    
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var tagsLabel: UILabel!
    @IBOutlet weak var createdAtLabel: UILabel!
    @IBOutlet weak var updatedAt: UILabel!
    
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var editButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        deleteButton.setTitle("Delete".localized, for: .normal)
        editButton.setTitle("Edit".localized, for: .normal)
        
        deleteButton.addTarget(self, action: #selector(deleteButtonDidTouch), for: .touchUpInside)
        editButton.addTarget(self, action: #selector(editButtonDidTouch), for: .touchUpInside)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        postImageView.image = nil
        
        onDeleteButtonDidTouch = nil
        onEditButtonDidTouch = nil
        
        descriptionLabel.text = nil
        tagsLabel.text = nil
        createdAtLabel.text = nil
        updatedAt.text = nil
    }
    
    func setup(data: PostViewDataProtocol){
        postImageView.kf.setImage(with: data.imageURL)
        
        descriptionLabel.text = data.description
        tagsLabel.text = data.tags
        createdAtLabel.text = String(format: "Created at: %@".localized, data.createdAt)
        updatedAt.text = String(format: "Updated at: %@".localized, data.updatedAt)
    }
    
    func deleteButtonDidTouch(){
        onDeleteButtonDidTouch?()
    }
    
    func editButtonDidTouch(){
        onEditButtonDidTouch?()
    }
}
