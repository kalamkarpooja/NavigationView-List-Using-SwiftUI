//
//  ModelData.swift
//  landmarkDemo
//
//  Created by TeamLeaseRegtech on 20/05/24.
//

import SwiftUI
var landmark : [Landmark] = load("landmarkData.json")
func load<T:Decodable>(_ fileName:String)-> T{
    let data : Data
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil)
    else{
        fatalError("not load")
    }
    do{
        
        data = try Data(contentsOf: file)
    }catch{
        fatalError("not load")
    }
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError("not load")
    }
}
