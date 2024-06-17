//
//  SettingsController.swift
//  DelegateDemo
//
//  Created by Trinh Nguyen on 2024/06/14.
//

import Foundation

import UIKit

class SettingsController: UIViewController {
    
    var delegate: LanguageChangeDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func englishButtonTapped(_ sender: Any) {
        if let delegate = delegate {
            delegate.changeLanguage(index: 0)
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func frenchButtonTapped(_ sender: Any) {
        if let delegate = delegate {
            delegate.changeLanguage(index: 1)
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    
}

protocol LanguageChangeDelegate {
    func changeLanguage(index: Int)

}
