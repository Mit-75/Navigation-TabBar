//
//  FirdViewController.swift
//  Navigation$TabBar
//
//  Created by Dmitry Parhomenko on 12.03.2024.
//

import UIKit

final class ThirdViewController: UIViewController {
    
    @IBOutlet var thirdVCLabel: UILabel!
    @IBOutlet var thirdVCTF: UITextField!
    
    var labelText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        thirdVCLabel.text = labelText

    }
    
    @IBAction func BarButtonExit() {
        dismiss(animated: true)
        
    }
    
    @IBAction func saveButton() {
    }
}
