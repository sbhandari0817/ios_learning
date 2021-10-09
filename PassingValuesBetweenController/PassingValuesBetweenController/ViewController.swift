//
//  ViewController.swift
//  PassingValuesBetweenController
//
//  Created by Santosh Bhandari on 9/19/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yellowButton: UIButton!
    
    @IBOutlet weak var greenButton: UIButton!
    
    @IBOutlet weak var orangeButton: UIButton!
    
    var selectedColor: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        yellowButton.addTarget(self, action: #selector(yellowButtonTapped), for: .touchUpInside)
        
        greenButton.addTarget(self, action: #selector(greenButtonTapped), for: .touchUpInside)
        
        orangeButton.addTarget(self, action: #selector(orangeButtonTapped), for: .touchUpInside)
        
        NotificationCenter.default.addObserver(self, selector: #selector(notificationReceived), name:.animalSelected, object: nil)

    }
    @objc func notificationReceived(notification: Notification) {
        if let object = notification.object as? String {
            print (object)
        }
        
    }

    
    @objc func yellowButtonTapped() {
        self.selectedColor = "Yellow"
        performSegue(withIdentifier: "showSetColor", sender: self)
    }
    
    @objc func greenButtonTapped() {
        self.selectedColor = "Green"
        performSegue(withIdentifier: "showSetColor", sender: self)
    }

    @objc func orangeButtonTapped() {
        self.selectedColor = "Orange"
        performSegue(withIdentifier: "showSetColor", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSetColor"{
            let vc = segue.destination as? ColorViewController
            vc?.selectedColor = selectedColor
        }
    }
}

