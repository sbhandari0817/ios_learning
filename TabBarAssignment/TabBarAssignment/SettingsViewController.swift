//
//  SettingsViewController.swift
//  TabBarAssignment
//
//  Created by Santosh Bhandari on 9/12/21.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var toSetting: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Settings Screen"
        // Do any additional setup after loading the view.
        toSetting.addTarget(self, action: #selector(goToSettings), for: .touchUpInside )
    }
    
    @objc func goToSettings() {
        let storyboard = UIStoryboard(name: "Settings", bundle: nil)
        let settingboard = storyboard.instantiateViewController(identifier: "SettingsDetailViewController")
        settingboard.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(settingboard, animated: true)
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
