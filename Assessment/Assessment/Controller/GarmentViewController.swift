//
//  ViewController.swift
//  Assessment
//
//  Created by Santosh Bhandari on 11/17/21.
//

import UIKit
import CoreData

class GarmentViewController: UIViewController, AddViewControllerDelegate {
    var data = GarmentDataViewModel()

    
    @IBOutlet weak var tableView: UITableView!
        
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        //fetchAlphaSortedGarment()
        fetch()
    }
    func fetchAlphaSortedGarment() {
        do {
            self.data.garments = try Context.context.fetch(Garment.fetchRequest())
            self.data.addGarmentSort()
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        } catch{
            print (error.localizedDescription)
        }
    }
    func fetch () {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            fetchAlphaSortedGarment()
        case 1:
            fetchTimeSortedGarment()
        default:
            fetchAlphaSortedGarment()
        }
    }
    func fetchTimeSortedGarment() {
        do {
            self.data.garments = try Context.context.fetch(Garment.fetchRequest())
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        } catch{
            print (error.localizedDescription)
        }
    }
    //Preparing Delegation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navC = segue.destination as? UINavigationController,
                let addGarmentVC = navC.viewControllers.first as? AddViewController
        else {
            fatalError("Error performing Segue!")
        }
        addGarmentVC.delegate = self
    }
    
    //delegate function
    func saveAddViewControllerDidSelected(controller: UIViewController) {
        controller.dismiss(animated: true, completion: nil)
        fetch()
    }
    
    //segmented Control
    
    @IBAction func indexChanged(_ sender: Any) {
        fetch()
    }
}

extension GarmentViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = self.data.garments.count
        return count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GarmentNameCell",for:indexPath )
        
        cell.textLabel?.text = self.data.garments[indexPath.row].name
        return cell
    }
}


