//
//  HomeViewController.swift
//  TabBarAssignment
//
//  Created by Santosh Bhandari on 9/11/21.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var toHomeDetail: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Home Screen"
        // Do any additional setup after loading the view.
        toHomeDetail.addTarget(self, action: #selector(goToHomeDetail), for: .touchUpInside)
    }
    
    @objc func goToHomeDetail() {
        let storyboard = UIStoryboard(name: "Home", bundle: nil)
        let homeDetail = storyboard.instantiateViewController(identifier: "HomeDetailViewController")
        self.navigationController?.pushViewController(homeDetail, animated: true)
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
