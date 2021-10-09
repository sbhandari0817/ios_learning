//
//  SearchViewController.swift
//  TabBarAssignment
//
//  Created by Santosh Bhandari on 9/12/21.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var toSearchDetail: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Search Screen"
        // Do any additional setup after loading the view.
        toSearchDetail.addTarget(self, action: #selector(goToSearchDetail), for: .touchUpInside)
    }
    @objc func goToSearchDetail() {
        let storyboard = UIStoryboard(name: "Search", bundle: nil)
        let searchDetail = storyboard.instantiateViewController(identifier: "SearchDetailViewController")
        searchDetail.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(searchDetail, animated: true)
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
