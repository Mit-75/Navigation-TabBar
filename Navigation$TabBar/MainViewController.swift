//
//  MainViewController.swift
//  Navigation$TabBar
//
//  Created by Dmitry Parhomenko on 11.03.2024.
//

import UIKit

final class MainViewController: UIViewController {
    
    @IBOutlet var minNumberLabel: UILabel!
    @IBOutlet var maxNumberLabel: UILabel!
    @IBOutlet var resulLabel: UILabel!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let settingsVC = segue.destination as? SettingsViewController
        settingsVC?.minNumber = minNumberLabel.text
        settingsVC?.maxNumber = maxNumberLabel.text
    }
    
    @IBAction func getResultButton() {
        let minNumber = Int(minNumberLabel.text ?? "") ?? 0
        let maxNumber = Int(maxNumberLabel.text ?? "") ?? 100
        
        resulLabel.text = Int.random(in: minNumber...maxNumber).formatted()
    }
    
    @IBAction func BarButton() {
        dismiss(animated: true)
    }
    
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        if let settingsVC = segue.source as? SettingsViewController {
            minNumberLabel.text = settingsVC.minValueTF.text
            maxNumberLabel.text = settingsVC.maxValueTF.text
        }
    }
}
