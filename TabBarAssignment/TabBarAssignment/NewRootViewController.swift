//
//  NewRootViewController.swift
//  TabBarAssignment
//
//  Created by Santosh Bhandari on 9/18/21.
//

import UIKit

class NewRootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.perform(#selector(showTabBar),with: self,afterDelay: 2)
    }
    
    @objc func showTabBar(){
        //Acess storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        //Acess inital view controller
        let initalVC = storyboard.instantiateInitialViewController()
        //Assign intial view controller as root view controller
        UIApplication.shared.windows.first?.rootViewController = initalVC
        //Make root view controller visible.
        UIApplication.shared.windows.first?.makeKeyAndVisible()
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
