//
//  ViewController.swift
//  Buttons
//
//  Created by finebel on 21.08.20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var collectionOfButtons: Array<UIButton>?
    
    private let selectionColor = UIColor.orange
    private let nonSelectedColor = UIColor.green
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressToggle(_ sender: UIButton) {
        guard let buttons = collectionOfButtons else { return }
        
        for btn in buttons {
            if btn.tag == sender.tag {
                btn.backgroundColor = selectionColor
            } else {
                btn.backgroundColor = nonSelectedColor
            }
        }
    }
    
}

