//
//  ViewController.swift
//  DelegateDemo
//
//  Created by Trinh Nguyen on 2024/06/14.
//

import UIKit

class HomeController: UIViewController, LanguageChangeDelegate {
    
    
    @IBOutlet weak var headingLabel: UILabel!
    
    @IBOutlet weak var contentTextField: UITextField!
    
    let headingArray = ["Text Heading", "Titre de texte"]
    
    let contentArray = ["This is a text for testing", "Ceci est un texte pour tester"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func settingButtonTapped(_ sender: Any) {
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "Settings") as! SettingsController
        controller.modalPresentationStyle = .fullScreen
        controller.delegate = self
        present(controller, animated: true, completion: nil)
    }
    
    func changeLanguage(index: Int) {
        headingLabel.text = headingArray[index]
        contentTextField.text = contentArray[index]
    }
    
}

