//
//  ViewController.swift
//  Collections
//
//  Created by Juan Aguilar on 12/02/23.
//

import UIKit

class ViewController: UIViewController {

//    MARK: Outlets -
    @IBOutlet weak var myCollectionView: UICollectionView!
    
//    Variables
    
    let countries = ["Mexico", "Peru", "Chile", "Argentina", "Uruguay", "Brazil", "USA", "Francia"];
    
    private let cellWidth = UIScreen.main.bounds.width / 2;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myCollectionView.delegate = self // Forma de recuperar acciones
        myCollectionView.dataSource = self // Forma de recuperar datos
        
        // Registrar la celda
        
        myCollectionView.register(UINib(nibName: "CustomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "myCell")
        
    }


}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("\(indexPath.section) + \(indexPath.row) + \(countries[indexPath.row])")
    }
    
}



extension ViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2;
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return countries.count; // Numero de elementos
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as? CustomCollectionViewCell;
        
        cell!.label.text = countries[indexPath.row];
        
        
//        Para esta celda no se puede crear una celda reutilizable
        return cell!;
    }
    
    
}

// Customizar el tamanio de las celdas

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        switch(indexPath.section){
        case 0:
            // Cuadrado
            return CGSize(width: cellWidth, height: cellWidth);
        default:
            return CGSize(width: cellWidth * 2, height: cellWidth * 2);
        }
    
        
    
    }
}
