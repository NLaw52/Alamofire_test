//
//  ContentViewModel.swift
//  Alamofire_test
//
//  Created by Nathaniel Law on 10/23/23.
//

import Foundation
import Alamofire

class ContentViewModel: ObservableObject {
    @Published var categories = [Category]()
    
    func loadApiData() {
        AF.request("www.themealdb.com/api/json/v1/1/categories.php").responseDecodable(of: [Category].self) { response in
            switch response.result {
            case .success(let categoryData):
//                print(productData)
                self.categories = categoryData
                
            case .failure(let productFetchError):
                print(productFetchError.localizedDescription)
            }
        }
    }
}
