//
//  MainViewController.swift
//  HW2.6
//
//  Created by lastbyte on 16.03.2020.
//  Copyright © 2020 lastbyte. All rights reserved.
//

import UIKit

final class MainViewController: UIViewController {

    // MARK: - Private Properties
    
    private let settingColorSegue = "SettingColor"
    
    
    // MARK: - viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == settingColorSegue {
            let settingController = segue.destination as! SettingColorViewController
            settingController.delegate = self
            settingController.selectedColor = view.backgroundColor ?? .white
        }
    }
    
    // MARK: - Private Methods
    
    private func setupUI() {
        
        view.backgroundColor = UIColor(
            red: CGFloat.random(in: 0.0..<1.0),
            green: CGFloat.random(in: 0.0..<1.0),
            blue: CGFloat.random(in: 0.0..<1.0),
            alpha: 1
        )
    }

}

// MARK: - Setting Color Delegate

extension MainViewController: SettingColorDelegate {
    
    func setColor(_ color: UIColor) {
        
        view.backgroundColor = color
        
    }
    
}
