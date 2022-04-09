//
//  Response.swift
//  mytube
//
//  Created by Bogdan Kornievski on 09.04.2022.
//

import Foundation

struct Response: Decodable {
    var items: [Video]?
    
    enum CodingKeys: String, CodingKey{
        case items
    }
    
    init(from decoder: Decoder) throws{
        let itemContainer = try decoder.container(keyedBy: CodingKeys.self)
        
        self.items = try itemContainer.decode([Video].self, forKey: .items)
        
    }
}
