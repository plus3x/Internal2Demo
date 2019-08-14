//
//  ViewController.swift
//  Internal2Demo
//
//  Created by Vladislav Petrov on 13/08/2019.
//  Copyright © 2019 Vladislav Petrov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var widthConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var background: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

//        widthConstraint.constant = 2/9
//        view.setNeedsLayout()
//        view.layoutIfNeeded()
        
        var f = background.frame
        f.size.width = 50
        background.frame = f
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
//        var f = background.frame
//        f.size.width = 50
//        background.frame = f
//        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: {
//            self.view.setNeedsLayout()
//        })
        background.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        view.setNeedsLayout()
    }
    
    @IBAction func buttonTap(_ sender: Any) {
//        widthConstraint.isActive = !widthConstraint.isActive
    }
    
}

