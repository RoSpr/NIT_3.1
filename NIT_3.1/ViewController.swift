//
//  ViewController.swift
//  NIT_3.1
//
//  Created by Родион Сприкут on 25.11.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MainView: UIView!
    @IBOutlet weak var ViewTopConstraint: NSLayoutConstraint!
    
    var isOnTop = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func ChangeViewButton(_ sender: Any) {
        UIView.animate(withDuration: 1, delay: 0, options: [.allowUserInteraction, .curveLinear]) {
                self.ViewTopConstraint.constant = self.isOnTop ? 250 : 70
                self.MainView.backgroundColor = self.isOnTop ? UIColor(red: 88/255, green: 127/255, blue: 255/255, alpha: 0.9) : UIColor(red: 255/255, green: 127/255, blue: 88/255, alpha: 0.9)
                self.view.layoutIfNeeded()
        }
        isOnTop.toggle()
    }
    
}

