//
//  Service.swift
//  MiniBakkalApp
//
//  Created by bora on 10.01.2021.
//

import Foundation

class Service
{
    
    func downloadData(url: URL, comletion: @escaping([MiniBakkal]?) -> ())
    {
     
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print(error.localizedDescription)
                comletion(nil)
            }
            else if let data = data
            {
               let datalist = try? JSONDecoder().decode([MiniBakkal].self, from: data)
                
                print(datalist)
                
                if let datalist = datalist {
                    comletion(datalist)
                }
            }
        }.resume()
        
    }
    
}
