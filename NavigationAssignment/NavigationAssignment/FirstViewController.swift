//
//  FirstViewController.swift
//  NavigationAssignment
//
//  Created by Santosh Bhandari on 9/9/21.
//

import UIKit

class FirstViewController: UIViewController {

    
    @IBOutlet weak var toScreenA: UIButton!
    
    @IBOutlet weak var toScreenC: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //Adding title to the Screen
        self.title = "Screen B"
        
        //Assigning title and boder for button
        //outlet
        toScreenA.setTitle("Go to A", for: .normal)
        toScreenA.layer.borderWidth = 2.0
        toScreenA.backgroundColor = UIColor.white
        
        toScreenA.addTarget(self, action: #selector(goToScreenA), for: .touchUpInside)
        
        //Assigning title and boder for button
        //outlet
        toScreenC.setTitle("Go to C", for: .normal)
        toScreenC.layer.borderWidth = 2.0
        toScreenC.backgroundColor = UIColor.white
        
        toScreenC.addTarget(self, action: #selector(goToScreenC), for: .touchUpInside)
    }
    
    @objc func goToScreenA() {
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @objc func goToScreenC() {
        let storyboard = UIStoryboard (name:"Main", bundle: nil)
        let screenCS = storyboard.instantiateViewController(identifier: "SecondViewController")
        self.navigationController?.pushViewController(screenCS, animated: true)
        
    }
}
