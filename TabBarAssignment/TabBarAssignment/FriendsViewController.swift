//
//  FriendsViewController.swift
//  TabBarAssignment
//
//  Created by Santosh Bhandari on 9/12/21.
//

import UIKit

class FriendsViewController: UIViewController {

    @IBOutlet weak var friendsDetail: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Friends Screen"
        friendsDetail.addTarget(self, action: #selector(goToFriendsDetail), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    @objc func goToFriendsDetail() {
        let storyboard = UIStoryboard(name: "Friends", bundle: nil)
        let friendsDetail = storyboard.instantiateViewController(identifier: "FriendsDetailViewController")
        self.navigationController?.pushViewController(friendsDetail, animated: true)
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
