//
//  FirstViewController.swift
//  Navigation$TabBar
//
//  Created by Dmitry Parhomenko on 12.03.2024.
//

import UIKit

final class FirstViewController: UIViewController {

    @IBOutlet var firstVCLabel: UILabel!
    @IBOutlet var firstVCTF: UITextField!
    
    var labelText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstVCLabel.text = labelText

    }
    
    @IBAction func saveButton() {
    }
    
    
}
