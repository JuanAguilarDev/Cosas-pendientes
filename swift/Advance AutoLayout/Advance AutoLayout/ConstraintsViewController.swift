//
//  ConstraintsViewController.swift
//  Advance AutoLayout
//
//  Created by Juan Aguilar on 18/02/23.
//

import UIKit

class ConstraintsViewController: UIViewController {

    // MARK: - Outlets
    
    // Solo modificar constraints
    
    @IBOutlet weak var widthConstraint: NSLayoutConstraint!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        widthConstraint.constant = 300;
        leadingConstraint.constant = 64;
        
    }

}
