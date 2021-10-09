//
//  LocationViewController.swift
//  TabBarAssignment
//
//  Created by Santosh Bhandari on 9/12/21.
//

import UIKit

class LocationViewController: UIViewController {

    @IBOutlet weak var goToDetail: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Location Screen"
        // Do any additional setup after loading the view.
        goToDetail.addTarget(self, action: #selector(goToDetailPressed), for: .touchUpInside)
    }
    
    @objc func goToDetailPressed() {
        let storyboard = UIStoryboard(name: "Locations", bundle: nil)
        let detailView = storyboard.instantiateViewController(identifier: "LocationDetailViewController")
        detailView.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(detailView, animated: true)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
