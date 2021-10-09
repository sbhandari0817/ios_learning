//
//  ColorViewController.swift
//  PassingValuesBetweenController
//
//  Created by Santosh Bhandari on 9/19/21.
//

import UIKit

class ColorViewController: UIViewController, SelectedCar {
    
    var selectedColor:String?

    @IBOutlet weak var detailViewButton: UIButton!
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackgroungColor()
        
        // Do any additional setup after loading the view.
        detailViewButton.addTarget(self, action: #selector(detailButtonTapped), for: .touchUpInside)
        
        //Notification center to pass value around the windows.
        /*
            Here if some windows post the notification name then the function
            notificationRecived get called.
         
         */
        NotificationCenter.default.addObserver(self, selector: #selector(notificationReceived), name:Notification.Name("AnimalSelected") , object: nil)
        
    }
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    @objc func notificationReceived(notification: Notification) {
        if let object = notification.object as? String {
            print (object)
            imageView.image = UIImage(named: object)
        }
        
    }

    func setBackgroungColor(){
        if selectedColor == "Yellow" {
            view.backgroundColor = .yellow
        } else if selectedColor == "Green" {
            view.backgroundColor = .green
            
        } else if selectedColor == "Orange" {
            view.backgroundColor = UIColor(named:"purple")
        }
    }
    
    
    @objc func detailButtonTapped() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = storyboard.instantiateViewController(identifier: "CarViewController") as? CarViewController else {return}
        vc.delegate = self
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func selectedCar(name: String) {
        imageView.image = UIImage(named: name)
    }

}
