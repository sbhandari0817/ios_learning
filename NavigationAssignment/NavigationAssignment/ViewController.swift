//
//  ViewController.swift
//  NavigationAssignment
//
//  Created by Santosh Bhandari on 9/9/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ButtonToScreenB: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Screen A"
        ButtonToScreenB.setTitle("Go to B", for: .normal)
        ButtonToScreenB.layer.borderWidth = 2.0
        ButtonToScreenB.backgroundColor = UIColor.white
        
        ButtonToScreenB.addTarget(self, action: #selector(goToScreenB), for: .touchUpInside)
        
    }
    @objc func goToScreenB(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let firstVC = storyboard.instantiateViewController(identifier: "FirstViewController")
        self.navigationController?.pushViewController(firstVC, animated: true)
        
    }

}

