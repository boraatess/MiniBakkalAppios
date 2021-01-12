//
//  ViewController.swift
//  MiniBakkalApp
//
//  Created by bora on 8.01.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ShopCount: UILabel!
    private var dataList : DataListViewModel!
    
    var shopcount: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ShopCount.text = ""
        
        getData()
                        
    }
    
    func getData(){
        
        let url = URL(string: "https://desolate-shelf-18786.herokuapp.com/list")!
        
        Service().downloadData(url: url) { (datas) in
            if let datas = datas {
             
                self.dataList = DataListViewModel(datalist: datas)
                
            
            }
        }
        
    }
    
    @IBAction func AddCart(_ sender: Any) {
        
            shopcount = shopcount + 1
            ShopCount.text = String(shopcount)
        
    }
    
    
}

