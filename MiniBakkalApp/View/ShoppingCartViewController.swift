//
//  ShoppingCartViewController.swift
//  MiniBakkalApp
//
//  Created by bora on 8.01.2021.
//

import UIKit

class ShoppingCartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }
    
    @IBAction func CloseView(_ sender: Any) {
    
        performSegue(withIdentifier: "closeView", sender: nil)
    
    }
    
    @IBAction func DeleteShopCart(_ sender: Any) {
        
        
        
    }
    
}
