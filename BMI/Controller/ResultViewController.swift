//
//  ResultViewController.swift
//  BMI
//
//  Created by Тимур on 06.08.2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    var itmValue: String?
    var advice: String?
    var color: UIColor?

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = itmValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
