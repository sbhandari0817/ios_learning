//
//  ItemTableViewCell.swift
//  groceryCart
//
//  Created by Santosh Bhandari on 9/28/21.
//

import UIKit

protocol ItemUpdated: AnyObject {
    func itemAddedOnCart (_ item: GroceryItem)
    func itemRemovedFromCart (_ item: GroceryItem)
}

class ItemTableViewCell: UITableViewCell {
    
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemCount: UILabel!
    @IBOutlet weak var itemRemoveButton: UIButton!
    @IBOutlet weak var itemAddButton: UIButton!
    
    weak var delegate: ItemUpdated?
    
    var item: GroceryItem? {
        didSet{
            itemName.text = item?.name
            itemCount.text = "\(item?.count ?? 0)"
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupUI()
    }
    
    func setupUI() {
        itemAddButton.addTarget(self, action: #selector(itemAddTapped), for: .touchUpInside)
        itemRemoveButton.addTarget(self, action: #selector(itemRemoveTapped), for: .touchUpInside)
    }
    
    @objc func itemAddTapped() {
        if let item = item {
            self.delegate?.itemAddedOnCart(item)
        }
    }
    
    @objc func itemRemoveTapped() {
        if let item = item {
            self.delegate?.itemRemovedFromCart(item)
        }
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
