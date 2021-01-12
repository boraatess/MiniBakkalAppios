//
//  MyAppViewModel.swift
//  MiniBakkalApp
//
//  Created by bora on 10.01.2021.
//

import Foundation

struct DataListViewModel {
    
    let datalist : [MiniBakkal]
    
    func numberOfRowsInSection() -> Int {
        return self.datalist.count
    }
    
    func dataIndex(_ index: Int) -> DataViewModel {
        let getdata = self.datalist[index]
        return DataViewModel(data: getdata)
    }
}

struct DataViewModel {
    
    let data : MiniBakkal
    
    var name : String{
        return self.data.name
    }
    
    var id : String{
        return self.data.id
    }
    
    var price : Float{
        return self.data.price
    }
    
    var image : String{
        return self.data.imageUrl
    }
    
    var stock : Int{
        return self.data.stock
        
    }
    
    var currency : String{
        return self.data.currency
    }
}
