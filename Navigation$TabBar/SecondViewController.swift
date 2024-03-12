//
//  SecondViewController.swift
//  Navigation$TabBar
//
//  Created by Dmitry Parhomenko on 12.03.2024.
//

import UIKit

final class SecondViewController: UIViewController {

    @IBOutlet var secondVCLabel: UILabel!
    @IBOutlet var secondVCTF: UITextField!
    
    var labelText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        secondVCLabel.text = labelText

    }
    
    @IBAction func saveButton() {
    }
    
}
