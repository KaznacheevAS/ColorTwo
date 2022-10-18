//
//  BackgraundViewController.swift
//  test
//
//  Created by Anton Kaznacheev on 16.10.2022.
//

import UIKit


class BackgraundViewController: UIViewController {

    var delegat: SettingsViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(
            red: 122/255,
            green: 122/255,
            blue: 122/255,
            alpha: 1)
    }
}

// MARK: Extension
extension BackgraundViewController: SettingsViewControllerDelegate {
    
    func setNewValue(_ color: UIColor) {
        view.backgroundColor = color
    }

}
