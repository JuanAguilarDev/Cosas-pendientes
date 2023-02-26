//
//  CustomCollectionViewCell.swift
//  Collections
//
//  Created by Juan Aguilar on 12/02/23.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {

//    MARK: Outlets -
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() { // Primera operacion que configura la celda
        super.awakeFromNib()
        
        backgroundColor = .lightGray;
        label.font = UIFont.boldSystemFont(ofSize: 20);
        
    }

}
