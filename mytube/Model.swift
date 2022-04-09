//
//  Model.swift
//  mytube
//
//  Created by Bogdan Kornievski on 08.04.2022.
//

import Foundation

class Model {
    func getVideos(){
        // Create a URL object
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else {return}
        
        // get a URLSession object
        
        let session = URLSession.shared
        
        // get a data task from the URLSession object
        
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            //check if any errors
            
            if error != nil || data == nil {
                return
            } else {
                
            }
        }
        
        // Kick off the task
        dataTask.resume()
    }
}
