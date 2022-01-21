//
//  AddViewController.swift
//  Assessment
//
//  Created by Santosh Bhandari on 11/18/21.
//

import UIKit


protocol AddViewControllerDelegate {
    func saveAddViewControllerDidSelected(controller:UIViewController)
}

class AddViewController: UIViewController {
    
    var delegate: AddViewControllerDelegate?
    @IBOutlet weak var garmentName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func save() {
        if let delegate = self.delegate {
        addGarment()
        delegate.saveAddViewControllerDidSelected(controller: self)
        }
    }
    func addGarment() {
        //Adding data
        let garment = Garment(context: Context.context)
        if (garmentName.text != nil) {
            garment.name = garmentName.text ?? " "
        }
        do {
            try Context.context.save()
        }
        catch {
            fatalError()
        }
    }
}
