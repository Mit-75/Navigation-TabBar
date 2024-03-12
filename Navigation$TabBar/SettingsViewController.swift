//
//  SettingsViewController.swift
//  Navigation$TabBar
//
//  Created by Dmitry Parhomenko on 11.03.2024.
//

import UIKit

final class SettingsViewController: UIViewController {
    
    @IBOutlet var minValueTF: UITextField!
    @IBOutlet var maxValueTF: UITextField!
    @IBOutlet var infoFromFirstVCLabel: UILabel!
    @IBOutlet var infoFromSecondVCLabel: UILabel!
    @IBOutlet var infoFromThirdVCLabel: UILabel!
    
    var minNumber: String!
    var maxNumber: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        minValueTF.text = minNumber
        maxValueTF.text = maxNumber
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarVC = segue.destination as? UITabBarController
        
        tabBarVC?.viewControllers?.forEach { viewController in
            if let firstVC = viewController as? FirstViewController {
                firstVC.labelText = infoFromFirstVCLabel?.text
            } else if let secondVC = viewController as? SecondViewController {
                secondVC.labelText = infoFromSecondVCLabel?.text
            } else if let navigationVC = viewController as? UINavigationController {
                let thirdVC = navigationVC.topViewController as? ThirdViewController
                thirdVC?.labelText = infoFromThirdVCLabel?.text
            }
        }
    }
    
    @IBAction func saveButton(_ sender: UIButton) {
    }
    
    @IBAction func goTabBarButton() {
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        let tabBarVC = segue.source as? UITabBarController
        
        tabBarVC?.viewControllers?.forEach { viewController in
            if let firstVC = viewController as? FirstViewController {
                infoFromFirstVCLabel.text = firstVC.firstVCTF.text
            } else if let secondVC = viewController as? SecondViewController {
                maxValueTF.text = secondVC.secondVCTF.text
            } 
        }
    }
}
