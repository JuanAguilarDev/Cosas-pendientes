//
//  MyTableViewCell.swift
//  Tablas y colecciones
//
//  Created by Juan Aguilar on 11/02/23.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    // MARK: Outlets
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        firstLabel.font = UIFont.boldSystemFont(ofSize: 22); // Title
        firstLabel.textColor = .blue;
        
        secondLabel.numberOfLines = 0; // 0 para lineas infinitas
        
        backgroundColor = .gray;
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        print(firstLabel.text ?? "Nulo");
    }
    
}
