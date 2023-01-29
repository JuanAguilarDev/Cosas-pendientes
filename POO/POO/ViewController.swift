//
//  ViewController.swift
//  POO
//
//  Created by Juan Aguilar on 03/07/22.
//

import UIKit

class ViewController: UIViewController {

//    Outlets
    @IBOutlet weak var labelTittle: UILabel!
    @IBOutlet weak var textView: UITextView!
    
//    Objeto de tipo MazdaSerch sin valor inicial
    var mazdaSerch:MazdaSerchMini?
    var flag:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        labelTittle.text = "Fábrica de Automóviles"
    }

//    Actions
    @IBAction func createObject(_ sender: UIButton) {
        //    Instanciacion del objeto
        mazdaSerch = MazdaSerchMini()
        flag = true
        textView.text = "El carro Mazda de serch ha sido creado. "
    }
    
    @IBAction func showProperties(_ sender: UIButton) {
        if(flag){
            textView.text = "El carro Mazda de serch es del tipo \(mazdaSerch!.type!), tiene \(mazdaSerch!.doorsNumber!) puertas, su color es: \(mazdaSerch!.color!) y su precio ronda los \(mazdaSerch!.price!)"
        }else{
            textView.text = "El carro aun no ha sido creado. "
        }
    }
    
    
    @IBAction func switchOn(_ sender: UIButton) {
        if(flag){
            textView.text = mazdaSerch!.switchOn()
        }else{
            textView.text = "El carro aun no ha sido creado. "
        }
    }
    
    @IBAction func speedUp(_ sender: UIButton) {
        if(flag){
            textView.text = mazdaSerch!.speedUp()
        }else{
            textView.text = "El carro aun no ha sido creado. "
        }
    }
    
}

