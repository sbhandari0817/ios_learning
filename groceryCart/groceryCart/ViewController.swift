//
//  ViewController.swift
//  groceryCart
//
//  Created by Santosh Bhandari on 9/28/21.
//

import UIKit

class ViewController: UIViewController {
    var items:[GroceryItem] = [GroceryItem(id: 1, name: "Apples"), GroceryItem(id: 2, name: "Oranges"), GroceryItem(id: 3, name: "Grapes"), GroceryItem(id: 4, name: "Pineapples"), GroceryItem(id: 5, name: "Cherries"), GroceryItem(id: 6, name: "Dragon Fruits")]

    @IBOutlet weak var groceryViewTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        groceryViewTable.register(UINib(nibName: "ItemTableViewCell", bundle: nil), forCellReuseIdentifier: "ItemTableViewCell")
        groceryViewTable.dataSource = self
        groceryViewTable.delegate = self
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate, ItemUpdated {
    func itemAddedOnCart(_ item: GroceryItem) {
        var itemSelected = item
        itemSelected.count += 1
        guard let index = items.firstIndex(where: {$0.id == itemSelected.id}) else {
            return
        }
        items[index] = itemSelected
        groceryViewTable.reloadData()
        
    }
    
    func itemRemovedFromCart(_ item: GroceryItem) {
        var itemSelected = item
        if (itemSelected.count > 0) {
            itemSelected.count -= 1
        } else {return}
        guard let index = items.firstIndex(where: {$0.id == itemSelected.id}) else {
            return
        }
        items[index] = itemSelected
        //groceryViewTable.reloadData()
        groceryViewTable.reloadRows(at:[IndexPath(row: index, section: 0)], with: .automatic)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ItemTableViewCell") as? ItemTableViewCell else {
            fatalError("No such table found")
        }
        cell.item = items[indexPath.row]
        cell.delegate = self
        return cell
    }
    
        
}


