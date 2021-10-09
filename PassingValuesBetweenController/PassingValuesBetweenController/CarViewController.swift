//
//  CarViewController.swift
//  PassingValuesBetweenController
//
//  Created by Santosh Bhandari on 9/20/21.
//

import UIKit

protocol SelectedCar: AnyObject {
    func selectedCar(name: String)
}

class CarViewController: UIViewController {

    @IBOutlet weak var bmwButton: UIButton!
    @IBOutlet weak var mercedesButton: UIButton!
    @IBOutlet weak var teslaButton: UIButton!
    
    weak var delegate: SelectedCar?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmwButton.addTarget(self, action: #selector(bmwButtonTapped), for: .touchUpInside)
        
        mercedesButton.addTarget(self, action: #selector(mercedesButtonTapped), for: .touchUpInside)
        
        teslaButton.addTarget(self, action: #selector(teslaButtonTapped), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    

    @objc func bmwButtonTapped() {
        NotificationCenter.default.post(name: .animalSelected, object: "bmw", userInfo: nil)
        //self.delegate?.selectedCar(name: "bmw")
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @objc func mercedesButtonTapped() {
        NotificationCenter.default.post(name: NSNotification.Name("AnimalSelected"), object: "mercedes", userInfo: nil)
        //self.delegate?.selectedCar(name: "mercedes")
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @objc func teslaButtonTapped() {
        NotificationCenter.default.post(name: NSNotification.Name("AnimalSelected"), object: "tesla", userInfo: nil)
        //self.delegate?.selectedCar(name: "tesla")
        self.navigationController?.popViewController(animated: true)
    }

}
