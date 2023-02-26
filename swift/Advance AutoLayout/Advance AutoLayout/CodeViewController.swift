//
//  CodeViewController.swift
//  Advance AutoLayout
//
//  Created by Juan Aguilar on 18/02/23.
//

import UIKit

class CodeViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var customView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Constraints de tamanio
        
        customView.heightAnchor.constraint(equalToConstant: 200).isActive = true;
        customView.widthAnchor.constraint(equalToConstant: 200).isActive = true;
        
        // Constraints de posicion
        
        customView.translatesAutoresizingMaskIntoConstraints = false; // Desactivamos los constraints automaticos
        
        view.addConstraint(NSLayoutConstraint(item: customView!, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 100, constant: 16));
      
        customView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true;
    }

}
