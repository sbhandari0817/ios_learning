//
//  ThirdViewController.swift
//  NavigationAssignment
//
//  Created by Santosh Bhandari on 9/9/21.
//

import UIKit

class SecondViewController: UIViewController {

   
    @IBOutlet weak var goToScreenA: UIButton!
    
    @IBOutlet weak var goToScreenB: UIButton!
    
    //
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Screen C"
    
        //Assigning title and boder for button
        //outlet
        goToScreenA.setTitle("Go to A", for: .normal)
        goToScreenA.layer.borderWidth = 2.0
        goToScreenA.backgroundColor = UIColor.white
        
        goToScreenA.addTarget(self, action: #selector(navigateToScreenA), for: .touchUpInside)
        
        //Assigning title and boder for button
        //outlet
        goToScreenB.setTitle("Go to B", for: .normal)
        goToScreenB.layer.borderWidth = 2.0
        goToScreenB.backgroundColor = UIColor.white
        
        goToScreenB.addTarget(self, action: #selector(navigateToScreenB), for: .touchUpInside)
        
    }
    
    @objc func navigateToScreenB() {
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @objc func navigateToScreenA() {
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    

}

