//
//  ViewController.swift
//  LukaApp
//
//  Created by CoCo on 09.11.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageLuka: UIImageView!
    @IBOutlet var label: UIView!
    @IBOutlet var button: UIButton!
    @IBOutlet var firstLabel: UILabel!
    @IBOutlet var secondLabel: UILabel!
    @IBOutlet var thirdLabel: UILabel!
    @IBOutlet var finalText: UITextView!
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageLuka.isHidden = true
        label.isHidden = true
        firstLabel.isHidden = true
        secondLabel.isHidden = true
        thirdLabel.isHidden = true
        finalText.isHidden = true
        imageLuka.layer.borderWidth = 2
        imageLuka.layer.borderColor = UIColor.black.cgColor
        imageLuka.layer.cornerRadius = 50
        imageLuka.clipsToBounds = true
        button.layer.cornerRadius = 10
        finalText.layer.borderWidth = 1
        finalText.layer.borderColor = UIColor.orange.cgColor
        
    }

    
    @IBAction func pushButton() {
        imageLuka.isHidden = false
        label.isHidden = false
        
        if counter > 0 {
            firstLabel.isHidden = false
        }
        
        if counter > 1 {
            secondLabel.isHidden = false
        }
        
        if counter > 2 {
            thirdLabel.isHidden = false
        }
        counter += 1
        
        if counter > 7 {
        label.isHidden = true
            firstLabel.isHidden = true
            secondLabel.isHidden = true
            thirdLabel.isHidden = true
            finalText.isHidden = false
        }
    }
}

